{
  "properties" : { },
  "id" : "copy1696900780537d55052",
  "script" : null,
  "groupId" : "26b088cc467c4fc0a3f16fed3416308b",
  "name" : "自年初累计的进出港统计查询",
  "createTime" : null,
  "updateTime" : 1749108936663,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/sinceBeginYear",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"shipNums\": 169.86,\n        \"unit\": \"万艘次\"\n    }, {\n        \"cargoNums\": 20.08,\n        \"unit\": \"亿吨\"\n    }, {\n        \"passengerNums\": 964.17,\n        \"unit\": \"万人次\"\n    }]\n}",
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
    "dataType" : "String",
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
          "name" : "shipNums",
          "value" : "169.86",
          "description" : "",
          "required" : false,
          "dataType" : "Double",
          "type" : null,
          "defaultValue" : "",
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "unit",
          "value" : "万艘次",
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

/*
var shipNumsSql = """
select case when nums < 10000 then nums
            when nums <100000000 and nums >=10000 then round(nums/10000,2)
            else round(nums/100000000,2) end nums,
        case when nums < 10000 then '艘次'
            when nums <100000000 and nums >=10000 then '万艘次'
            else '亿艘次' end unit
  from(
  select nvl(sum(ship_num),0) nums from sts_ship_eep_report_port
    where basin = '干线' and detail_basin = '长江' and sts_date_start >= trunc(sysdate, 'YYYY'))
"""
*/
var shipNumsSql = """
select case
         when nums < 10000 then
          nums
         when nums < 100000000 and nums >= 10000 then
          round(nums / 10000, 2)
         else
          round(nums / 100000000, 2)
       end nums,
       case
         when nums < 10000 then
          '艘次'
         when nums < 100000000 and nums >= 10000 then
          '万艘次'
         else
          '亿艘次'
       end unit
  from (select target_val nums
          from dm_data.STS_INDICATORS_JSC
         where sts_code = '04'
           and sts_date = (select max(sts_date)
                             from dm_data.STS_INDICATORS_JSC
                            where sts_code = '04'))
"""
/*
var cargoNumsSql = """
select case when nums < 10000 then nums
            when nums <100000000 and nums >=10000 then round(nums/10000,2)
            else round(nums/100000000,2) end nums,
        case when nums < 10000 then '吨'
            when nums <100000000 and nums >=10000 then '万吨'
            else '亿吨' end unit
  from(
  select sum(port_cargo_num) nums from sts_ship_eep_report_port
    where basin = '干线' and detail_basin = '长江' and sts_date_start >= trunc(sysdate, 'YYYY'))
"""
*/
var cargoNumsSql = """
select case
         when nums < 10000 then
          nums
         when nums < 100000000 and nums >= 10000 then
          round(nums / 10000, 2)
         else
          round(nums / 100000000, 2)
       end nums,
       case
         when nums < 10000 then
          '吨'
         when nums < 100000000 and nums >= 10000 then
          '万吨'
         else
          '亿吨'
       end unit
  from (select target_val nums
          from dm_data.STS_INDICATORS_JSC
         where sts_code = '03'
           and sts_date = (select max(sts_date)
                             from dm_data.STS_INDICATORS_JSC
                            where sts_code = '03'))

"""
/*
var passengerNumsSql = """
select case when nums < 10000 then nums
            when nums <100000000 and nums >=10000 then round(nums/10000,2)
            else round(nums/100000000,2) end nums,
        case when nums < 10000 then '人次'
            when nums <100000000 and nums >=10000 then '万人次'
            else '亿人次' end unit
  from(
  select sum(port_passenger_num) nums from sts_ship_eep_report_port
    where basin = '干线' and detail_basin = '长江' and sts_date_start >= trunc(sysdate, 'YYYY'))
"""
*/
var passengerNumsSql = """
select case
         when nums < 10000 then
          nums
         when nums < 100000000 and nums >= 10000 then
          round(nums / 10000, 2)
         else
          round(nums / 100000000, 2)
       end nums,
       case
         when nums < 10000 then
          '人次'
         when nums < 100000000 and nums >= 10000 then
          '万人次'
         else
          '亿人次'
       end unit
  from (select target_val nums
          from dm_data.STS_INDICATORS_JSC
         where sts_code = '05'
           and sts_date = (select max(sts_date)
                             from dm_data.STS_INDICATORS_JSC
                            where sts_code = '05'))
"""

//进出港船舶艘次
var shipNums = async db.dm_data.camel().selectOne(shipNumsSql);
var cargoNums = async db.dm_data.camel().selectOne(cargoNumsSql);
var passengerNums = async db.dm_data.camel().selectOne(passengerNumsSql);

var res = [];
res.add({"shipNums":shipNums.get().get("nums")::double,"unit":shipNums.get().get("unit")});
res.add({"cargoNums":cargoNums.get().get("nums")::double,"unit":cargoNums.get().get("unit")});
res.add({"passengerNums":passengerNums.get().get("nums")::double,"unit":passengerNums.get().get("unit")});


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
});