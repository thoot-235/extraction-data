{
  "properties" : { },
  "id" : "9033d22a4db445bda399daa7dceefe84",
  "script" : null,
  "groupId" : "c32f4ba9bcd0426d8f54812d666acb18",
  "name" : "自年初累计三峡船舶类型数量统计",
  "createTime" : null,
  "updateTime" : 1755155470477,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getSxShiptypeNums",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"targetName\": \"干散货船\",\n        \"targetVal\": 53000\n    }, {\n        \"targetName\": \"集装箱船\",\n        \"targetVal\": 12845\n    }, {\n        \"targetName\": \"液货船\",\n        \"targetVal\": 9714\n    }, {\n        \"targetName\": \"客船类\",\n        \"targetVal\": 3532\n    }, {\n        \"targetName\": \"其它普货船\",\n        \"targetVal\": 2043\n    }]\n}",
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
      "name" : "result",
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
          "name" : "targetName",
          "value" : "干散货船",
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
          "name" : "targetVal",
          "value" : "53000",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : "",
          "defaultValue" : "",
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        } ]
      } ]
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;
//存储过程 PROC_STS_SHIP_REPORT_LINE
//过闸艘次统计
var shipNumsSql = """
    select target_name, target_val
        from DM_DATA.STS_BASIC_INFO 
        where sts_code = '97'
"""
//过闸艘数统计
var shipNumSql = """
    select target_name, target_val
        from DM_DATA.STS_BASIC_INFO 
        where sts_code = '99'
"""
var shipNums = async db.dm_data.camel().select(shipNumsSql);
var shipNum = async db.dm_data.camel().select(shipNumSql);
for(item in shipNums.get()){
    item.put("targetVal",item.get("targetVal")::int)
}
for(item in shipNum.get()){
    item.put("targetVal",item.get("targetVal")::int)
}
var data = {};
data.put("shipNums",shipNums.get());
data.put("shipNum",shipNum.get());
return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: data
});