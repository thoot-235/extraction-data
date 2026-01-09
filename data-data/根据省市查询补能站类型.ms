{
  "properties" : { },
  "id" : "ee6d389a75a84d4dbba1f35deaf9f3f3",
  "script" : null,
  "groupId" : "8cfab9687d1a495288b389b5545384b5",
  "name" : "根据省市查询补能站类型",
  "createTime" : null,
  "updateTime" : 1734943923245,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getFillingTypeByProv",
  "method" : "GET",
  "parameters" : [ {
    "name" : "provName",
    "value" : "重庆",
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
    "name" : "stationStatus",
    "value" : "规划",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"nums\": 5\n    }, {\n        \"stationType\": \"甲醇加注站\",\n        \"stationStatus\": \"规划\",\n        \"nums\": 2\n    }, {\n        \"stationType\": \"电池换电站\",\n        \"stationStatus\": \"规划\",\n        \"nums\": 2\n    }]\n}",
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
      "name" : "data",
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
          "name" : "stationType",
          "value" : "LNG加注站",
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
          "name" : "stationStatus",
          "value" : "规划",
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
          "name" : "nums",
          "value" : "5",
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
    } ]
  }
}
================================
import response;
var sql = """
    select station_type, station_status，count(1) nums
        from FILLING_STATION_INFO
        where pro_name = #{provName}
        ?{stationStatus,and station_status = #{stationStatus}}
        group by station_type,station_status
        order by station_type,station_status
"""
var list = db.ods_data.camel().select(sql);
for(item in list){
    item.put("nums",item.get("nums")::int)
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: list 
}); 