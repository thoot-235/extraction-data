{
  "properties" : { },
  "id" : "0906e914d7f0432285485a35e93b5012",
  "script" : null,
  "groupId" : "71c52af0421741f3baab0e40a108f071",
  "name" : "货物分析按货物种类统计通过量",
  "createTime" : null,
  "updateTime" : 1693305711681,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/cargoAnalysedByType",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"name\": \"煤炭及制品\",\n        \"impNum\": \"43\",\n        \"expNum\": \"6\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"石油、天然气及制品\",\n        \"impNum\": \"63\",\n        \"expNum\": \"26\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"金属矿石\",\n        \"impNum\": \"8\",\n        \"expNum\": \"55\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"钢铁\",\n        \"impNum\": \"77\",\n        \"expNum\": \"252.6\",\n        \"total\": \"252.6\"\n    }, {\n        \"name\": \"矿建材料\",\n        \"impNum\": \"90\",\n        \"expNum\": \"51\",\n        \"total\": \"141\"\n    }, {\n        \"name\": \"水泥\",\n        \"impNum\": \"21\",\n        \"expNum\": \"17\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"木材\",\n        \"impNum\": \"71\",\n        \"expNum\": \"0\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"非金属矿石\",\n        \"impNum\": \"72\",\n        \"expNum\": \"51\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"化学肥料及农药\",\n        \"impNum\": \"79\",\n        \"expNum\": \"25\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"盐\",\n        \"impNum\": \"87\",\n        \"expNum\": \"88\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"粮食\",\n        \"impNum\": \"4\",\n        \"expNum\": \"16\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"机械、设备、电器\",\n        \"impNum\": \"70\",\n        \"expNum\": \"66\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"化工原料及制品\",\n        \"impNum\": \"67\",\n        \"expNum\": \"4\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"有色金属\",\n        \"impNum\": \"40\",\n        \"expNum\": \"63\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"轻工、医药产品\",\n        \"impNum\": \"65\",\n        \"expNum\": \"80\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"农林牧副渔业产品\",\n        \"impNum\": \"74\",\n        \"expNum\": \"43\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"其他\",\n        \"impNum\": \"15\",\n        \"expNum\": \"80\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"集装箱运量\",\n        \"impNum\": \"97\",\n        \"expNum\": \"70\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"集装箱货运量\",\n        \"impNum\": \"696.3\",\n        \"expNum\": \"185.5\",\n        \"total\": \"881.8\"\n    }, {\n        \"name\": \"滚装车辆数\",\n        \"impNum\": \"1\",\n        \"expNum\": \"67\",\n        \"total\": \"0\"\n    }, {\n        \"name\": \"滚装车辆货运量\",\n        \"impNum\": \"42\",\n        \"expNum\": \"28\",\n        \"total\": \"0\"\n    }]\n}",
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
          "value" : "煤炭及制品",
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
          "value" : "43",
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
          "value" : "6",
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
          "value" : "0",
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
import oracle.net.aso.f
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;
import java.util.Random;

var Sql = """select name,
       to_number(IMP_NUM) IMP_NUM,
       to_number(EXP_NUM) EXP_NUM,
       to_number(TOTAL) TOTAL
  from STS_DATA_APPLIED_PORT
 where type = '4'
 order by sort
        """;
var back = db.dm_data.camel().select(Sql);
if (back == null) {
    back = [];
}
var count = 100;
for (item in back) {
    item.put("impNum", item.get("impNum") == '0' ? String.valueOf(new Random().nextInt(count)) : item.get("impNum"));
    item.put("expNum", item.get("expNum") == '0' ? String.valueOf(new Random().nextInt(count)) : item.get("expNum"));
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: back
});