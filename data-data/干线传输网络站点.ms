{
  "properties" : { },
  "id" : "bfe132c3e2da4ff7a85c5d1184105d12",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "干线传输网络站点",
  "createTime" : null,
  "updateTime" : 1739148427404,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getYangtzeTrunkNetwork",
  "method" : "GET",
  "parameters" : [ {
    "name" : "stationName",
    "value" : { },
    "description" : "基站名称",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "region",
    "value" : "重庆",
    "description" : "所属区域",
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
  "responseBody" : "{\n    \"code\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"stationName\": \"合江\",\n        \"region\": \"重庆\",\n        \"lon\": \"105.840358\",\n        \"lat\": \"28.819781\"\n    }, {\n        \"stationName\": \"江津\",\n        \"region\": \"重庆\",\n        \"lon\": \"106.450000\",\n        \"lat\": \"29.416667\"\n    }, {\n        \"stationName\": \"重庆\",\n        \"region\": \"重庆\",\n        \"lon\": \"106.610200\",\n        \"lat\": \"29.536500\"\n    }, {\n        \"stationName\": \"长寿\",\n        \"region\": \"重庆\",\n        \"lon\": \"107.050000\",\n        \"lat\": \"29.816667\"\n    }, {\n        \"stationName\": \"涪陵\",\n        \"region\": \"重庆\",\n        \"lon\": \"107.380100\",\n        \"lat\": \"29.713800\"\n    }, {\n        \"stationName\": \"丰都\",\n        \"region\": \"重庆\",\n        \"lon\": \"107.732100\",\n        \"lat\": \"29.875100\"\n    }, {\n        \"stationName\": \"忠县\",\n        \"region\": \"重庆\",\n        \"lon\": \"108.018400\",\n        \"lat\": \"30.268200\"\n    }, {\n        \"stationName\": \"万州\",\n        \"region\": \"重庆\",\n        \"lon\": \"108.430600\",\n        \"lat\": \"30.722700\"\n    }, {\n        \"stationName\": \"双江\",\n        \"region\": \"重庆\",\n        \"lon\": \"108.679800\",\n        \"lat\": \"30.940900\"\n    }, {\n        \"stationName\": \"奉节\",\n        \"region\": \"重庆\",\n        \"lon\": \"109.517300\",\n        \"lat\": \"31.048500\"\n    }, {\n        \"stationName\": \"巫山\",\n        \"region\": \"重庆\",\n        \"lon\": \"109.868700\",\n        \"lat\": \"31.071700\"\n    }]\n}",
  "description" : "",
  "requestBodyDefinition" : {
    "name" : null,
    "value" : null,
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
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
      "name" : "code",
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
          "name" : "stationName",
          "value" : "合江",
          "description" : "基站名称",
          "required" : false,
          "dataType" : "String",
          "type" : "",
          "defaultValue" : "",
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "region",
          "value" : "重庆",
          "description" : "所属区域",
          "required" : false,
          "dataType" : "String",
          "type" : "",
          "defaultValue" : "",
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "lon",
          "value" : "105.840358",
          "description" : "经度",
          "required" : false,
          "dataType" : "String",
          "type" : "",
          "defaultValue" : "",
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "lat",
          "value" : "28.819781",
          "description" : "纬度",
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
import response;

var sql="""
select station_name,
       region,
       to_char(round(lon, 6), 'FM999999990.000000') as lon,
       to_char(round(lat, 6), 'FM999999990.000000') as lat
  from yangtze_trunk_network t where 1=1 
?{stationName,and t.station_name like  '%'||#{stationName}||'%'}
?{region,and t.region like  '%'||#{region}||'%'}
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