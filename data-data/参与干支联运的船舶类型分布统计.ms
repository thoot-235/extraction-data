{
  "properties" : { },
  "id" : "3e31955070d6460cb97faaf958c9fafd",
  "script" : null,
  "groupId" : "ee26923e30094e23bd55337d62b5f351",
  "name" : "参与干支联运的船舶类型分布统计",
  "createTime" : null,
  "updateTime" : 1704627111104,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getShipTypeByGzly",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"data\": [{\n            \"targetName\": \"干散货船\",\n            \"shipNums\": 41401\n        }, {\n            \"targetName\": \"其它普货船\",\n            \"shipNums\": 3298\n        }, {\n            \"targetName\": \"液货船\",\n            \"shipNums\": 1964\n        }, {\n            \"targetName\": \"集装箱船\",\n            \"shipNums\": 182\n        }],\n        \"tjTime\": 2023\n    }\n}",
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
        "name" : "data",
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
            "value" : "干散货船",
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
            "name" : "shipNums",
            "value" : "41401",
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
      }, {
        "name" : "tjTime",
        "value" : "2023",
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
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;


//船舶数量
var shipNumsSql = """
    select target_name, target_val ship_nums
        from dm_data.sts_basic_info
        where sts_code = '71'
            and target_class = to_char(trunc(sysdate, 'year') - 1, 'yyyy')
        order by target_val desc
"""
//统计时间
var tjTimeSql = """
    select to_char(sysdate,'yyyy')-1 from dual
"""
var shipNums = async db.dm_data.camel().select(shipNumsSql);
var tjTime = async db.dm_data.camel().selectInt(tjTimeSql);
for(item in shipNums.get()){
    item.put("shipNums",item.get("shipNums")::int);
}
var data = {};
data.put("data",shipNums.get());
data.put("tjTime", tjTime.get());

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: data
});