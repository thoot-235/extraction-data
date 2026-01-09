{
  "properties" : { },
  "id" : "ebfa9b9c9715458bab43ed7654540e94",
  "script" : null,
  "groupId" : "71c52af0421741f3baab0e40a108f071",
  "name" : "船员按年龄分析",
  "createTime" : null,
  "updateTime" : 1698129497826,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/crewAnalysedByAge",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"age\": \"18-20\",\n        \"num\": \"11528\"\n    }, {\n        \"age\": \"21-30\",\n        \"num\": \"202944\"\n    }, {\n        \"age\": \"31-40\",\n        \"num\": \"370791\"\n    }, {\n        \"age\": \"41-50\",\n        \"num\": \"265831\"\n    }, {\n        \"age\": \"51-60\",\n        \"num\": \"325592\"\n    }, {\n        \"age\": \"61-65\",\n        \"num\": \"66283\"\n    }]\n}",
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
          "name" : "age",
          "value" : "18-20",
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
          "name" : "num",
          "value" : "11528",
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

var Sql = """
select name age, num
  from STS_DATA_APPLIED_SHIP_CREW
 where type = '1'
 order by name asc
        """;
var list = db.dm_data.camel().select(Sql);
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: list
});