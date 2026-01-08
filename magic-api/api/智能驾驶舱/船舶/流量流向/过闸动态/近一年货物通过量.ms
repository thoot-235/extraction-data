{
  "properties" : { },
  "id" : "copy1709199808466d57504",
  "script" : null,
  "groupId" : "c32f4ba9bcd0426d8f54812d666acb18",
  "name" : "近一年货物通过量",
  "createTime" : null,
  "updateTime" : 1715677749077,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getOneyearCargo",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"month\": \"2023-02\",\n        \"nums\": 2528.48\n    }, {\n        \"month\": \"2023-03\",\n        \"nums\": 2809.07\n    }, {\n        \"month\": \"2023-04\",\n        \"nums\": 2743.06\n    }, {\n        \"month\": \"2023-05\",\n        \"nums\": 2920.87\n    }, {\n        \"month\": \"2023-06\",\n        \"nums\": 3018.89\n    }, {\n        \"month\": \"2023-07\",\n        \"nums\": 3191.17\n    }, {\n        \"month\": \"2023-08\",\n        \"nums\": 3195.89\n    }, {\n        \"month\": \"2023-09\",\n        \"nums\": 2928.46\n    }, {\n        \"month\": \"2023-10\",\n        \"nums\": 3129.75\n    }, {\n        \"month\": \"2023-11\",\n        \"nums\": 2664.21\n    }, {\n        \"month\": \"2023-12\",\n        \"nums\": 2499.31\n    }, {\n        \"month\": \"2024-01\",\n        \"nums\": 2773.35\n    }]\n}",
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
      "dataType" : "Double",
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
          "value" : "2528.48",
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
import log;
import response;
import 'java.text.DecimalFormat' ;

//货物通过量

var cargoNumsSql= """
   select statyear||'-'||statmonth month, nvl(nums,0)nums 
  from (select b.statyear,
               b.statmonth,
               to_char(sum(b.carry_weight) / 10000, 'FM9999999990.00') nums
          from ( SELECT   ADD_MONTHS(TRUNC(SYSDATE, 'MONTH'), -level) AS Month FROM dual CONNECT BY level <= 12) a
          left join ods_hs_share.changhang_passstat b
            on  b.statyear||'-'||b.statmonth = TO_CHAR(a.Month,'yyyy-MM')
        
         group by b.statyear, b.statmonth
				 order by b.statyear, b.statmonth)
"""

var cargoNums = db.ods_data.camel().select(cargoNumsSql);
for(item in cargoNums){
  item.put("nums",item.get("nums")::double);
}

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: cargoNums
});