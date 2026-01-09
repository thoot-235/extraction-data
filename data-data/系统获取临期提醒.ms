{
  "properties" : { },
  "id" : "b79b477aa1a6469dab1abaee3d63a8d9",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "系统获取临期提醒",
  "createTime" : null,
  "updateTime" : 1693552389008,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getExpireWarning",
  "method" : "GET",
  "parameters" : [ {
    "name" : "objectId",
    "value" : "450324198908245815",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": []\n}",
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
      "dataType" : "Array",
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
import 'com.success.data.tag.TagUtils' as TagUtils;
import log;
import response;
objectId=(objectId==null?"":objectId).replace("<em>","").replace("</em>","");

var sql = """
  select *
  from catalog.expiry_warning
 where expiry_date>=sysdate
 and if_read='0'
 ?{objectId,and object_id = #{objectId}}
 order by expiry_date
"""
var res = db.catalog.camel().select(sql);
if(res==null){
  res=[];
} 
return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
	});
