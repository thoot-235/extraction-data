{
  "properties" : { },
  "id" : "b460f3a7b95746f19bd08ba747127d87",
  "script" : null,
  "groupId" : "c02d793d72c844c4b8d76db461f1ddf0",
  "name" : "船员证件类型",
  "createTime" : null,
  "updateTime" : 1694505854857,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getCardType",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"key\": \"S\",\n        \"value\": \"身份证\"\n    }]\n}",
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
          "name" : "key",
          "value" : "S",
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
          "value" : "身份证",
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
  }
}
================================


import 'com.success.data.tag.TagUtils' as TagUtils;
import response;
companyName=(companyName==null?"":companyName).replace("<em>","").replace("</em>","");
var  sql="""
select
'S' as key, '身份证'  as value  from dual
union  select
'X' as key, '香港身份证'  as value from dual
union  select
'A' as key, '澳门身份证'  as value from dual
union  select
'T' as key, '台湾身份证'  as value from dual
union  select
'J' as key, '军人证件' as value from dual
union  select
 'Q' as key, '其他'  as value from dual
"""
var res=db.ods_data.camel().select(sql);


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
	});



