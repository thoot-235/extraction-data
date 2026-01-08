{
  "properties" : { },
  "id" : "61b8d60a3da943c78680e39b3f04ebd8",
  "script" : null,
  "groupId" : "6865d1fb6d054e5390cbaf94d4774049",
  "name" : "旅客地域分布",
  "createTime" : null,
  "updateTime" : 1705885624561,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getPassengerByProvince",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"sinceYear\": [{\n            \"item\": \"山东\",\n            \"num\": 0.01\n        }, {\n            \"item\": \"上海\",\n            \"num\": 0.01\n        }, {\n            \"item\": \"四川\",\n            \"num\": 0.01\n        }, {\n            \"item\": \"陕西\",\n            \"num\": 0.01\n        }, {\n            \"item\": \"北京\",\n            \"num\": 0.01\n        }, {\n            \"item\": \"广东\",\n            \"num\": 0.01\n        }, {\n            \"item\": \"新疆\",\n            \"num\": 0.01\n        }, {\n            \"item\": \"辽宁\",\n            \"num\": 0.01\n        }, {\n            \"item\": \"河北\",\n            \"num\": 0.02\n        }, {\n            \"item\": \"江苏\",\n            \"num\": 0.01\n        }],\n        \"lastYear\": []\n    }\n}",
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
    "dataType" : "String",
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
        "name" : "sinceYear",
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
            "name" : "item",
            "value" : "山东",
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
            "name" : "num",
            "value" : "0.01",
            "description" : "",
            "required" : false,
            "dataType" : "Double",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          } ]
        } ]
      }, {
        "name" : "lastYear",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
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


var sql = """
select case when item = '宁夏回族自治区' then '宁夏'
                when item = '香港特别行政区' then '香港'
                when item = '西藏自治区' then '西藏'
                when item = '内蒙古自治区' then '内蒙古'
                when item = '新疆维吾尔自治区' then '新疆'
                when item = '广西壮族自治区' then '广西'
                when item = '澳门特别行政区' then '澳门'
                else item end item,
                num
from (
select REGEXP_REPLACE(item,'[省市]','') as item, round(num/10000,2) num from dm_data.dm_port_passenger where type='2') where num>0

"""

var sqlLastYear = """
select case when item = '宁夏回族自治区' then '宁夏'
                when item = '香港特别行政区' then '香港'
                when item = '西藏自治区' then '西藏'
                when item = '内蒙古自治区' then '内蒙古'
                when item = '新疆维吾尔自治区' then '新疆'
                when item = '广西壮族自治区' then '广西'
                when item = '澳门特别行政区' then '澳门'
                else item end item,
                num
from (
select REGEXP_REPLACE(item,'[省市]','') as item, round(num/10000,2) num from dm_data.dm_port_passenger where type='4') where num>0

"""


var shipNums =  db.ods_data.camel().select(sql);
for(item in shipNums){
item.put("num",item.get("num")::double);
}


var shipLastYearNums =  db.ods_data.camel().select(sqlLastYear);
for(item in shipLastYearNums){
item.put("num",item.get("num")::double);
}

var res={};
res.put("sinceYear",shipNums);
res.put("lastYear",shipLastYearNums)

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
});