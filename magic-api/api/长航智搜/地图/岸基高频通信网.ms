{
  "properties" : { },
  "id" : "5ebba5f0f3af41ecaca374693e578f8c",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "岸基高频通信网",
  "createTime" : null,
  "updateTime" : 1734403918106,
  "lock" : null,
  "createBy" : null,
  "updateBy" : "admin",
  "path" : "/getHfCommStation",
  "method" : "GET",
  "parameters" : [ {
    "name" : "stationName",
    "value" : null,
    "description" : "基站名称",
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }, {
    "name" : "region",
    "value" : "重庆",
    "description" : "所属区域",
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
  "responseBody" : "{\n    \"code\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"stationName\": \"巴南\",\n        \"region\": \"重庆\",\n        \"altitude\": \"318\",\n        \"lon\": \"106.521500\",\n        \"lat\": \"29.386000\"\n    }, {\n        \"stationName\": \"重庆\",\n        \"region\": \"重庆\",\n        \"altitude\": \"600\",\n        \"lon\": \"106.610200\",\n        \"lat\": \"29.536500\"\n    }, {\n        \"stationName\": \"张关\",\n        \"region\": \"重庆\",\n        \"altitude\": \"590\",\n        \"lon\": \"106.893200\",\n        \"lat\": \"29.766000\"\n    }, {\n        \"stationName\": \"涪陵\",\n        \"region\": \"重庆\",\n        \"altitude\": \"226\",\n        \"lon\": \"107.380100\",\n        \"lat\": \"29.713800\"\n    }, {\n        \"stationName\": \"南沱\",\n        \"region\": \"重庆\",\n        \"altitude\": \"252\",\n        \"lon\": \"107.518400\",\n        \"lat\": \"29.846700\"\n    }, {\n        \"stationName\": \"丰都\",\n        \"region\": \"重庆\",\n        \"altitude\": \"197\",\n        \"lon\": \"107.732100\",\n        \"lat\": \"29.875100\"\n    }, {\n        \"stationName\": \"忠县\",\n        \"region\": \"重庆\",\n        \"altitude\": \"322\",\n        \"lon\": \"8.018400\",\n        \"lat\": \"30.268200\"\n    }, {\n        \"stationName\": \"西沱\",\n        \"region\": \"重庆\",\n        \"altitude\": \"378\",\n        \"lon\": \"108.221642\",\n        \"lat\": \"30.405714\"\n    }, {\n        \"stationName\": \"万州\",\n        \"region\": \"重庆\",\n        \"altitude\": \"228\",\n        \"lon\": \"108.430600\",\n        \"lat\": \"30.722700\"\n    }, {\n        \"stationName\": \"双江\",\n        \"region\": \"重庆\",\n        \"altitude\": \"234\",\n        \"lon\": \"108.679800\",\n        \"lat\": \"30.940900\"\n    }, {\n        \"stationName\": \"云阳\",\n        \"region\": \"重庆\",\n        \"altitude\": \"209\",\n        \"lon\": \"108.902100\",\n        \"lat\": \"30.959300\"\n    }, {\n        \"stationName\": \"大麦沱\",\n        \"region\": \"重庆\",\n        \"altitude\": \"290\",\n        \"lon\": \"109.152800\",\n        \"lat\": \"30.965700\"\n    }, {\n        \"stationName\": \"奉节\",\n        \"region\": \"重庆\",\n        \"altitude\": \"369\",\n        \"lon\": \"109.152800\",\n        \"lat\": \"31.048500\"\n    }, {\n        \"stationName\": \"巫山\",\n        \"region\": \"重庆\",\n        \"altitude\": \"300\",\n        \"lon\": \"109.868700\",\n        \"lat\": \"31.071700\"\n    }, {\n        \"stationName\": \"青石\",\n        \"region\": \"重庆\",\n        \"altitude\": \"208\",\n        \"lon\": \"110.004500\",\n        \"lat\": \"31.017400\"\n    }]\n}",
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
          "value" : "巴南",
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
          "name" : "region",
          "value" : "重庆",
          "description" : "所属区域",
          "required" : false,
          "dataType" : "String",
          "type" : null,
          "defaultValue" : null,
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "altitude",
          "value" : "318",
          "description" : "高程（米）",
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
          "value" : "106.521500",
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
          "value" : "29.386000",
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
       region,
       altitude,
       to_char(round(lon, 6), 'FM999999990.000000') as lon,
       to_char(round(lat, 6), 'FM999999990.000000') as lat
  from hf_comm_station t where 1=1 
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