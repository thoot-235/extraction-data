{
  "properties" : { },
  "id" : "b79ee6699c664891a9329134b20e6701",
  "script" : null,
  "groupId" : "32fd6df1028049b98e9c7064eb84bfa1",
  "name" : "运输企业年度总运量分布统计",
  "createTime" : null,
  "updateTime" : 1736156747887,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getTrunCompanyTotalByYear",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"data\": [],\n        \"tjTime\": \"\"\n    }\n}",
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
      "dataType" : "String",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "data",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : null,
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "tjTime",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "String",
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

var sql=""" 
select module_code,
        aggr,
       quota_name quota_name,
       quota_code
  from dm_data.ADS_SHIP_AGGR
 where module_name = '运输企业年度总运量' 
 AND TJ_YY=to_char(sysdate,'yyyy')-1
 """
 //统计时间
var tjTimeSql = """
   select to_char(sysdate, 'yyyy') - 1 as tj_time
        from dm_data.ADS_SHIP_AGGR
        where module_name = '运输企业年度总运量'
        AND TJ_YY = to_char(sysdate, 'yyyy') - 1
        and rownum =1
"""
var list= async db.dm_data.camel().select(sql);
var tjTime = async db.dm_data.camel().selectInt(tjTimeSql);
for(item in list.get()){
item.put("aggr",item.get("aggr")::double);
item.put("quotaName",item.get("quotaName")::double);
item.put("quotaCode",item.get("quotaCode")::double);
}
var data = {};
data.put("data",list.get());
data.put("tjTime", tjTime.get());
return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: data
});
