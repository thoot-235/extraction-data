{
  "properties" : { },
  "id" : "5757e51fb6c6437297e60d416f84f9ef",
  "script" : null,
  "groupId" : "f8cb5b13739f455397cc22a7ae910702",
  "name" : "应急资源_物资管理列表",
  "createTime" : null,
  "updateTime" : 1749698228997,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/emResourceWzList",
  "method" : "GET",
  "parameters" : [ {
    "name" : "page",
    "value" : "1",
    "description" : "",
    "required" : true,
    "dataType" : "Integer",
    "type" : "",
    "defaultValue" : "1",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "size",
    "value" : "6",
    "description" : "",
    "required" : true,
    "dataType" : "Integer",
    "type" : "",
    "defaultValue" : "10",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"total\": 0,\n        \"list\": []\n    }\n}",
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
      "name" : "result",
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
        "name" : "total",
        "value" : "0",
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
        "name" : "list",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : null,
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
//物资管理  名称、所属单位、数量、安全库存数、计量单位
var wzSql = """
    select name, admin_unit, material_num, safe_number, measure_unit
      from yjzy_data.yjxx_wz
    where scbj = '0' order by id
"""

var list = db.ods_data.camel().page(wzSql,size,(page-1)*size);

import response;
return response.json({
          resultCode: 200,
          resultMsg: "查询成功",
          result: list
  });