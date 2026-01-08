{
  "properties" : { },
  "id" : "96a221b39c014d3f8e25b087eb1b66b8",
  "script" : null,
  "groupId" : "c32f4ba9bcd0426d8f54812d666acb18",
  "name" : "过闸船舶(自年初)",
  "createTime" : null,
  "updateTime" : 1744872174686,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/gzShipOneYear",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"shipYear\": [{\n            \"month\": \"04\",\n            \"nums\": 3550\n        }, {\n            \"month\": \"05\",\n            \"nums\": 4219\n        }, {\n            \"month\": \"06\",\n            \"nums\": 3829\n        }, {\n            \"month\": \"07\",\n            \"nums\": 2602\n        }, {\n            \"month\": \"08\",\n            \"nums\": 3771\n        }, {\n            \"month\": \"09\",\n            \"nums\": 3772\n        }, {\n            \"month\": \"10\",\n            \"nums\": 4084\n        }, {\n            \"month\": \"11\",\n            \"nums\": 3977\n        }, {\n            \"month\": \"12\",\n            \"nums\": 3995\n        }, {\n            \"month\": \"01\",\n            \"nums\": 3329\n        }, {\n            \"month\": \"02\",\n            \"nums\": 2679\n        }, {\n            \"month\": \"03\",\n            \"nums\": 3451\n        }],\n        \"shipYearBefor\": [{\n            \"month\": \"04\",\n            \"nums\": 4105\n        }, {\n            \"month\": \"05\",\n            \"nums\": 4015\n        }, {\n            \"month\": \"06\",\n            \"nums\": 4006\n        }, {\n            \"month\": \"07\",\n            \"nums\": 4239\n        }, {\n            \"month\": \"08\",\n            \"nums\": 4137\n        }, {\n            \"month\": \"09\",\n            \"nums\": 3754\n        }, {\n            \"month\": \"10\",\n            \"nums\": 4316\n        }, {\n            \"month\": \"11\",\n            \"nums\": 3831\n        }, {\n            \"month\": \"12\",\n            \"nums\": 3596\n        }, {\n            \"month\": \"01\",\n            \"nums\": 3901\n        }, {\n            \"month\": \"02\",\n            \"nums\": 2935\n        }, {\n            \"month\": \"03\",\n            \"nums\": 2233\n        }]\n    }\n}",
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
      "dataType" : "Object",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "shipYear",
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
            "name" : "month",
            "value" : "04",
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
            "name" : "nums",
            "value" : "3550",
            "description" : "",
            "required" : false,
            "dataType" : "Integer",
            "type" : null,
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          } ]
        } ]
      }, {
        "name" : "shipYearBefor",
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
            "name" : "month",
            "value" : "04",
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
            "name" : "nums",
            "value" : "4105",
            "description" : "",
            "required" : false,
            "dataType" : "Integer",
            "type" : null,
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          } ]
        } ]
      } ]
    } ]
  }
}
================================
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;
//当前年过闸船舶
var shipYear_back = """
select subStr(month,6,2) month,nums from (
select a.month,count(b.ship_name) nums from (
SELECT TO_CHAR(ADD_MONTHS(sysdate, LEVEL - 13), 'YYYY-MM') AS MONTH  
FROM DUAL  
CONNECT BY LEVEL <= 12) a left join (
select * from ods_hs_share.changhang_shipapply b where notice_gotime >= add_months(trunc(sysdate,'MM'), -12) and notice_gotime < add_months(trunc(sysdate,'MM'), 0)
) b on to_char(b.notice_gotime,'yyyy-MM')=a.month
   group by a.month order by month asc )
"""

var shipYear = """
SELECT
	subStr( month, 6, 2 ) month,
	nvl(nums,0) nums
FROM
	(
	SELECT
		a.month,
		b.nums 
	FROM
		( SELECT TO_CHAR( ADD_MONTHS( SYSDATE, LEVEL - 13 ), 'YYYY-MM' ) AS MONTH FROM DUAL CONNECT BY LEVEL <= 12 ) a
		LEFT JOIN (
		SELECT
			sum( SHIP_COUNT ) AS nums,
			statyear || '-' || statmonth AS yearmonth 
		FROM
			ods_hs_share.CHANGHANG_PASSSTAT 
		WHERE
			DAMGATE_ID IN ( 1, 2, 32 ) 
		GROUP BY
			statyear || '-' || statmonth 
		) b ON b.yearmonth = a.month 
	
	ORDER BY
	month ASC 
	)
"""

var shipNums1 =  db.ods_data.camel().select(shipYear);

for(item in shipNums1){
  item.put("nums",item.get("nums")::int)
}

//去年同期过闸船舶
var shipYearBefor_back = """
select subStr(month,6,2) month,nums from (
select a.month,count(b.ship_name) nums from (
SELECT TO_CHAR(ADD_MONTHS(sysdate, LEVEL - 25), 'YYYY-MM') AS MONTH  
FROM DUAL  
CONNECT BY LEVEL <= 12) a left join (
select * from ods_hs_share.changhang_shipapply b where notice_gotime >= add_months(trunc(sysdate,'MM'), -24) and notice_gotime < add_months(trunc(sysdate,'MM'), -12)
) b on to_char(b.notice_gotime,'yyyy-MM')=a.month
   group by a.month order by month asc )
"""
var shipYearBefor = """
SELECT
	subStr( month, 6, 2 ) month,
		nvl(nums,0)  nums
FROM
	(
	SELECT
		a.month,
		b. nums 
	FROM
		( SELECT TO_CHAR( ADD_MONTHS( SYSDATE, LEVEL - 25 ), 'YYYY-MM' ) AS MONTH FROM DUAL CONNECT BY LEVEL <= 12 ) a
		LEFT JOIN (
			SELECT
			sum( SHIP_COUNT ) AS nums,
			statyear || '-' || statmonth AS yearmonth 
		FROM
			ods_hs_share.CHANGHANG_PASSSTAT 
		WHERE
			DAMGATE_ID IN ( 1, 2, 32 ) 
		GROUP BY
			statyear || '-' || statmonth 
		) b ON b.yearmonth = a.month 
	ORDER BY
	month ASC 
	)
"""


var shipNums2 =  db.ods_data.camel().select(shipYearBefor);

for(item in shipNums2){
  item.put("nums",item.get("nums")::int)
}

var data = {};

data.put("shipYear",shipNums1);
data.put("shipYearBefor",shipNums2);


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: data
});