{
  "properties" : { },
  "id" : "copy1702433559033d75479",
  "script" : null,
  "groupId" : "d451aee9c07b41f0a9f78bf1364eae04",
  "name" : "十四省市污染物处理公司分布情况",
  "createTime" : null,
  "updateTime" : 1702542816919,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getCompanyNumDistribution",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"result\": [{\n        \"itemNameCn\": \"云南\",\n        \"num\": 43\n    }, {\n        \"itemNameCn\": \"贵州\",\n        \"num\": 169\n    }, {\n        \"itemNameCn\": \"四川\",\n        \"num\": 368\n    }, {\n        \"itemNameCn\": \"重庆\",\n        \"num\": 443\n    }, {\n        \"itemNameCn\": \"湖南\",\n        \"num\": 345\n    }, {\n        \"itemNameCn\": \"湖北\",\n        \"num\": 862\n    }, {\n        \"itemNameCn\": \"江西\",\n        \"num\": 261\n    }, {\n        \"itemNameCn\": \"浙江\",\n        \"num\": 1521\n    }, {\n        \"itemNameCn\": \"安徽\",\n        \"num\": 659\n    }, {\n        \"itemNameCn\": \"江苏\",\n        \"num\": 4501\n    }, {\n        \"itemNameCn\": \"上海\",\n        \"num\": 340\n    }, {\n        \"itemNameCn\": \"陕西\",\n        \"num\": 0\n    }, {\n        \"itemNameCn\": \"河南\",\n        \"num\": 0\n    }, {\n        \"itemNameCn\": \"山东\",\n        \"num\": 6\n    }],\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\"\n}",
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
          "name" : "itemNameCn",
          "value" : "云南",
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
          "name" : "num",
          "value" : "43",
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
    }, {
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
    } ]
  }
}
================================
import response;

var sql  ="""
SELECT
	a.item_name_cn_short as item_name_cn,
	to_number(nvl(b.COM_NO,0)) as num 
FROM
	DICT_DATA.DICT_RIVER_PROVINCE a
	LEFT JOIN (
	SELECT
		sum( to_number( COM_NO ) ) AS COM_NO,
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