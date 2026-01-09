{
  "properties" : { },
  "id" : "a0c1c0d813b04cf4895df046de7f796a",
  "script" : null,
  "groupId" : "6865d1fb6d054e5390cbaf94d4774049",
  "name" : "旅客年龄分布",
  "createTime" : null,
  "updateTime" : 1705409968906,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getPassengerAge",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"age\": [{\n            \"num\": 26,\n            \"item\": \"0-15岁\"\n        }, {\n            \"num\": 247,\n            \"item\": \"60岁以上\"\n        }, {\n            \"num\": 283,\n            \"item\": \"30-60岁\"\n        }, {\n            \"num\": 56,\n            \"item\": \"15-30岁\"\n        }],\n        \"total\": 612,\n        \"ageLastYear\": [{\n            \"num\": 50285,\n            \"item\": \"0-15岁\"\n        }, {\n            \"num\": 235269,\n            \"item\": \"60岁以上\"\n        }, {\n            \"num\": 214228,\n            \"item\": \"30-60岁\"\n        }, {\n            \"num\": 22548,\n            \"item\": \"15-30岁\"\n        }],\n        \"totalLastYear\": 522330\n    }\n}",
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
      "dataType" : "Array",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "age",
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
            "name" : "num",
            "value" : "26",
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
            "name" : "item",
            "value" : "0-15岁",
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
      }, {
        "name" : "total",
        "value" : "612",
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
        "name" : "ageLastYear",
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
            "name" : "num",
            "value" : "50285",
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
            "name" : "item",
            "value" : "0-15岁",
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
      }, {
        "name" : "totalLastYear",
        "value" : "522330",
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
import log;
import response;


var ageSql = """
select num,item from dm_data.dm_port_passenger where type='1'   
order by  item

"""
var totalSql = """
select sum(num) num from dm_data.dm_port_passenger where type='1'   

"""


var ageLastYearSql = """
select num,item from dm_data.dm_port_passenger where type='3'   
order by  item

"""
var totalLastYearSql = """
select sum(num) num from dm_data.dm_port_passenger where type='3'   

"""

var age = async db.dm_data.camel().select(ageSql);
var total = async db.dm_data.camel().selectInt(totalSql);

var ageLastYear = async db.dm_data.camel().select(ageLastYearSql);
var totalLastYear = async db.dm_data.camel().selectInt(totalLastYearSql);

for(item in age.get()){
        item.put("num",item.get("num")::int);
}

for(item in ageLastYear.get()){
        item.put("num",item.get("num")::int);
}

var res = {};
res.put("age",age.get());
res.put("total",total.get());
res.put("ageLastYear",ageLastYear.get());
res.put("totalLastYear",totalLastYear.get());


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
});