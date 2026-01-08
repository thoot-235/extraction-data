{
  "properties" : { },
  "id" : "e2cdac3f62034a548b5b8ddb7ae7b4a1",
  "script" : null,
  "groupId" : "f5998905462549148b80f5b1041a25ae",
  "name" : "景气指数",
  "createTime" : null,
  "updateTime" : 1722321041343,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getClimateIndex",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"time\": \"2022-Q1\",\n        \"jqValue\": 98.0,\n        \"xxValue\": 96.0\n    }, {\n        \"time\": \"2022-Q2\",\n        \"jqValue\": 107.0,\n        \"xxValue\": 102.0\n    }, {\n        \"time\": \"2022-Q3\",\n        \"jqValue\": 101.0,\n        \"xxValue\": 101.0\n    }, {\n        \"time\": \"2022-Q4\",\n        \"jqValue\": 101.0,\n        \"xxValue\": 101.0\n    }, {\n        \"time\": \"2023-Q1\",\n        \"jqValue\": 115.0,\n        \"xxValue\": 98.0\n    }, {\n        \"time\": \"2023-Q2\",\n        \"jqValue\": 105.0,\n        \"xxValue\": 103.0\n    }, {\n        \"time\": \"2023-Q3\",\n        \"jqValue\": 101.0,\n        \"xxValue\": 99.0\n    }, {\n        \"time\": \"2023-Q4\",\n        \"jqValue\": 99.0,\n        \"xxValue\": 100.0\n    }]\n}",
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
          "name" : "time",
          "value" : "2022-Q1",
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
          "name" : "jqValue",
          "value" : "98.0",
          "description" : "",
          "required" : false,
          "dataType" : "Double",
          "type" : "",
          "defaultValue" : "",
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "xxValue",
          "value" : "96.0",
          "description" : "",
          "required" : false,
          "dataType" : "Double",
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

//最新8期数据
var Sql = """
select a.* from (
    select time, jq_value, xx_value
        from STS_DATA_APPLIED_INDEX
        where type = '3' and jq_value !=0 and time >= '2019-Q1'
        order by time desc) a
    where rownum <=8 order by a.time""";
var list = db.dm_data.camel().select(Sql);
if (list == null) {
    list = [];
}
var count = 1000;
for (item in list) {
    item.put("jqValue", item.get("jqValue")::double);
    item.put("xxValue", item.get("xxValue")::double);
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: list
});