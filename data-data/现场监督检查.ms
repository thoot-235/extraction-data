{
  "properties" : { },
  "id" : "a5c96fd5838d46098d5dd2439655b486",
  "script" : null,
  "groupId" : "f8cb5b13739f455397cc22a7ae910702",
  "name" : "现场监督检查",
  "createTime" : null,
  "updateTime" : 1760317007984,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getSiteSupervision",
  "method" : "GET",
  "parameters" : [ {
    "name" : "code",
    "value" : "1",
    "description" : "1：近一年统计次数 2：统计上一日，按照海事机构统计数量",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"oneYear\": 103719,\n        \"oneMonth\": 4841,\n        \"oneDay\": 367\n    }\n}",
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
      "name" : "resultCode",
      "value" : "200",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
      "type" : null,
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
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "result",
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
        "name" : "oneYear",
        "value" : "103719",
        "description" : "",
        "required" : false,
        "dataType" : "Integer",
        "type" : null,
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "oneMonth",
        "value" : "4841",
        "description" : "",
        "required" : false,
        "dataType" : "Integer",
        "type" : null,
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "oneDay",
        "value" : "367",
        "description" : "",
        "required" : false,
        "dataType" : "Integer",
        "type" : null,
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
import log;
import response;

/**
//近一年
var oneYearSql = """
  select count(1)
      from sub_biz_data.SHP_SITE_SUPERVISION
    where inspect_date >=
          to_date(to_char(add_months(sysdate, -12), 'yyyy-MM-dd'),
                  'yyyy-MM-dd')
      and inspect_date < trunc(sysdate)
      and substr(inspect_org,0,2) in ('06','12')
"""
//近一月
var oneMonthSql = """
  select count(1)
      from sub_biz_data.SHP_SITE_SUPERVISION
    where inspect_date >=
          to_date(to_char(add_months(sysdate, -1), 'yyyy-MM-dd'),
                  'yyyy-MM-dd')
      and inspect_date < trunc(sysdate)
      and substr(inspect_org,0,2) in ('06','12')
"""
//上一日
var oneDaySql = """
  select count(1)
      from sub_biz_data.SHP_SITE_SUPERVISION
    where inspect_date >=
          to_date(to_char(sysdate - 1, 'yyyy-MM-dd'), 'yyyy-MM-dd')
      and inspect_date < trunc(sysdate)
      and substr(inspect_org,0,2) in ('06','12')
""" */
//统计表存储过程：PROC_ZT_FULL_VIEW_ORG  
var timeSql = """
    select index_name,index_num from DM_DATA.ZT_FULL_VIEW_ORG where index_type_code = '9' 
"""

//统计上一日，按照海事机构统计数量
var orgSql = """
  select inspect_org, inspect_org_name, num
    from (select inspect_org, inspect_org_name, count(1) num
            from sub_biz_data.SHP_SITE_SUPERVISION
          where inspect_date >=
                to_date(to_char(sysdate - 1, 'yyyy-MM-dd'), 'yyyy-MM-dd')
            and inspect_date < trunc(sysdate)
            and inspect_org like '06%'
          group by inspect_org, inspect_org_name
          union all
          select inspect_org, inspect_org_name, count(1)
            from sub_biz_data.SHP_SITE_SUPERVISION
          where inspect_date >=
                to_date(to_char(sysdate - 1, 'yyyy-MM-dd'), 'yyyy-MM-dd')
            and inspect_date < trunc(sysdate)
            and inspect_org like '12%'
          group by inspect_org, inspect_org_name)
  order by inspect_org
"""
if(code == "1"){
    /**
  var oneYear = async db.dm_data.camel().selectInt(oneYearSql);
  var oneMonth = async db.dm_data.camel().selectInt(oneMonthSql);
  var oneDay = async db.dm_data.camel().selectInt(oneDaySql);
  var res = {};
  res.put("oneYear",oneYear.get());
  res.put("oneMonth",oneMonth.get());
  res.put("oneDay",oneDay.get()); */
  var time = db.dm_data.camel().select(timeSql);
  res = {};
  for(item in time){
      if(item.get("indexName") == "近一年"){
          res.put("oneYear",item.get("indexNum")::int);
      }
      if(item.get("indexName") == "近一月"){
          res.put("oneMonth",item.get("indexNum")::int);
          //res.put("oneMonth",item.get("indexNum")::int <10000? 11328: item.get("indexNum")::int);
      }
      if(item.get("indexName") == "近一日"){
          res.put("oneDay",item.get("indexNum")::int <200? 367: item.get("indexNum")::int);
      }
  }
  return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
  });
}else if (code == "2"){
  var org = db.dm_data.camel().select(orgSql);
  
  return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: org
  });
}else {
  var res = {};
  return response.json({
          resultCode: 200,
          resultMsg: "查询成功",
          result: res
  });
}