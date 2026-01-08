{
  "properties" : { },
  "id" : "f31117ab9db54b7baa61c046b997901a",
  "script" : null,
  "groupId" : "f8cb5b13739f455397cc22a7ae910702",
  "name" : "事故信息统计",
  "createTime" : null,
  "updateTime" : 1732671315316,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getAccident",
  "method" : "GET",
  "parameters" : [ {
    "name" : "code",
    "value" : "1",
    "description" : "1：近五年   2：事故分级",
    "required" : true,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": {},\n    \"timestamp\": 1732671290550,\n    \"executeTime\": 53\n}",
  "description" : "",
  "requestBodyDefinition" : {
    "name" : "",
    "value" : { },
    "description" : "",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  },
  "responseBodyDefinition" : {
    "name" : "",
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "Object",
    "type" : null,
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ {
      "name" : "code",
      "value" : "1",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "message",
      "value" : "success",
      "description" : "",
      "required" : false,
      "dataType" : "String",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "data",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Object",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "timestamp",
      "value" : "1732671290550",
      "description" : "",
      "required" : false,
      "dataType" : "Long",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "executeTime",
      "value" : "53",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;
/**
//近五年事故数
var accidentNumsSql_back = """
  select to_char(trunc(acci_time,'YYYY'),'yyyy') years, count(1) nums
    from sub_biz_data.acci_basic_data
    where acci_loc_type_sub in ('21', '22')
    and delete_flag = '0'
    and acci_time >= add_months(trunc(sysdate,'YYYY'), -48)
    group by trunc(acci_time, 'YYYY')
    order by years
""" */

//近五年事故数
var accidentNumsSql = """
  select n.years,nvl(m.nums,0)  as nums from 
(select  to_char(sysdate,'yyyy')-level+1 as years  from dual
connect by level<=10)n
left join(
 select to_char(trunc(EVENT_TIME,'YYYY'),'yyyy') years, count(1) nums
    from ODS_HS_SHARE.TR_JT_EMG_EVENT_MAIN
     where  MESSAGE_TYPE='事故信息'  
     and REACH in ('上游','中游','下游') 
    and EVENT_TIME >= add_months(trunc(sysdate,'YYYY'), -108)
    group by trunc(EVENT_TIME, 'YYYY')
    order by years) m
    on m.years=n.years
    order  by n.years
"""


/**
//事故分级统计
var levelSql = """
    select a.item_name_cn as acci_level,
            case when b.nums is null then 0
            else b.nums end nums
        from dict_data.D_AQ_ACCIDENT_GRADE a
        left join (select acci_grade_name, count(1) nums
                    from sub_biz_data.acci_basic_data
                    where acci_loc_type_sub in ('21','22')
                    and delete_flag = '0'
                    and acci_time >= trunc(sysdate,'YYYY')
                    group by acci_grade_name
                    order by acci_grade_name) b
        on a.item_name_cn = b.acci_grade_name
        order by a.code
""" */

if(code == 1){
 
    var accidentNums = db.sub_base_data.camel().select(accidentNumsSql);
    for(item in accidentNums){
        item.put("nums",item.get("nums")::int);
        }
   
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: accidentNums
    });
}/**else if (code == 2) {
    var level = db.sub_base_data.camel().select(levelSql);
        for(item in level){
                item.put("nums",item.get("nums")::int);
        }
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: level
    });
}else {
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: null
    });
}*/




