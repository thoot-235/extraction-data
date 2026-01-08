{
  "properties" : { },
  "id" : "db1d97acabd0421696d2432306378a94",
  "script" : null,
  "groupId" : "0700e32d7c4049b9b521694c26cbcb71",
  "name" : "删除系统升级维护日志",
  "createTime" : null,
  "updateTime" : 1691749539707,
  "lock" : null,
  "createBy" : null,
  "updateBy" : "admin",
  "path" : "/deleteSystemLog",
  "method" : "GET",
  "parameters" : [ {
    "name" : "id",
    "value" : "0b742f6951dc4211b08b00fe1eaca27a",
    "description" : null,
    "required" : true,
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"删除成功\"\n}",
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
      "name" : "resultCode",
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
      "value" : "删除成功",
      "description" : "",
      "required" : false,
      "dataType" : "String",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    } ]
  }
}
================================
import response;

var Sql = """DELETE FROM bladex.blade_system_log  WHERE id = #{id} """;
db.bladex.camel().update(Sql);
return response.json({
    resultCode: 200,
    resultMsg: "删除成功"
});