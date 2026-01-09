{
  "properties" : { },
  "id" : "fa187569d28e45fb9d3d2fa5d67493b4",
  "script" : null,
  "groupId" : "f8cb5b13739f455397cc22a7ae910702",
  "name" : "应急资源_应急预案",
  "createTime" : null,
  "updateTime" : 1755484750933,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getYjyaInfo",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"total\": 15,\n        \"list\": [{\n            \"id\": \"1\",\n            \"genericName\": \"长航局突发事件综合应急预案\",\n            \"fileName\": \"长航局突发事件综合应急预案.pdf\",\n            \"rowId\": \"1\"\n        }, {\n            \"id\": \"10\",\n            \"genericName\": \"长江海事局综合应急预案及专项预案\",\n            \"fileName\": \"长江海事局综合应急预案及专项预案.pdf\",\n            \"rowId\": \"2\"\n        }, {\n            \"id\": \"11\",\n            \"genericName\": \"长江航道突发事件综合应急预案\",\n            \"fileName\": \"长江航道突发事件综合应急预案.pdf\",\n            \"rowId\": \"3\"\n        }, {\n            \"id\": \"12\",\n            \"genericName\": \"三峡局防汛应急预案（2023）\",\n            \"fileName\": \"三峡局防汛应急预案（2023）.pdf\",\n            \"rowId\": \"4\"\n        }, {\n            \"id\": \"13\",\n            \"genericName\": \"三峡枢纽河段水路交通突发事件应急预案\",\n            \"fileName\": \"三峡枢纽河段水路交通突发事件应急预案.pdf\",\n            \"rowId\": \"5\"\n        }]\n    }\n}",
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
        "value" : "15",
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
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "genericName",
            "value" : "长航局突发事件综合应急预案",
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
            "name" : "fileName",
            "value" : "长航局突发事件综合应急预案.pdf",
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
            "name" : "rowId",
            "value" : "1",
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
id,GENERIC_NAME,FILE_NAME
from  dm_data.yjzy_yjya_info where del_flag='0'
order by to_number(id)
"""

var list = db.ods_data.camel().page(sql,size,(page-1)*size);
import response;
return response.json({
          resultCode: 200,
          resultMsg: "查询成功",
          data: list
  });