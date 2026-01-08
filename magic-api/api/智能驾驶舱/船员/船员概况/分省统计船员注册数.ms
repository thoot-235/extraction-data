{
  "properties" : { },
  "id" : "c70a196e356c4e7e8ef36dc0fc9a83a7",
  "script" : null,
  "groupId" : "3610e448459c4398b66ed3c1ac4c8b42",
  "name" : "分省统计船员注册数",
  "createTime" : null,
  "updateTime" : 1746700124133,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getCrewRegisterBygov",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"targetName\": \"云南\",\n        \"crewNums\": 13064,\n        \"rowNumber\": \"13\"\n    }, {\n        \"targetName\": \"贵州\",\n        \"crewNums\": 14252,\n        \"rowNumber\": \"12\"\n    }, {\n        \"targetName\": \"四川\",\n        \"crewNums\": 38801,\n        \"rowNumber\": \"9\"\n    }, {\n        \"targetName\": \"重庆\",\n        \"crewNums\": 113961,\n        \"rowNumber\": \"6\"\n    }, {\n        \"targetName\": \"湖南\",\n        \"crewNums\": 54112,\n        \"rowNumber\": \"8\"\n    }, {\n        \"targetName\": \"湖北\",\n        \"crewNums\": 155393,\n        \"rowNumber\": \"4\"\n    }, {\n        \"targetName\": \"江西\",\n        \"crewNums\": 27825,\n        \"rowNumber\": \"11\"\n    }, {\n        \"targetName\": \"浙江\",\n        \"crewNums\": 129865,\n        \"rowNumber\": \"5\"\n    }, {\n        \"targetName\": \"安徽\",\n        \"crewNums\": 168630,\n        \"rowNumber\": \"3\"\n    }, {\n        \"targetName\": \"江苏\",\n        \"crewNums\": 272559,\n        \"rowNumber\": \"1\"\n    }, {\n        \"targetName\": \"上海\",\n        \"crewNums\": 90358,\n        \"rowNumber\": \"7\"\n    }, {\n        \"targetName\": \"陕西\",\n        \"crewNums\": 4219,\n        \"rowNumber\": \"14\"\n    }, {\n        \"targetName\": \"河南\",\n        \"crewNums\": 32927,\n        \"rowNumber\": \"10\"\n    }, {\n        \"targetName\": \"山东\",\n        \"crewNums\": 261422,\n        \"rowNumber\": \"2\"\n    }]\n}",
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
          "name" : "targetName",
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
          "name" : "crewNums",
          "value" : "13064",
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
          "name" : "rowNumber",
          "value" : "13",
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

var crewNumsSql = """
	    select n.*,m.row_number  from  
	(select REGEXP_REPLACE(b.target_name,'[省市]','') as target_name,b.target_val crew_nums  from dict_data.DICT_RIVER_PROVINCE a 
    left join dm_data.sts_basic_info b on a.item_name_cn = b.target_name
    where b.sts_code='112'
            and to_char(b.sts_date,'yyyy-MM-dd') = (select to_char(max(sts_date),'yyyy-MM-dd')
                                from dm_data.sts_basic_info
                                where sts_code = '112')
            order by a.orders )n
						
						left join (
						select REGEXP_REPLACE(b.target_name,'[省市]','') as target_name,b.target_val crew_nums ,
					Row_number ( ) over ( ORDER BY b.target_val  DESC ) AS row_number	
						
						from dict_data.DICT_RIVER_PROVINCE a 
    left join dm_data.sts_basic_info b on a.item_name_cn = b.target_name
    where b.sts_code='112'
            and to_char(b.sts_date,'yyyy-MM-dd') = (select to_char(max(sts_date),'yyyy-MM-dd')
                                from dm_data.sts_basic_info
                                where sts_code = '112')
                                )m  on m.target_name=n.target_name
"""


var crewNums =  db.dm_data.camel().select(crewNumsSql);

for(item in crewNums){
    item.put("crewNums",item.get("crewNums")::int);
}




return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: crewNums
});