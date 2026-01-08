{
  "properties" : { },
  "id" : "62e26a8467f744a298487a29754a8e95",
  "script" : null,
  "groupId" : "c32f4ba9bcd0426d8f54812d666acb18",
  "name" : "待闸船舶数量",
  "createTime" : null,
  "updateTime" : 1758269248391,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getWaitShipNum",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"total\": 591,\n    \"hxqy\": 144,\n    \"result\": {\n        \"bshx\": 61,\n        \"bsjb\": 78,\n        \"bskz\": 6,\n        \"bsdd\": 104,\n        \"bxhx\": 83,\n        \"bxjb\": 78,\n        \"bxkz\": 119,\n        \"bxdd\": 62,\n        \"bjhx\": 0\n    }\n}",
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
      "name" : "total",
      "value" : "591",
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
      "name" : "hxqy",
      "value" : "144",
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
        "name" : "bshx",
        "value" : "61",
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
        "name" : "bsjb",
        "value" : "78",
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
        "name" : "bskz",
        "value" : "6",
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
        "name" : "bsdd",
        "value" : "104",
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
        "name" : "bxhx",
        "value" : "83",
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
        "name" : "bxjb",
        "value" : "78",
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
        "name" : "bxkz",
        "value" : "119",
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
        "name" : "bxdd",
        "value" : "62",
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
        "name" : "bjhx",
        "value" : "0",
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
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;

import log;
import response;

//船舶数量
var shipNumSql_back = """
  select bshx, bsjb, bskz, bsdd, bxhx, bxjb, bxkz, bxdd, bjhx
    from ods_hs_share.changhang_shipwait
  where opertime =
        (select max(opertime) from ods_hs_share.changhang_shipwait)
"""

//船舶数量
var shipNumSql = """
     select nvl(bshx.shipnum,0) as bshx,
               nvl(bsjb.shipnum,0) as bsjb,
               nvl(bskz.shipnum,0) as bskz,
               nvl(bsdd.shipnum,0) as bsdd,
               nvl(bxhx.shipnum,0) as bxhx,
               nvl(bxjb.shipnum,0) as bxjb,
               nvl(bxkz.shipnum,0) as bxkz,
               nvl(bxdd.shipnum,0) as bxdd,
               nvl(bjhx.shipnum,0) as bjhx
          from ods_hs_share.sanxia_area_shipnum bshx
          left join ods_hs_share.sanxia_area_shipnum bsjb on bshx.import_time =
                                                             bsjb.import_time and bsjb.currentarea = 12
          left join ods_hs_share.sanxia_area_shipnum bskz on bshx.import_time =
                                                             bskz.import_time and bskz.currentarea = 13
          left join ods_hs_share.sanxia_area_shipnum bsdd on bshx.import_time =
                                                             bsdd.import_time and bsdd.currentarea = 14
          left join ods_hs_share.sanxia_area_shipnum bxhx on bshx.import_time =
                                                             bxhx.import_time and bxhx.currentarea = 31
          left join ods_hs_share.sanxia_area_shipnum bxjb on bshx.import_time =
                                                             bxjb.import_time  and bxjb.currentarea = 32
          left join ods_hs_share.sanxia_area_shipnum bxkz on bshx.import_time =
                                                             bxkz.import_time and bxkz.currentarea = 33
          left join ods_hs_share.sanxia_area_shipnum bxdd on bshx.import_time =
                                                             bxdd.import_time   and bxdd.currentarea = 34
          left join ods_hs_share.sanxia_area_shipnum bjhx on bshx.import_time =
                                                             bjhx.import_time   and bjhx.currentarea = 21
         where bshx.import_time =
               (select max(import_time)
                  from ods_hs_share.sanxia_area_shipnum)
           and bshx.currentarea = 11      
"""

var shipNum = db.ods_data.camel().selectOne(shipNumSql); 

shipNum.put("bshx",shipNum.get("bshx")::int);
shipNum.put("bsjb",shipNum.get("bsjb")::int);
shipNum.put("bskz",shipNum.get("bskz")::int);
shipNum.put("bsdd",shipNum.get("bsdd")::int);
shipNum.put("bxhx",shipNum.get("bxhx")::int);
shipNum.put("bxjb",shipNum.get("bxjb")::int);
shipNum.put("bxkz",shipNum.get("bxkz")::int);
shipNum.put("bxdd",shipNum.get("bxdd")::int);
shipNum.put("bjhx",shipNum.get("bjhx")::int);

var total=shipNum.get("bshx")::int+shipNum.get("bsjb")::int+shipNum.get("bskz")::int+shipNum.get("bsdd")::int
+shipNum.get("bxhx")::int+shipNum.get("bxjb")::int+shipNum.get("bxkz")::int+shipNum.get("bxdd")::int+shipNum.get("bjhx")::int

var hxqy = shipNum.get("bshx")::int+shipNum.get("bxhx")::int+shipNum.get("bjhx")::int

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        total: total,
        hxqy:hxqy,
        result: shipNum
});