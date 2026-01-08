{
  "properties" : { },
  "id" : "14f28fb9c8514805b81e1eb0b75a17e4",
  "script" : null,
  "groupId" : "71c52af0421741f3baab0e40a108f071",
  "name" : "船舶静态按国籍分析",
  "createTime" : null,
  "updateTime" : 1693305711627,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/shipAnalysedByNationality",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"nation\": \"中国\",\n        \"num\": \"349295\"\n    }, {\n        \"nation\": \"巴勒斯坦\",\n        \"num\": \"12\"\n    }, {\n        \"nation\": \"肯尼亚\",\n        \"num\": \"9\"\n    }, {\n        \"nation\": \"印度尼西亚\",\n        \"num\": \"6\"\n    }, {\n        \"nation\": \"纽埃\",\n        \"num\": \"5\"\n    }, {\n        \"nation\": \"希腊\",\n        \"num\": \"3\"\n    }, {\n        \"nation\": \"约旦\",\n        \"num\": \"3\"\n    }, {\n        \"nation\": \"圣文森特和格林纳丁斯\",\n        \"num\": \"2\"\n    }, {\n        \"nation\": \"新喀里多尼亚\",\n        \"num\": \"1\"\n    }, {\n        \"nation\": \"圣马丁岛\",\n        \"num\": \"1\"\n    }, {\n        \"nation\": \"危地马拉\",\n        \"num\": \"1\"\n    }]\n}",
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
      "name" : "data",
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
          "name" : "nation",
          "value" : "中国",
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
          "name" : "num",
          "value" : "349295",
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
      } ]
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;

var Sql = """select name nation, num
  from STS_DATA_APPLIED_SHIP_CREW
 where type = '8'
 order by num desc
        """;
var list = db.dm_data.camel().select(Sql);
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: list
});