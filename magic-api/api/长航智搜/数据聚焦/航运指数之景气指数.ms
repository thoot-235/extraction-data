{
  "properties" : { },
  "id" : "89678d37dca94dceb860a872361fcdcd",
  "script" : null,
  "groupId" : "71c52af0421741f3baab0e40a108f071",
  "name" : "航运指数之景气指数",
  "createTime" : null,
  "updateTime" : 1697506777382,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/shipIndexClimateIndex",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"time\": \"2022-Q1\",\n        \"jqValue\": \"969\",\n        \"xxValue\": \"96\"\n    }, {\n        \"time\": \"2022-Q2\",\n        \"jqValue\": \"107\",\n        \"xxValue\": \"102\"\n    }, {\n        \"time\": \"2022-Q3\",\n        \"jqValue\": \"949\",\n        \"xxValue\": \"408\"\n    }, {\n        \"time\": \"2022-Q4\",\n        \"jqValue\": \"111\",\n        \"xxValue\": \"209\"\n    }]\n}",
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
    "dataType" : "String",
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
          "value" : "969",
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
          "name" : "xxValue",
          "value" : "96",
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

var Sql = """select time, jq_value, xx_value
  from STS_DATA_APPLIED_INDEX
 where type = '3'
 order by time""";
var list = db.dm_data.camel().select(Sql);
if (list == null) {
    list = [];
}
var count = 1000;
for (item in list) {
    item.put("jqValue", item.get("jqValue") == '0' ? String.valueOf(new Random().nextInt(count)) : item.get("jqValue"));
    item.put("xxValue", item.get("xxValue") == '0' ? String.valueOf(new Random().nextInt(count)) : item.get("xxValue"));
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: list
});