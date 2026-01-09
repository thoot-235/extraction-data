{
  "properties" : { },
  "id" : "6346b8fd758a4764a7dc25c9b9e800aa",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "应急通信平台",
  "createTime" : null,
  "updateTime" : 1734404542309,
  "lock" : null,
  "createBy" : null,
  "updateBy" : "admin",
  "path" : "/getEmtelSystem",
  "method" : "GET",
  "parameters" : [ {
    "name" : "stationName",
    "value" : "重庆",
    "description" : "基站名称",
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"stationName\": \"重庆\",\n        \"lon\": \"106.610200\",\n        \"lat\": \"29.536500\"\n    }]\n}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : {
    "name" : "",
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "Object",
    "type" : null,
    "defaultValue" : null,
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ {
      "name" : "code",
      "value" : "200",
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
      "name" : "resultMsg",
      "value" : "查询成功",
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
      "dataType" : "Array",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Object",
        "type" : null,
        "defaultValue" : null,
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ {
          "name" : "stationName",
          "value" : "重庆",
          "description" : "基站名称",
          "required" : false,
          "dataType" : "String",
          "type" : null,
          "defaultValue" : null,
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "lon",
          "value" : "106.610200",
          "description" : "经度",
          "required" : false,
          "dataType" : "String",
          "type" : null,
          "defaultValue" : null,
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "lat",
          "value" : "29.536500",
          "description" : "纬度",
          "required" : false,
          "dataType" : "String",
          "type" : null,
          "defaultValue" : null,
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
import response;

var sql="""
select station_name,
       to_char(round(lon, 6), 'FM999999990.000000') as lon,
       to_char(round(lat, 6), 'FM999999990.000000') as lat
  from emtel_system t where 1=1 
?{stationName,and t.station_name like  '%'||#{stationName}||'%'}
"""
var list=db.hs_share.camel().select(sql);
if (list == null) {
    list = [];
}
return response.json({
    code: 200,
    resultMsg: "查询成功",
    data: list
});