{
  "properties" : { },
  "id" : "e2659f292edb48a481cceab7c0e4fea0",
  "script" : null,
  "groupId" : "c32f4ba9bcd0426d8f54812d666acb18",
  "name" : "获取三峡当日待闸船舶",
  "createTime" : null,
  "updateTime" : 1709886945165,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getSxWaitForGate",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"shipUp\": 538,\n        \"shipDown\": 661\n    }\n}",
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
        "name" : "shipUp",
        "value" : "538",
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
        "name" : "shipDown",
        "value" : "661",
        "description" : "",
        "required" : false,
        "dataType" : "Integer",
        "type" : null,
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

//上行待闸船舶
var shipUp = """
  --select count(*)  from ods_hs_share.sanxia_plan where direction=1 and plan_start_time >= TRUNC(SYSDATE, 'DAY') 

 select bxhx+bxjb+bxkz+bxdd
    from ods_hs_share.changhang_shipwait
  where opertime =
        (select max(opertime) from ods_hs_share.changhang_shipwait)

"""

//下行待闸船舶
var shipDown = """
  --select count(*)  from ods_hs_share.sanxia_plan where direction=2 and plan_start_time >= TRUNC(SYSDATE, 'DAY') 
   select bshx+bsjb+bskz+bsdd
    from ods_hs_share.changhang_shipwait
  where opertime =
        (select max(opertime) from ods_hs_share.changhang_shipwait)
"""


var Up =  db.ods_data.camel().selectInt(shipUp);
var Down =  db.ods_data.camel().selectInt(shipDown); 

log.info("shipup111111"+Up);

var res = {}
res.put("shipUp",Up);
res.put("shipDown",Down);


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
});