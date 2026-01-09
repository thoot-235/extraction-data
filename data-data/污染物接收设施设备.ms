{
  "properties" : { },
  "id" : "cf6aee65caf54df49b472823b8a3ba70",
  "script" : null,
  "groupId" : "d451aee9c07b41f0a9f78bf1364eae04",
  "name" : "污染物接收设施设备",
  "createTime" : null,
  "updateTime" : 1735884543012,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/pollutEquipment",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"result\": [{\n        \"label\": \"水污染物作业地点\",\n        \"value\": 520\n    }, {\n        \"label\": \"水污染物作业设备\",\n        \"value\": 7981\n    }, {\n        \"label\": \"处理公司\",\n        \"value\": 9527\n    }, {\n        \"label\": \"水污染物接受船舶\",\n        \"value\": 838\n    }],\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\"\n}",
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
          "name" : "label",
          "value" : "水污染物作业地点",
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
          "name" : "value",
          "value" : "520",
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
    }, {
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
    } ]
  }
}
================================
import response;

var sql = """
  SELECT col_name label, col_value "value"
    FROM (select sum(to_number(DEPART_NO)) AS depart_no,
                 sum(to_number(DEVICE_NUM)) AS device_name,
                 sum(to_number(COM_NO)) AS com_no,
                 sum(to_number(RECEIVE_SHIP_ID)) AS receive_ship_id
            from (select DEVICE_NUM, DEPART_NO, COM_NO, RECEIVE_SHIP_ID
                    from dm_data.t_water_device
                   where count_time =
                         (select max(count_time) from dm_data.t_water_device))) 
                         UNPIVOT(col_value FOR col_name IN (
                         depart_no AS '水污染物作业地点',
                         device_name AS '水污染物作业设备',
                         com_no AS '处理公司', 
                         receive_ship_id AS '水污染物接受船舶'))

"""

var ship = db.dm_data.camel().select(sql);
for(item in ship){
  item.put("value",item.get("value")::int);
}

return response.json({   
       result: ship,
       resultCode: 200,
       resultMsg: "查询成功"

});