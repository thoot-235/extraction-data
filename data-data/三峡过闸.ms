{
  "properties" : { },
  "id" : "42b827a527904e3e87dd2127f64b17f4",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "三峡过闸",
  "createTime" : null,
  "updateTime" : 1698739130048,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getSevenShip",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"shipNum\": \"444\",\n        \"carryWeight\": \"158.44\",\n        \"days\": \"2022-10\"\n    }, {\n        \"shipNum\": \"7207\",\n        \"carryWeight\": \"2535.59\",\n        \"days\": \"2022-11\"\n    }, {\n        \"shipNum\": \"7545\",\n        \"carryWeight\": \"2602.82\",\n        \"days\": \"2022-12\"\n    }, {\n        \"shipNum\": \"7051\",\n        \"carryWeight\": \"2560.41\",\n        \"days\": \"2023-01\"\n    }, {\n        \"shipNum\": \"6279\",\n        \"carryWeight\": \"2243.54\",\n        \"days\": \"2023-02\"\n    }, {\n        \"shipNum\": \"7727\",\n        \"carryWeight\": \"2623.65\",\n        \"days\": \"2023-03\"\n    }, {\n        \"shipNum\": \"7874\",\n        \"carryWeight\": \"2575.12\",\n        \"days\": \"2023-04\"\n    }, {\n        \"shipNum\": \"7956\",\n        \"carryWeight\": \"2821.06\",\n        \"days\": \"2023-05\"\n    }, {\n        \"shipNum\": \"7875\",\n        \"carryWeight\": \"2923.64\",\n        \"days\": \"2023-06\"\n    }, {\n        \"shipNum\": \"8401\",\n        \"carryWeight\": \"3084.51\",\n        \"days\": \"2023-07\"\n    }, {\n        \"shipNum\": \"8331\",\n        \"carryWeight\": \"3096.38\",\n        \"days\": \"2023-08\"\n    }, {\n        \"shipNum\": \"7489\",\n        \"carryWeight\": \"2813.09\",\n        \"days\": \"2023-09\"\n    }, {\n        \"shipNum\": \"8168\",\n        \"carryWeight\": \"2901.75\",\n        \"days\": \"2023-10\"\n    }]\n}",
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
      "name" : "result",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Array",
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
          "name" : "shipNum",
          "value" : "444",
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
          "name" : "carryWeight",
          "value" : "158.44",
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
          "name" : "days",
          "value" : "2022-10",
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
import log;
import response;

//船舶艘次
var shipNumsSql = """
 select count(b.ship_name) ship_Num ,round(sum (CARRY_WEIGHT )/10000,2) CARRY_WEIGHT  ,
 to_char(b.notice_gotime,'yyyy-mm') days from
     ods_hs_share.changhang_shipapply b   
     where b.notice_gotime >=sysdate-181 
     group by to_char(b.notice_gotime,'yyyy-mm')
     order by to_char(b.notice_gotime,'yyyy-mm')
"""


var shipNums =  db.ods_data.camel().select(shipNumsSql);




return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: shipNums
});