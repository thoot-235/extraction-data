{
  "properties" : { },
  "id" : "24dacb7a0bcf423c9632023d1a495652",
  "script" : null,
  "groupId" : "c32f4ba9bcd0426d8f54812d666acb18",
  "name" : "过闸货物(自年初)",
  "createTime" : null,
  "updateTime" : 1740705201782,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/gzCargoOneYear",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"cargoYear\": [{\n            \"month\": \"2023-05\",\n            \"nums\": 1459.15\n        }, {\n            \"month\": \"2023-06\",\n            \"nums\": 1504.89\n        }, {\n            \"month\": \"2023-07\",\n            \"nums\": 1598.34\n        }, {\n            \"month\": \"2023-08\",\n            \"nums\": 1597.15\n        }, {\n            \"month\": \"2023-09\",\n            \"nums\": 1466.57\n        }, {\n            \"month\": \"2023-10\",\n            \"nums\": 1563.5\n        }, {\n            \"month\": \"2023-11\",\n            \"nums\": 1337.13\n        }, {\n            \"month\": \"2023-12\",\n            \"nums\": 1252.18\n        }, {\n            \"month\": \"2024-01\",\n            \"nums\": 496364.78\n        }, {\n            \"month\": \"2024-02\",\n            \"nums\": 367907.83\n        }, {\n            \"month\": \"2024-03\",\n            \"nums\": 231979.95\n        }, {\n            \"month\": \"2024-04\",\n            \"nums\": 473040.19\n        }],\n        \"cargoYearBefor\": [{\n            \"month\": \"2022-05\",\n            \"nums\": 1512.69\n        }, {\n            \"month\": \"2022-06\",\n            \"nums\": 1409.96\n        }, {\n            \"month\": \"2022-07\",\n            \"nums\": 1360.51\n        }, {\n            \"month\": \"2022-08\",\n            \"nums\": 1490.23\n        }, {\n            \"month\": \"2022-09\",\n            \"nums\": 1331.28\n        }, {\n            \"month\": \"2022-10\",\n            \"nums\": 1371.09\n        }, {\n            \"month\": \"2022-11\",\n            \"nums\": 1406.7\n        }, {\n            \"month\": \"2022-12\",\n            \"nums\": 1310.37\n        }, {\n            \"month\": \"2023-01\",\n            \"nums\": 1328.92\n        }, {\n            \"month\": \"2023-02\",\n            \"nums\": 1263.15\n        }, {\n            \"month\": \"2023-03\",\n            \"nums\": 1398.25\n        }, {\n            \"month\": \"2023-04\",\n            \"nums\": 1378.34\n        }]\n    }\n}",
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
      "dataType" : "Object",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "cargoYear",
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
            "value" : "2023-05",
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
            "value" : "1459.15",
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
      }, {
        "name" : "cargoYearBefor",
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
            "value" : "2022-05",
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
            "value" : "1512.69",
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
    } ]
  }
}
================================

import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;
//当前年过闸货物
var shipYear = """
SELECT
	--subStr( month, 6, 2 ) month,
   month,
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
			to_char( sum( carry_weight ) / 10000, 'FM9999999990.00' ) nums ,
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
  item.put("nums",item.get("nums")::double)
}

//去年同期过闸货物
var shipYearBefor = """
SELECT
--	subStr( month, 6, 2 ) month,
 month,
	nvl(nums,0) nums
FROM
	(
	SELECT
		a.month,
		b. nums 
	FROM
		( SELECT TO_CHAR( ADD_MONTHS( SYSDATE, LEVEL - 25 ), 'YYYY-MM' ) AS MONTH FROM DUAL CONNECT BY LEVEL <= 12 ) a
		LEFT JOIN (
			SELECT
			to_char( sum( carry_weight ) / 10000, 'FM9999999990.00' ) nums ,
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
  item.put("nums",item.get("nums")::double)
}

var data = {};

data.put("cargoYear",shipNums1);
data.put("cargoYearBefor",shipNums2);


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: data
});