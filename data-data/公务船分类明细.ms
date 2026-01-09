{
  "properties" : { },
  "id" : "904f61f662a4401cbca2f9ad305e470d",
  "script" : null,
  "groupId" : "e4f5142bedb24c9bbc2981102d51e07a",
  "name" : "公务船分类明细",
  "createTime" : null,
  "updateTime" : 1751943984428,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getPublicServiceShip",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"shipType\": \"巡逻船\",\n        \"nums\": 302\n    }, {\n        \"shipType\": \"航标船\",\n        \"nums\": 134\n    }, {\n        \"shipType\": \"航道巡检船\",\n        \"nums\": 77\n    }, {\n        \"shipType\": \"挖泥船\",\n        \"nums\": 39\n    }, {\n        \"shipType\": \"测量船\",\n        \"nums\": 33\n    }, {\n        \"shipType\": \"引航船\",\n        \"nums\": 9\n    }, {\n        \"shipType\": \"特种船\",\n        \"nums\": 7\n    }, {\n        \"shipType\": \"其他\",\n        \"nums\": 55\n    }]\n}",
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
          "name" : "shipType",
          "value" : "巡逻船",
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
          "value" : "302",
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

var shipSql = """
 select *
   from (select ship_type, nums
           from (select ship_type_last ship_type, count(1) nums
                   from OFFICIAL_BOATS_INFO
                  group by ship_type_last)
          order by nums desc)
  order by (case
             when ship_type = '其他' then
              1
             else
              0
           end),
           nums desc
"""
 var ship = db.ods_data.camel().select(shipSql);
   for(item in ship){
    item.put("nums",item.get("nums")::int);
  }
return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: ship
});