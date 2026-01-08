{
  "properties" : { },
  "id" : "b2b4c4eb508e4ad6adb998d2bfe663c7",
  "script" : null,
  "groupId" : "c32f4ba9bcd0426d8f54812d666acb18",
  "name" : "近7日过闸船舶",
  "createTime" : null,
  "updateTime" : 1750210893371,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getSevenShipapplyNums",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"days\": \"06-11\",\n        \"nums\": 384\n    }, {\n        \"days\": \"06-12\",\n        \"nums\": 357\n    }, {\n        \"days\": \"06-13\",\n        \"nums\": 265\n    }, {\n        \"days\": \"06-14\",\n        \"nums\": 324\n    }, {\n        \"days\": \"06-15\",\n        \"nums\": 399\n    }, {\n        \"days\": \"06-16\",\n        \"nums\": 306\n    }, {\n        \"days\": \"06-17\",\n        \"nums\": 0\n    }]\n}",
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
    "type" : null,
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
    }, {
      "name" : "result",
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
          "name" : "days",
          "value" : "06-11",
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
          "name" : "nums",
          "value" : "384",
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
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;

//船舶艘次
var shipNumsSql = """
    select   TO_CHAR(TO_DATE(c.days, 'yyyy-MM-dd'),'MM-dd') days, count(c.ship_name) nums
      from (select to_char(a.days, 'yyyy-MM-dd') days, b.ship_name ship_name
              from (select trunc(sysdate) - level as days
                      from dual
                    connect by level <= 7) a
              left join ods_hs_share.changhang_shipapply b on a.days =
                                                              trunc(b.notice_gotime)) c
     group by c.days
     order by c.days
"""
//船舶艘数
//var shipNumSql = """
//  select c.days, count(distinct c.ship_name) nums from (
//    select to_char(a.days, 'yyyy-MM-dd') days, b.ship_name ship_name from (
//      select trunc(sysdate) - level as days from dual
//      connect by level <=7) a left join
//      ods_hs_share.changhang_shipapply b on a.days = trunc(b.notice_gotime)
//    ) c group by c.days order by c.days
//"""

var shipNums =  db.ods_data.camel().select(shipNumsSql);
//var shipNum = async db.ods_data.camel().select(shipNumSql);

//var res = {}
//res.put("shipNums",shipNums);
//res.put("shipNum",shipNum.get());

for(item in shipNums){
  item.put("nums",item.get("nums")::int)
}

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: shipNums
});