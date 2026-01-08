{
  "properties" : { },
  "id" : "a0ba7c5dfa694f909eb7329932d71737",
  "script" : null,
  "groupId" : "71c52af0421741f3baab0e40a108f071",
  "name" : "船舶动态按照月份分析靠港船舶数",
  "createTime" : null,
  "updateTime" : 1693305711559,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/shipAnalysedByMonth",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"time\": \"2022-01\",\n        \"impNum\": \"2\",\n        \"expNum\": \"1\"\n    }, {\n        \"time\": \"2022-02\",\n        \"impNum\": \"5972\",\n        \"expNum\": \"4247\"\n    }, {\n        \"time\": \"2022-03\",\n        \"impNum\": \"3434\",\n        \"expNum\": \"4628\"\n    }, {\n        \"time\": \"2022-04\",\n        \"impNum\": \"421\",\n        \"expNum\": \"389\"\n    }, {\n        \"time\": \"2022-05\",\n        \"impNum\": \"9396\",\n        \"expNum\": \"8700\"\n    }, {\n        \"time\": \"2022-06\",\n        \"impNum\": \"1695\",\n        \"expNum\": \"1784\"\n    }, {\n        \"time\": \"2022-07\",\n        \"impNum\": \"8166\",\n        \"expNum\": \"1186\"\n    }, {\n        \"time\": \"2022-08\",\n        \"impNum\": \"3265\",\n        \"expNum\": \"1708\"\n    }, {\n        \"time\": \"2022-09\",\n        \"impNum\": \"764\",\n        \"expNum\": \"7611\"\n    }, {\n        \"time\": \"2022-10\",\n        \"impNum\": \"8554\",\n        \"expNum\": \"4508\"\n    }, {\n        \"time\": \"2022-11\",\n        \"impNum\": \"3103\",\n        \"expNum\": \"2154\"\n    }, {\n        \"time\": \"2022-12\",\n        \"impNum\": \"2\",\n        \"expNum\": \"6011\"\n    }]\n}",
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
          "name" : "time",
          "value" : "2022-01",
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
          "value" : "2",
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
          "value" : "1",
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
// 查询进出港船舶数据
var Sql = """select time, to_number(IMP_NUM) IMP_NUM, to_number(EXP_NUM) EXP_NUM
  from STS_DATA_APPLIED_PORT
 where type = '2'
 order by time
        """;
var list = db.dm_data.camel().select(Sql);
if (list == null) {
    list = [];
}
var count = 10000;
for (item in list) {
    item.put("impNum", item.get("impNum") == '0' ? String.valueOf(new Random().nextInt(count)) : item.get("impNum"));
    item.put("expNum", item.get("expNum") == '0' ? String.valueOf(new Random().nextInt(count)) : item.get("expNum"));
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: list
});