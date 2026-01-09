{
  "properties" : { },
  "id" : "65d60d13b00a4a8cab1db7121a55639f",
  "script" : null,
  "groupId" : "3610e448459c4398b66ed3c1ac4c8b42",
  "name" : "船员年龄统计",
  "createTime" : null,
  "updateTime" : 1747100512157,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getCrewByAges",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"targetName\": \"小于18\",\n        \"crewNums\": 336\n    }, {\n        \"targetName\": \"18-20\",\n        \"crewNums\": 3833\n    }, {\n        \"targetName\": \"21-30\",\n        \"crewNums\": 39088\n    }, {\n        \"targetName\": \"31-40\",\n        \"crewNums\": 87394\n    }, {\n        \"targetName\": \"41-50\",\n        \"crewNums\": 77418\n    }, {\n        \"targetName\": \"51-60\",\n        \"crewNums\": 99230\n    }, {\n        \"targetName\": \"61-65\",\n        \"crewNums\": 13864\n    }, {\n        \"targetName\": \"大于65\",\n        \"crewNums\": 4074\n    }]\n}",
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
          "value" : "小于18",
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
          "value" : "336",
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
        where sts_code='84'
            and to_char(sts_date,'yyyy-MM-dd') = (select max(to_char(sts_date,'yyyy-MM-dd'))
                                from dm_data.sts_basic_info
                                where sts_code = '84')
"""


var crewNums =  db.dm_data.camel().select(crewNumsSql);

for(item in crewNums){
    item.put("crewNums",item.get("crewNums")::int);
}


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: crewNums
/*        result: [{
        "targetName": "小于18",
        "crewNums": 448
    }, {
        "targetName": "18-20",
        "crewNums": 4181
    }, {
        "targetName": "21-30",
        "crewNums": 38131
    }, {
        "targetName": "31-40",
        "crewNums": 86048
    }, {
        "targetName": "41-50",
        "crewNums": 76150
    }, {
        "targetName": "51-60",
        "crewNums": 99479
    }, {
        "targetName": "61-65",
        "crewNums": 15794
    }, {
        "targetName": "大于65",
        "crewNums": 4356
    }]*/
});