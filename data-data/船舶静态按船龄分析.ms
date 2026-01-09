{
  "properties" : { },
  "id" : "d4fc3dc92e204ba694831aaae74cc27d",
  "script" : null,
  "groupId" : "71c52af0421741f3baab0e40a108f071",
  "name" : "船舶静态按船龄分析",
  "createTime" : null,
  "updateTime" : 1693305711652,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/shipAnalysedByAge",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"num\": \"37163\",\n        \"age\": \"小于5年\"\n    }, {\n        \"num\": \"69043\",\n        \"age\": \"5-10年\"\n    }, {\n        \"num\": \"69021\",\n        \"age\": \"11-15年\"\n    }, {\n        \"num\": \"84811\",\n        \"age\": \"16-20年\"\n    }, {\n        \"num\": \"89334\",\n        \"age\": \"20年以上\"\n    }]\n}",
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
          "name" : "num",
          "value" : "37163",
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
          "name" : "age",
          "value" : "小于5年",
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
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;

var Sql = """select num,
       case
         when age = '2000' then
          '20年以上'
         when age != '2000' then
          age
       end age
  from (select name age, num, name_code agenew
          from STS_DATA_APPLIED_SHIP_CREW
         where type = '6')
 order by to_number(ageNew)
        """;
var list = db.dm_data.camel().select(Sql);
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: list
});