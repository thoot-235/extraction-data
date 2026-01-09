{
  "properties" : { },
  "id" : "3b791f847f2b45f6a72d339c4b4a8cfd",
  "script" : null,
  "groupId" : "8a28188438b44a14951177035a25241b",
  "name" : "保存个性化私人定制",
  "createTime" : null,
  "updateTime" : 1691749539689,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/savePermissionUser",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"permissionIds\":[1575460223588683777,1589448892888637441],\r\n    \"userId\":\"1123598821738675202\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 200,\n    \"msg\": \"保存成功\"\n}",
  "description" : "",
  "requestBodyDefinition" : {
    "name" : "root",
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
      "name" : "permissionIds",
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
        "value" : "1575460223588683777",
        "description" : "",
        "required" : false,
        "dataType" : "Long",
        "type" : "",
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      } ]
    }, {
      "name" : "userId",
      "value" : "1123598821738675202",
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
      "name" : "code",
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
      "name" : "msg",
      "value" : "保存成功",
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
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.utils.StringUtil' as StringUtil;
import 'java.lang.String' as String;
import log;
import response;

var permissionIds=body.permissionIds;
var userId=body.userId;
db.frame.update(""" delete from PERMISSIONS_DICT_user where userid=#{body.userId}""")
for(item in permissionIds){
    db.frame.table('PERMISSIONS_DICT_user').primary('id', uuid()).save({userId: userId,dictId:item});
   
}
	return response.json({
        code: 200,
        msg: "保存成功",
       
	});

