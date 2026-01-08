{
  "properties" : { },
  "id" : "68671d5a12aa44ad9ffddfd2865651b5",
  "script" : null,
  "groupId" : "26b088cc467c4fc0a3f16fed3416308b",
  "name" : "热力图",
  "createTime" : null,
  "updateTime" : 1701171836445,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getHotMap",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"serialNo\": 1,\n        \"nums\": \"\",\n        \"rates\": \"\"\n    }, {\n        \"serialNo\": 2,\n        \"nums\": 41,\n        \"rates\": 0.04\n    }, {\n        \"serialNo\": 3,\n        \"nums\": 106,\n        \"rates\": 0.11\n    }, {\n        \"serialNo\": 4,\n        \"nums\": 258,\n        \"rates\": 0.26\n    }, {\n        \"serialNo\": 5,\n        \"nums\": 222,\n        \"rates\": 0.22\n    }, {\n        \"serialNo\": 6,\n        \"nums\": 93,\n        \"rates\": 0.09\n    }, {\n        \"serialNo\": 7,\n        \"nums\": 164,\n        \"rates\": 0.16\n    }, {\n        \"serialNo\": 8,\n        \"nums\": 90,\n        \"rates\": 0.09\n    }, {\n        \"serialNo\": 9,\n        \"nums\": 217,\n        \"rates\": 0.22\n    }, {\n        \"serialNo\": 10,\n        \"nums\": 66,\n        \"rates\": 0.07\n    }, {\n        \"serialNo\": 11,\n        \"nums\": 364,\n        \"rates\": 0.36\n    }, {\n        \"serialNo\": 12,\n        \"nums\": 657,\n        \"rates\": 0.66\n    }, {\n        \"serialNo\": 13,\n        \"nums\": 217,\n        \"rates\": 0.22\n    }, {\n        \"serialNo\": 14,\n        \"nums\": 237,\n        \"rates\": 0.24\n    }, {\n        \"serialNo\": 15,\n        \"nums\": 319,\n        \"rates\": 0.32\n    }, {\n        \"serialNo\": 16,\n        \"nums\": 210,\n        \"rates\": 0.21\n    }, {\n        \"serialNo\": 17,\n        \"nums\": 244,\n        \"rates\": 0.24\n    }, {\n        \"serialNo\": 18,\n        \"nums\": 572,\n        \"rates\": 0.57\n    }, {\n        \"serialNo\": 19,\n        \"nums\": 304,\n        \"rates\": 0.3\n    }, {\n        \"serialNo\": 20,\n        \"nums\": 549,\n        \"rates\": 0.55\n    }, {\n        \"serialNo\": 21,\n        \"nums\": 697,\n        \"rates\": 0.7\n    }, {\n        \"serialNo\": 22,\n        \"nums\": 352,\n        \"rates\": 0.35\n    }, {\n        \"serialNo\": 23,\n        \"nums\": 815,\n        \"rates\": 0.82\n    }, {\n        \"serialNo\": 24,\n        \"nums\": 879,\n        \"rates\": 0.88\n    }, {\n        \"serialNo\": 25,\n        \"nums\": 1218,\n        \"rates\": 1.22\n    }, {\n        \"serialNo\": 26,\n        \"nums\": 922,\n        \"rates\": 0.92\n    }, {\n        \"serialNo\": 27,\n        \"nums\": 30,\n        \"rates\": 0.03\n    }, {\n        \"serialNo\": 28,\n        \"nums\": 1512,\n        \"rates\": 1.51\n    }, {\n        \"serialNo\": 29,\n        \"nums\": 2561,\n        \"rates\": 2.56\n    }, {\n        \"serialNo\": 30,\n        \"nums\": 1534,\n        \"rates\": 1.53\n    }, {\n        \"serialNo\": 31,\n        \"nums\": 1625,\n        \"rates\": 1.63\n    }]\n}",
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
          "name" : "serialNo",
          "value" : "1",
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
          "name" : "nums",
          "value" : "",
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
          "name" : "rates",
          "value" : "",
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
import log;
import response;
import http;



var hotSql = """
    select * from cockpit_hot_map order by serial_no
"""

var hot =  db.ais.camel().select(hotSql);
for(item in hot){
    item.put("nums",item.get("nums")::int);
    item.put("rates",item.get("rates")::double);
}

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: hot
});