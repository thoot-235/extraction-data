{
  "properties" : { },
  "id" : "c616a9e8682c4512bd6d2042a44fa953",
  "script" : null,
  "groupId" : "71c52af0421741f3baab0e40a108f071",
  "name" : "查询信用数据列表",
  "createTime" : null,
  "updateTime" : 1693305711233,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getCreditDataPage",
  "method" : "GET",
  "parameters" : [ {
    "name" : "page",
    "value" : "1",
    "description" : "",
    "required" : true,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "size",
    "value" : "100",
    "description" : "",
    "required" : true,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "shipName",
    "value" : "",
    "description" : "",
    "required" : false,
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"list\": [{\n            \"rowno\": \"1\",\n            \"totalCount\": \"2\",\n            \"pubAging\": \"2025-01-14 02:18:09\",\n            \"pubTime\": \"2022-01-13\",\n            \"actDetail\": \"存在被纳入交通运输安全生产“黑名单”以及部海事局公布的重点跟踪航运公司、重点跟踪船舶\",\n            \"decisionUnit\": \"060240\",\n            \"brekDegree\": \"严重失信\",\n            \"punishTime\": \"2021-12-07 08:00:00\",\n            \"punishment\": \"1\",\n            \"point\": \"\",\n            \"foundPerson\": \"许沁暐\",\n            \"happenTime\": \"2021-11-29 08:00:00\",\n            \"happenAddr\": \"江苏省兴化市水乡大桥东37号\",\n            \"happenWater\": \"\",\n            \"accDesc\": \"2021年11月29日1030时许，梅山海事处执法人员现场检查发现，“兴中油998”轮在新生洲头黑浮水域越界锚泊，未按照规定锚泊，以上事实有现场照片，现场笔录，船舶国籍证书复印件等证据予以证明，该行为违反了《中华人民共和国内河交通安全管理条例》第二十四条第一款、《长江干线水上交通安全管理特别规定》第二十五条之规定。\",\n            \"actShip\": \"兴中油998\",\n            \"comName\": \"兴化市兴中油运有限公司\",\n            \"comCreditCode\": \"91321281755859630B\",\n            \"comCode\": \"755859630\",\n            \"comType\": \"有限责任公司\",\n            \"lawPerson\": \"韦春尧\",\n            \"businessScope\": \"长江中下游干线及支流省际成品油船运输\",\n            \"phoneNum\": \"18051153826\",\n            \"comAddress\": \"兴化市水乡大桥东37号\",\n            \"decisionUnit2\": \"060240\"\n        }, {\n            \"rowno\": \"2\",\n            \"totalCount\": \"2\",\n            \"pubAging\": \"2025-01-14 02:18:09\",\n            \"pubTime\": \"2022-01-13\",\n            \"actDetail\": \"存在被纳入交通运输安全生产“黑名单”以及部海事局公布的重点跟踪航运公司、重点跟踪船舶\",\n            \"decisionUnit\": \"060240\",\n            \"brekDegree\": \"严重失信\",\n            \"punishTime\": \"2021-12-28 08:00:00\",\n            \"punishment\": \"1\",\n            \"point\": \"\",\n            \"foundPerson\": \"张红亮\",\n            \"happenTime\": \"2021-12-27 08:00:00\",\n            \"happenAddr\": \"南京市鼓楼区热河南路31号\",\n            \"happenWater\": \"\",\n            \"accDesc\": \"2021年12月27日1127时许，南京海事局交管中心发现“顺海6号”在通过南京长江大胜关三桥桥区下行过程中个，涉嫌违规追越他船，以上事实有现场照片，询问笔录，船舶国籍证书复印件等证据予以证明，该行为违反了《中华人民共和国内河交通安全管理条例》第十七条第四款、《中华人民共和国内河避碰规则》第八条和《长江江苏段船舶定线制规定》（2021）第十七条及附件6规定之规定。\",\n            \"actShip\": \"顺海6号\",\n            \"comName\": \"江苏顺海船务有限公司\",\n            \"comCreditCode\": \"9132101279105096XT\",\n            \"comCode\": \"79105096X\",\n            \"comType\": \"有限责任公司\",\n            \"lawPerson\": \"胡安祥\",\n            \"businessScope\": \"长江上中下游干线及支流省际成品油船、长江上中下游干线及支流省际散装化学品船运输\",\n            \"phoneNum\": \"13852592323\",\n            \"comAddress\": \"扬州市江都区大桥镇企管站（通泰路10号）\",\n            \"decisionUnit2\": \"060240\"\n        }],\n        \"total\": 2\n    }\n}",
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
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ {
      "name" : "resultCode",
      "value" : "200",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "resultMsg",
      "value" : "查询成功",
      "description" : "",
      "required" : false,
      "dataType" : "String",
      "type" : "",
      "defaultValue" : "",
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
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "list",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : "",
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ {
          "name" : "",
          "value" : "",
          "description" : "",
          "required" : false,
          "dataType" : "Object",
          "type" : "",
          "defaultValue" : "",
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ {
            "name" : "rowno",
            "value" : "1",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "totalCount",
            "value" : "2",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "pubAging",
            "value" : "2025-01-14 02:18:09",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "pubTime",
            "value" : "2022-01-13",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "actDetail",
            "value" : "存在被纳入交通运输安全生产“黑名单”以及部海事局公布的重点跟踪航运公司、重点跟踪船舶",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "decisionUnit",
            "value" : "060240",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "brekDegree",
            "value" : "严重失信",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "punishTime",
            "value" : "2021-12-07 08:00:00",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "punishment",
            "value" : "1",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "point",
            "value" : "",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "foundPerson",
            "value" : "许沁暐",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "happenTime",
            "value" : "2021-11-29 08:00:00",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "happenAddr",
            "value" : "江苏省兴化市水乡大桥东37号",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "happenWater",
            "value" : "",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "accDesc",
            "value" : "2021年11月29日1030时许，梅山海事处执法人员现场检查发现，“兴中油998”轮在新生洲头黑浮水域越界锚泊，未按照规定锚泊，以上事实有现场照片，现场笔录，船舶国籍证书复印件等证据予以证明，该行为违反了《中华人民共和国内河交通安全管理条例》第二十四条第一款、《长江干线水上交通安全管理特别规定》第二十五条之规定。",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "actShip",
            "value" : "兴中油998",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "comName",
            "value" : "兴化市兴中油运有限公司",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "comCreditCode",
            "value" : "91321281755859630B",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "comCode",
            "value" : "755859630",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "comType",
            "value" : "有限责任公司",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "lawPerson",
            "value" : "韦春尧",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "businessScope",
            "value" : "长江中下游干线及支流省际成品油船运输",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "phoneNum",
            "value" : "18051153826",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "comAddress",
            "value" : "兴化市水乡大桥东37号",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "decisionUnit2",
            "value" : "060240",
            "description" : "",
            "required" : false,
            "dataType" : "Boolean",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          } ]
        } ]
      }, {
        "name" : "total",
        "value" : "2",
        "description" : "",
        "required" : false,
        "dataType" : "Integer",
        "type" : "",
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      } ]
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;

var cbSql;

cbSql = """
select rowno, total_count, PUB_AGING,PUB_time,    act_detail,decision_unit,brek_degree,punish_time,punishment,point,
found_person,happen_time,happen_addr,happen_water,acc_desc,act_ship,
com_name,com_credit_code,com_code,com_type,law_person,business_scope,phone_num,com_address
    from (select rownum rowno, total_count, PUB_AGING,PUB_time,  act_detail,decision_unit,brek_degree,punish_time,punishment,point,
found_person,happen_time,happen_addr,happen_water,acc_desc,act_ship,
com_name,com_credit_code,com_code,com_type,law_person,business_scope,phone_num,com_address
          from (
             
select  count(a.record_ID) over() total_count,a.PUB_AGING,a.PUB_time, a.act_detail,a.decision_unit,(case when a.brek_degree=1 then '一般失信'
when a.brek_degree='2' then '严重失信' else '' end) brek_degree,a.punish_time,a.punishment,a.point,
b.found_person,b.happen_time,b.happen_addr,b.happen_water,b.acc_desc,b.act_ship,
c.com_name,c.com_credit_code,c.com_code,c.com_type,c.law_person,c.business_scope,c.phone_num,c.com_address
from GATHER_RTLN_ACT_CREDIT_OBJ a left join GATHER_ILLEGAL_ACT_INFO b
on a.GACT_ID=b.record_id
left join BAS_COMPANY_INFO c on c.record_id=a.OBJ_ID
where a.ACT_TYPE=1  and a.pub_status=1
and b.record_id is not null
 ?{shipName,and trim(b.act_ship) = #{shipName}}
                
   ) b
              where rownum <= (#{page}*#{size})) a
              where a.rowno >((#{page}-1)* #{size})   
""";

import response
var list=db.biz_data.camel().select(cbSql);
        var totalCount=0;
        for(item in list){
             
           item.put("decisionUnit2",TagUtils.getTagNameByCode("issuOrgTag",item.get("decisionUnit").equals("")?
                  TagUtils.getTagNameByCode("issuOrgTag",item.get("decisionUnit")):TagUtils.getTagNameByCode("mhOrgan",item.get("decisionUnit")) )) 
            totalCount = item.get("totalCount");
        }     
        var back={
                "list":list,
                "total":Integer.parseInt(totalCount::string) 
                
        }
        return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            data: back
            
      });
 




