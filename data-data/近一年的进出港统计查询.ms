{
  "properties" : { },
  "id" : "copy1696908416159d7985",
  "script" : null,
  "groupId" : "26b088cc467c4fc0a3f16fed3416308b",
  "name" : "近一年的进出港统计查询",
  "createTime" : null,
  "updateTime" : 1750670941443,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/oneYear",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1749602836455,\n    \"executeTime\": 2\n}",
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
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ {
      "name" : "code",
      "value" : "-1",
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
      "name" : "message",
      "value" : "系统内部出现错误",
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
      "name" : "data",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Object",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "timestamp",
      "value" : "1749602836455",
      "description" : "",
      "required" : false,
      "dataType" : "Long",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "executeTime",
      "value" : "2",
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
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;
//万艘次
var shipNumsSql = """
  select substr(sts_cycle,2,7) months,round(sum(ship_num)/10000,2) nums from sts_ship_eep_report_port
    where basin = '干线' and detail_basin = '长江' and sts_date_start >= add_months(trunc(sysdate,'MM'), -12) and sts_date_start < add_months(trunc(sysdate,'MM'), 0)
    group by substr(sts_cycle,2,7)
    order by months
"""
//亿吨
var cargoNumsSql = """
  select substr(sts_cycle,2,7) months,round(sum(port_cargo_num)/100000000,2) nums from sts_ship_eep_report_port
    where basin = '干线' and detail_basin = '长江' and sts_date_start >= add_months(trunc(sysdate,'MM'), -12) and sts_date_start < add_months(trunc(sysdate,'MM'), 0)
    group by substr(sts_cycle,2,7)
    order by months
"""
//万人次
var passengerNumsSql = """
  select substr(sts_cycle,2,7) months,round(sum(port_passenger_num)/10000,2) nums from sts_ship_eep_report_port
    where basin = '干线' and detail_basin = '长江' and sts_date_start >= add_months(trunc(sysdate,'MM'), -12) and sts_date_start < add_months(trunc(sysdate,'MM'), 0)
    group by substr(sts_cycle,2,7)
    order by months
"""


//进出港船舶艘次
var shipNums = async db.dm_data.camel().select(shipNumsSql);
var cargoNums = async db.dm_data.camel().select(cargoNumsSql);
var passengerNums = async db.dm_data.camel().select(passengerNumsSql);
for(item in shipNums.get()){
  item.put("nums",item.get("nums")::double);
  
}
for(item in cargoNums.get()){
  item.put("nums",item.get("nums")::double);
}
for(item in passengerNums.get()){
  item.put("nums",item.get("nums")::double);
}

var res = {};
res.put("shipNums",shipNums.get());
res.put("cargoNums",cargoNums.get());
res.put("passengerNums",passengerNums.get());

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
});