{
  "properties" : { },
  "id" : "52541d3f7a4c48eab08fd42ef56dbbe9",
  "script" : null,
  "groupId" : "3610e448459c4398b66ed3c1ac4c8b42",
  "name" : "船员性别统计",
  "createTime" : null,
  "updateTime" : 1747100462593,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "getCrewBySex",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"targetName\": \"男\",\n        \"crewNums\": 51056\n    }, {\n        \"targetName\": \"女\",\n        \"crewNums\": 12587\n    }]\n}",
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
          "value" : "男",
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
          "value" : "51056",
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

var crewNumsSql = """
    select target_name,target_val crew_nums 
        from dm_data.sts_basic_info 
        where sts_code='85'
            and to_char(sts_date,'yyyy-MM-dd') = (select max(to_char(sts_date,'yyyy-MM-dd'))
                                from dm_data.sts_basic_info
                                where sts_code = '85')
"""


var crewNums =  db.dm_data.camel().select(crewNumsSql);

for(item in crewNums){
    item.put("crewNums",item.get("crewNums")::int);
}


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: crewNums
 /*       result:[{
        "targetName": "男",
        "crewNums": 268754
    }, {
        "targetName": "女",
        "crewNums": 55833
    }]*/
});