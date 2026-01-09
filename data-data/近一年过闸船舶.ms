{
  "properties" : { },
  "id" : "copy1709198556659d85012",
  "script" : null,
  "groupId" : "c32f4ba9bcd0426d8f54812d666acb18",
  "name" : "近一年过闸船舶",
  "createTime" : null,
  "updateTime" : 1736762479424,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getOneyearShipapplyNums",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"month\": \"2023-02\",\n        \"nums\": 6279\n    }, {\n        \"month\": \"2023-03\",\n        \"nums\": 7727\n    }, {\n        \"month\": \"2023-04\",\n        \"nums\": 7874\n    }, {\n        \"month\": \"2023-05\",\n        \"nums\": 7956\n    }, {\n        \"month\": \"2023-06\",\n        \"nums\": 7875\n    }, {\n        \"month\": \"2023-07\",\n        \"nums\": 8401\n    }, {\n        \"month\": \"2023-08\",\n        \"nums\": 8331\n    }, {\n        \"month\": \"2023-09\",\n        \"nums\": 7489\n    }, {\n        \"month\": \"2023-10\",\n        \"nums\": 8491\n    }, {\n        \"month\": \"2023-11\",\n        \"nums\": 7459\n    }, {\n        \"month\": \"2023-12\",\n        \"nums\": 8976\n    }, {\n        \"month\": \"2024-01\",\n        \"nums\": 12756\n    }]\n}",
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
          "name" : "month",
          "value" : "2023-02",
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
          "name" : "nums",
          "value" : "6279",
          "description" : "",
          "required" : false,
          "dataType" : "Integer",
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

//船舶艘次
var shipNumsSql = """
select to_char(a.Month, 'yyyy-MM') month, nvl(b.nums,0) nums from 
(SELECT   ADD_MONTHS(TRUNC(SYSDATE, 'MONTH'), -level) AS Month FROM dual CONNECT BY level <= 12) a
left join (select  count(*) as  nums ,to_char(notice_gotime,'yyyy-MM') as  month from   ods_hs_share.changhang_shipapply group  by to_char(notice_gotime,'yyyy-MM'))b on to_char(a.Month, 'yyyy-MM') =b.month
order  by  a.Month
"""
var shipNums =  db.ods_data.camel().select(shipNumsSql);


for(item in shipNums){
  item.put("nums",item.get("nums")::int)
}

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: shipNums
});