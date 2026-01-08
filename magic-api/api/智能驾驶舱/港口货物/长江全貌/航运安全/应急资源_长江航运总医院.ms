{
  "properties" : { },
  "id" : "b27e80bbcba94d00ab4a181996fa8a6c",
  "script" : null,
  "groupId" : "f8cb5b13739f455397cc22a7ae910702",
  "name" : "应急资源_长江航运总医院",
  "createTime" : null,
  "updateTime" : 1750927502630,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getEmergencyHospital",
  "method" : "GET",
  "parameters" : [ {
    "name" : "page",
    "value" : { },
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
    "value" : { },
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"total\": 19,\n        \"list\": [{\n            \"id\": 135,\n            \"name\": \"石  珍\",\n            \"gender\": \"女\",\n            \"position\": \"急诊科主任\",\n            \"contact\": \"13628610959\",\n            \"specialty\": \"\"\n        }, {\n            \"id\": 136,\n            \"name\": \"袁顺召\",\n            \"gender\": \"男\",\n            \"position\": \"应急办主任\",\n            \"contact\": \"13164616466\",\n            \"specialty\": \"\"\n        }, {\n            \"id\": 137,\n            \"name\": \"左  斌\",\n            \"gender\": \"男\",\n            \"position\": \"副主任\",\n            \"contact\": \"18062661719\",\n            \"specialty\": \"\"\n        }, {\n            \"id\": 501,\n            \"name\": \"韩静\",\n            \"gender\": \"女\",\n            \"position\": \"急诊部副主任\",\n            \"contact\": \"13886004057\",\n            \"specialty\": \"创伤急救\"\n        }, {\n            \"id\": 502,\n            \"name\": \"王倩\",\n            \"gender\": \"女\",\n            \"position\": \"呼吸与危重症、血液科主任\",\n            \"contact\": \"18062661509\",\n            \"specialty\": \"呼吸与危重症、血液疾病\"\n        }]\n    }\n}",
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
        "value" : "19",
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
            "value" : "135",
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
            "name" : "name",
            "value" : "石  珍",
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
            "name" : "gender",
            "value" : "女",
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
            "name" : "position",
            "value" : "急诊科主任",
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
            "name" : "contact",
            "value" : "13628610959",
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
            "name" : "specialty",
            "value" : "",
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
select
	id,
	trim(name) name,
	gender,
	position,
	contact,
	specialty
from
	bds_ods.ods_yj_river_emergency_experts
where
	employer = '长江航运总医院'
order by
	id
"""

var list = db.lx_doris.camel().page(sql,size,(page-1)*size);
import response;
return response.json({
          resultCode: 200,
          resultMsg: "查询成功",
          data: list
  });