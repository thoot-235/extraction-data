{
  "properties" : { },
  "id" : "b3018ce777054beda85a4f2371f4f698",
  "script" : null,
  "groupId" : "0700e32d7c4049b9b521694c26cbcb71",
  "name" : "根据id查询升级日志详情",
  "createTime" : null,
  "updateTime" : 1691749539721,
  "lock" : null,
  "createBy" : null,
  "updateBy" : "admin",
  "path" : "/getSystemLogOne",
  "method" : "GET",
  "parameters" : [ {
    "name" : "id",
    "value" : "6079d0bb842b409cb1ae1a1b304ccb87",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": \"\"\n}",
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
      "name" : "result",
      "value" : "",
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

var Sql = """select a.id,a.type,a.params,to_char(a.time,'yyyy-mm-dd') time ,ip,user_name FROM bladex.blade_system_log a   WHERE id = #{id} """;
var data =db.bladex.camel().selectOne(Sql);
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result:  data
});