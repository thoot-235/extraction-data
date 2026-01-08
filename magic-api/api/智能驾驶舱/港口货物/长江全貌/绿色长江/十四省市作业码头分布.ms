{
  "properties" : { },
  "id" : "1b8c60b7313a46e3b172726a1804c67b",
  "script" : null,
  "groupId" : "d451aee9c07b41f0a9f78bf1364eae04",
  "name" : "十四省市作业码头分布",
  "createTime" : null,
  "updateTime" : 1702433724787,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getDepartNumDistribution",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"result\": [{\n        \"itemNameCn\": \"云南\",\n        \"num\": 8\n    }, {\n        \"itemNameCn\": \"贵州\",\n        \"num\": 35\n    }, {\n        \"itemNameCn\": \"四川\",\n        \"num\": 41\n    }, {\n        \"itemNameCn\": \"重庆\",\n        \"num\": 51\n    }, {\n        \"itemNameCn\": \"湖南\",\n        \"num\": 33\n    }, {\n        \"itemNameCn\": \"湖北\",\n        \"num\": 72\n    }, {\n        \"itemNameCn\": \"江西\",\n        \"num\": 42\n    }, {\n        \"itemNameCn\": \"浙江\",\n        \"num\": 49\n    }, {\n        \"itemNameCn\": \"安徽\",\n        \"num\": 35\n    }, {\n        \"itemNameCn\": \"江苏\",\n        \"num\": 147\n    }, {\n        \"itemNameCn\": \"上海\",\n        \"num\": 5\n    }, {\n        \"itemNameCn\": \"陕西\",\n        \"num\": 0\n    }, {\n        \"itemNameCn\": \"河南\",\n        \"num\": 0\n    }, {\n        \"itemNameCn\": \"山东\",\n        \"num\": 0\n    }],\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\"\n}",
  "description" : "",
  "requestBodyDefinition" : {
    "name" : null,
    "value" : null,
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
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
          "name" : "itemNameCn",
          "value" : "云南",
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
          "name" : "num",
          "value" : "8",
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
    }, {
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
    } ]
  }
}
================================
import response;

var sql  ="""
SELECT
	a.item_name_cn_short as item_name_cn,
	to_number(nvl(b.depart_no,0)) as num 
FROM
	DICT_DATA.DICT_RIVER_PROVINCE a
	LEFT JOIN (
	SELECT
		sum( to_number( DEPART_NO ) ) AS depart_no,
		province 
	FROM
		dm_data.t_water_device 
	WHERE
		count_time = ( SELECT max( count_time ) FROM dm_data.t_water_device ) 
	GROUP BY
		province 
	) b ON a.item_name_cn = b.province 
ORDER BY
	a.orders
"""


var reMapList = db.dm_data.camel().select(sql);
for(item in reMapList){
    item.put("num",item.get("num")::int);
}

return response.json({   
        resultCode: 200,
       resultMsg: "查询成功",
          result: reMapList
});