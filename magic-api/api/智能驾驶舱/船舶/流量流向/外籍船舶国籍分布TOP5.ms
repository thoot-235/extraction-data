{
  "properties" : { },
  "id" : "172f33d198974d6fa9cdfe0e8e7fc72d",
  "script" : null,
  "groupId" : "ee26923e30094e23bd55337d62b5f351",
  "name" : "外籍船舶国籍分布TOP5",
  "createTime" : null,
  "updateTime" : 1705289032639,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getShipnumsByForeign",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"data\": [{\n            \"nationName\": \"巴拿马\",\n            \"shipNums\": 1989\n        }, {\n            \"nationName\": \"利比里亚\",\n            \"shipNums\": 1151\n        }, {\n            \"nationName\": \"马绍尔群岛\",\n            \"shipNums\": 884\n        }, {\n            \"nationName\": \"新加坡\",\n            \"shipNums\": 572\n        }, {\n            \"nationName\": \"韩国\",\n            \"shipNums\": 288\n        }],\n        \"tjTime\": 2023\n    }\n}",
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
            "name" : "nationName",
            "value" : "巴拿马",
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
            "value" : "1989",
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
select * from (
    select --nation_code, 
    nation_name, count(1) ship_nums
        from sub_biz_data.SHP_BASIC_REPORT_INFO_OD
        where year = (select max(year) from sub_biz_data.SHP_BASIC_REPORT_INFO_OD)
            and valid = '1'
            and ship_region_type = '1'
            and nation_code not in ('125', '275', '625')
        group by nation_code, nation_name
        order by ship_nums desc) where rownum <= 5
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