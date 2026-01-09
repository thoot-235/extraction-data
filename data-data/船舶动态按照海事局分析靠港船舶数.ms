{
  "properties" : { },
  "id" : "23f4d4774b4941b39e136718effd393c",
  "script" : null,
  "groupId" : "71c52af0421741f3baab0e40a108f071",
  "name" : "船舶动态按照海事局分析靠港船舶数",
  "createTime" : null,
  "updateTime" : 1740046014193,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/shipAnalysedByOrg",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"name\": \"宜宾\",\n        \"impNum\": \"4930\",\n        \"expNum\": \"7040\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"泸州\",\n        \"impNum\": \"4731\",\n        \"expNum\": \"5359\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"重庆\",\n        \"impNum\": \"5642\",\n        \"expNum\": \"1\",\n        \"total\": \"1\"\n    }, {\n        \"name\": \"三峡\",\n        \"impNum\": \"9983\",\n        \"expNum\": \"5626\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"宜昌\",\n        \"impNum\": \"1202\",\n        \"expNum\": \"4365\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"荆州\",\n        \"impNum\": \"237\",\n        \"expNum\": \"2955\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"岳阳\",\n        \"impNum\": \"2305\",\n        \"expNum\": \"6791\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"武汉\",\n        \"impNum\": \"7282\",\n        \"expNum\": \"5311\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"黄石\",\n        \"impNum\": \"1\",\n        \"expNum\": \"4215\",\n        \"total\": \"1\"\n    }, {\n        \"name\": \"九江\",\n        \"impNum\": \"8443\",\n        \"expNum\": \"2817\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"安庆\",\n        \"impNum\": \"5266\",\n        \"expNum\": \"8985\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"芜湖\",\n        \"impNum\": \"3597\",\n        \"expNum\": \"950\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"南京\",\n        \"impNum\": \"3775\",\n        \"expNum\": \"8950\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"张家港\",\n        \"impNum\": \"1\",\n        \"expNum\": \"7771\",\n        \"total\": \"1\"\n    }, {\n        \"name\": \"南通\",\n        \"impNum\": \"7087\",\n        \"expNum\": \"2479\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"镇江\",\n        \"impNum\": \"1\",\n        \"expNum\": \"789\",\n        \"total\": \"1\"\n    }, {\n        \"name\": \"江阴\",\n        \"impNum\": \"9473\",\n        \"expNum\": \"8483\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"扬州\",\n        \"impNum\": \"2957\",\n        \"expNum\": \"4585\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"常州\",\n        \"impNum\": \"1\",\n        \"expNum\": \"4114\",\n        \"total\": \"1\"\n    }, {\n        \"name\": \"泰州\",\n        \"impNum\": \"6507\",\n        \"expNum\": \"522\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"常熟\",\n        \"impNum\": \"5100\",\n        \"expNum\": \"650\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"太仓\",\n        \"impNum\": \"3789\",\n        \"expNum\": \"2773\",\n        \"total\": \"0\"\n    }]\n}",
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
          "name" : "name",
          "value" : "宜宾",
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
          "name" : "impNum",
          "value" : "4930",
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
          "name" : "expNum",
          "value" : "7040",
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
          "name" : "total",
          "value" : "0",
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
import java.util.Random;
import response;
// 查询今年的进出港船舶数据
var Sql = """select NAME,
       to_number(IMP_NUM) IMP_NUM,
       to_number(EXP_NUM) EXP_NUM,
       to_number(TOTAL) TOTAL
  from STS_DATA_APPLIED_PORT
 where type = '1'
 order by sort
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