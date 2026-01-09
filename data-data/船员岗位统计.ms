{
  "properties" : { },
  "id" : "1560acb0811c4c0c9f0418b6cb6be522",
  "script" : null,
  "groupId" : "3610e448459c4398b66ed3c1ac4c8b42",
  "name" : "船员岗位统计",
  "createTime" : null,
  "updateTime" : 1756012348962,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getCrewByJob",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"targetName\": \"驾驶\",\n        \"crewNums\": 163581\n    }, {\n        \"targetName\": \"其他\",\n        \"crewNums\": 53661\n    }, {\n        \"targetName\": \"通信\",\n        \"crewNums\": 26\n    }, {\n        \"targetName\": \"轮机\",\n        \"crewNums\": 114235\n    }]\n}",
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
          "value" : "驾驶",
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
          "value" : "163581",
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
        where sts_code='86'
            and to_char(sts_date,'yyyy-MM-dd') = (select max(to_char(sts_date,'yyyy-MM-dd'))
                                from dm_data.sts_basic_info
                                where sts_code = '86')
"""
/*
var crewNumsSql = """
   select target_name,sum(crew_nums) crew_nums from
   (select case when target_name='通信' then '其他'
   else target_name end target_name,crew_nums
   from
      (select target_name,target_val crew_nums 
        from dm_data.sts_basic_info 
        where sts_code='86'
            and to_char(sts_date,'yyyy-MM-dd') = (select max(to_char(sts_date,'yyyy-MM-dd'))
                                from dm_data.sts_basic_info
                                where sts_code = '86')))
                                group by target_name
"""
*/
var crewNums =  db.dm_data.camel().select(crewNumsSql);

for(item in crewNums){
    item.put("crewNums",item.get("crewNums")::int);
}


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: crewNums
/*        result: [{
        "targetName": "驾驶",
        "crewNums": 159612
    }, {
        "targetName": "其他",
        "crewNums": 53200
    }, {
        "targetName": "通信",
        "crewNums": 29
    }, {
        "targetName": "轮机",
        "crewNums": 111846
    }]*/
});