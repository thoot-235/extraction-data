{
  "properties" : { },
  "id" : "eab4e2f66a6e42c796a15fba4cccd542",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "应急资源_长航局系统应急船艇",
  "createTime" : null,
  "updateTime" : 1753344923194,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getChjEmergencyBoats",
  "method" : "GET",
  "parameters" : [ {
    "name" : "page",
    "value" : "1",
    "description" : "",
    "required" : false,
    "dataType" : "Integer",
    "type" : "",
    "defaultValue" : "1",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "size",
    "value" : "5",
    "description" : "",
    "required" : false,
    "dataType" : "Integer",
    "type" : "",
    "defaultValue" : "5",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"total\": 45,\n        \"list\": [{\n            \"id\": 1,\n            \"shipName\": \"海事01\",\n            \"shipType\": \"应急指挥船\",\n            \"shipModel\": \"海巡艇\",\n            \"specification\": \"65米\",\n            \"managementUnit\": \"武汉海事局\",\n            \"contactPerson\": \"宋新传\",\n            \"contactPhone\": \"15623991315\"\n        }, {\n            \"id\": 2,\n            \"shipName\": \"海巡1201\",\n            \"shipType\": \"应急指挥船\",\n            \"shipModel\": \"海巡艇\",\n            \"specification\": \"40.8米\",\n            \"managementUnit\": \"重庆海事局\",\n            \"contactPerson\": \"高腾飞\",\n            \"contactPhone\": \"13594080132\"\n        }, {\n            \"id\": 3,\n            \"shipName\": \"海巡12001\",\n            \"shipType\": \"应急指挥船\",\n            \"shipModel\": \"海巡艇\",\n            \"specification\": \"41.7米\",\n            \"managementUnit\": \"重庆海事局\",\n            \"contactPerson\": \"高腾飞\",\n            \"contactPhone\": \"13594080132\"\n        }, {\n            \"id\": 4,\n            \"shipName\": \"海巡1203\",\n            \"shipType\": \"应急指挥船\",\n            \"shipModel\": \"海巡艇\",\n            \"specification\": \"46米\",\n            \"managementUnit\": \"宜昌海事局\",\n            \"contactPerson\": \"吴岩\",\n            \"contactPhone\": \"18571006839\"\n        }, {\n            \"id\": 5,\n            \"shipName\": \"海巡1291\",\n            \"shipType\": \"应急指挥船\",\n            \"shipModel\": \"海巡艇\",\n            \"specification\": \"46米\",\n            \"managementUnit\": \"三峡海事局\",\n            \"contactPerson\": \"王国钢\",\n            \"contactPhone\": \"15871586776\"\n        }]\n    }\n}",
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
      "name" : "data",
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
        "name" : "total",
        "value" : "45",
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
        "name" : "list",
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
            "name" : "id",
            "value" : "1",
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
            "name" : "shipName",
            "value" : "海事01",
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
            "name" : "shipType",
            "value" : "应急指挥船",
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
            "name" : "shipModel",
            "value" : "海巡艇",
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
            "name" : "specification",
            "value" : "65米",
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
            "name" : "managementUnit",
            "value" : "武汉海事局",
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
            "name" : "contactPerson",
            "value" : "宋新传",
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
            "name" : "contactPhone",
            "value" : "15623991315",
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
    } ]
  }
}
================================
import response;

var sql = """
SELECT
	id,
	ship_name,
	ship_type,
	ship_model,
	specification,
	management_unit,
	contact_person,
	contact_phone 
FROM
	eoc.ods_yj_emergency_boats 
ORDER BY
	id
"""

var list = db.lx_doris.camel().page(sql,size,(page-1)*size);
import response;
return response.json({
          resultCode: 200,
          resultMsg: "查询成功",
          data: list
  });