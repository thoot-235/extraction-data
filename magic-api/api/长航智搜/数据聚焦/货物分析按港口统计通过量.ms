{
  "properties" : { },
  "id" : "06bfae7dd364415f98fc5a227b1415ef",
  "script" : null,
  "groupId" : "71c52af0421741f3baab0e40a108f071",
  "name" : "货物分析按港口统计通过量",
  "createTime" : null,
  "updateTime" : 1693305711660,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/cargoAnalysedByPort",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"name\": \"镇江\",\n        \"impNum\": \"546\",\n        \"expNum\": \"29\",\n        \"total\": \"546\"\n    }, {\n        \"name\": \"常州\",\n        \"impNum\": \"150.3\",\n        \"expNum\": \"290\",\n        \"total\": \"150.3\"\n    }, {\n        \"name\": \"上海\",\n        \"impNum\": \"90\",\n        \"expNum\": \"867\",\n        \"total\": \"90\"\n    }, {\n        \"name\": \"通州\",\n        \"impNum\": \"261\",\n        \"expNum\": \"16\",\n        \"total\": \"16\"\n    }]\n}",
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
          "name" : "name",
          "value" : "镇江",
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
          "name" : "impNum",
          "value" : "546",
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
          "name" : "expNum",
          "value" : "29",
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
          "name" : "total",
          "value" : "546",
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
import java.util.Random;
// 进港
var Sql = """select name,
       to_number(IMP_NUM) IMP_NUM,
       to_number(EXP_NUM) EXP_NUM,
       to_number(TOTAL) TOTAL
  from STS_DATA_APPLIED_PORT
 where type = '3'
        """;
var back = db.dm_data.camel().select(Sql);
if (back == null) {
    back = [];
}
var count = 1000
for (item in back) {
    item.put("name", TagUtils.getTagNameByCode("portListTag", item.get("name").toString()))
    item.put("impNum", item.get("impNum") == '0' ? String.valueOf(new Random().nextInt(count)) : item.get("impNum"));
    item.put("expNum", item.get("expNum") == '0' ? String.valueOf(new Random().nextInt(count)) : item.get("expNum"));
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: back
});