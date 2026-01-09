{
  "properties" : { },
  "id" : "08c0485172e145ee9a4e7b603d18f680",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "删除关注船舶数据",
  "createTime" : null,
  "updateTime" : 1691749538423,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/deleteFocusShipById",
  "method" : "GET",
  "parameters" : [ {
    "name" : "id",
    "value" : "d4dbf304616b48f18d38788c0f0760d9",
    "description" : "",
    "required" : true,
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"删除成功\"\n}",
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
      "value" : "删除成功",
      "description" : "",
      "required" : false,
      "dataType" : "String",
      "type" : null,
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

var Sql = """DELETE FROM bladex.focus_ship  WHERE id = #{id} """;
db.bladex.camel().update(Sql);
return response.json({
    resultCode: 200,
    resultMsg: "删除成功"
});