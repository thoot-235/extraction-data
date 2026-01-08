{
  "properties" : { },
  "id" : "f8302c7cef7e4e9ab8686cf464b35670",
  "script" : null,
  "groupId" : "c32f4ba9bcd0426d8f54812d666acb18",
  "name" : "三峡过闸船舶数量",
  "createTime" : null,
  "updateTime" : 1749105256568,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getSxShipapplyNums",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"shipNums\": 17569,\n        \"shipNum\": 564,\n        \"cargoNum\": 6884\n    }\n}",
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
        "name" : "shipNums",
        "value" : "17569",
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
        "name" : "shipNum",
        "value" : "564",
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
        "name" : "cargoNum",
        "value" : "6884",
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

//船舶艘次
/*
var shipNumsSql = """
  select count(1) from ods_hs_share.changhang_shipapply where notice_gotime >= trunc(sysdate, 'YYYY')
"""*/

//船舶数(艘次)
var shipNumsSql = """
select sum(t.ship_count) ship_num
  from ods_hs_share.changhang_passstat t
 where t.damgate_id in ('1', '2', '32')
   and statyear = to_char(sysdate, 'yyyy')
"""
//船舶数量

var shipNumSql = """
/*  select count(distinct ship_name) from ods_hs_share.changhang_shipapply where notice_gotime >= trunc(sysdate, 'YYYY')*/
select sum(shipnum) from  ods_hs_share.sanxia_area_shipnum where import_time =(select max(import_time) from ods_hs_share.sanxia_area_shipnum) 
"""



//货物通过量
/*
var cargoNumsSql = """
select 
               to_char(sum(b.carry_weight) / 10000, 'FM9999999990.00') nums from
           ods_hs_share.changhang_passstat b
         where b.statyear = extract(YEAR from sysdate)

"""
*/
//过闸货物通过量
var cargoNumsSql = """
select round(sum(t.carry_weight)/10000,0) nums
  from ods_hs_share.changhang_passstat t
 where t.damgate_id in ('1', '2', '32')
   and statyear = to_char(sysdate, 'yyyy')
"""

var cargoNums = async db.ods_data.camel().selectOne(cargoNumsSql);

var shipNums = async db.ods_data.camel().selectInt(shipNumsSql);
var shipNum = async db.ods_data.camel().selectInt(shipNumSql); 

var res = {}
res.put("shipNums",shipNums.get());
res.put("shipNum",shipNum.get());
res.put("cargoNum",cargoNums.get().get("nums")::int);

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
});