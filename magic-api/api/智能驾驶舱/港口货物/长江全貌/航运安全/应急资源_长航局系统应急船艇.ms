{
  "properties" : { },
  "id" : "9cc1021f9fab4e54b51e346b119ac66d",
  "script" : null,
  "groupId" : "f8cb5b13739f455397cc22a7ae910702",
  "name" : "应急资源_长航局系统应急船艇",
  "createTime" : null,
  "updateTime" : 1755569916814,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getChjEmergencyBoats",
  "method" : "GET",
  "parameters" : [ {
    "name" : "page",
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "Integer",
    "type" : "",
    "defaultValue" : "1",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "size",
    "value" : { },
    "description" : "",
    "required" : false,
    "dataType" : "Integer",
    "type" : "",
    "defaultValue" : "5",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"total\": 45,\n        \"list\": [{\n            \"id\": \"26\",\n            \"shipName\": \"长天龙\",\n            \"shipType\": \"起重船\",\n            \"shipModel\": \"打捞\",\n            \"specification\": \"1000吨\",\n            \"managementUnit\": \"武汉救捞局\",\n            \"contactPerson\": \"严海文\",\n            \"contactPhone\": \"13871463025\",\n            \"mmsi\": \"413831265\",\n            \"rowno\": \"1\"\n        }, {\n            \"id\": \"7\",\n            \"shipName\": \"海事01\",\n            \"shipType\": \"应急指挥船\",\n            \"shipModel\": \"海巡艇\",\n            \"specification\": \"65米\",\n            \"managementUnit\": \"武汉海事局\",\n            \"contactPerson\": \"宋新传\",\n            \"contactPhone\": \"15623991315\",\n            \"mmsi\": \"413864944\",\n            \"rowno\": \"2\"\n        }, {\n            \"id\": \"40\",\n            \"shipName\": \"长江口拖\",\n            \"shipType\": \"拖轮\",\n            \"shipModel\": \"拖轮\",\n            \"specification\": \"4000匹马力\",\n            \"managementUnit\": \"长江口航道管理局\",\n            \"contactPerson\": \"朱剑飞\",\n            \"contactPhone\": \"13801656329\",\n            \"mmsi\": \"412380630\",\n            \"rowno\": \"3\"\n        }, {\n            \"id\": \"16\",\n            \"shipName\": \"海巡0693\",\n            \"shipType\": \"应急指挥船\",\n            \"shipModel\": \"海巡艇\",\n            \"specification\": \"47.3\",\n            \"managementUnit\": \"南通海事局\",\n            \"contactPerson\": \"王锴梁\",\n            \"contactPhone\": \"15851206766\",\n            \"mmsi\": \"413246070\",\n            \"rowno\": \"4\"\n        }, {\n            \"id\": \"17\",\n            \"shipName\": \"苏海01\",\n            \"shipType\": \"拖轮\",\n            \"shipModel\": \"多用途大马力拖轮\",\n            \"specification\": \"12000匹马力\",\n            \"managementUnit\": \"南通海事局\",\n            \"contactPerson\": \"王锴梁\",\n            \"contactPhone\": \"15851206766\",\n            \"mmsi\": \"413310590\",\n            \"rowno\": \"5\"\n        }]\n    }\n}",
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
      "name" : "data",
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
        "name" : "total",
        "value" : "45",
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
        "name" : "list",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
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
            "name" : "id",
            "value" : "26",
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
            "name" : "shipName",
            "value" : "长天龙",
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
            "name" : "shipType",
            "value" : "起重船",
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
            "name" : "shipModel",
            "value" : "打捞",
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
            "name" : "specification",
            "value" : "1000吨",
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
            "name" : "managementUnit",
            "value" : "武汉救捞局",
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
            "name" : "contactPerson",
            "value" : "严海文",
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
            "name" : "contactPhone",
            "value" : "13871463025",
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
            "name" : "mmsi",
            "value" : "413831265",
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
            "name" : "rowno",
            "value" : "1",
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
    } ]
  }
}
================================
import response;

/*
var sql = """
SELECT
	id,
	ship_name,
	ship_type,
	ship_model,
	specification,
	management_unit,
	contact_person,
	contact_phone 
FROM
	bds_ods.ods_yj_emergency_boats 
ORDER BY
	id
"""
*/

var totalSql = """
select count(1) from ods_yj_emergency_boats
"""
/*
var sql ="""
select t1.* from 
(select t.*,rownum rowno from   
  (SELECT
    id,
    ship_name,
    ship_type,
    ship_model,
    specification,
    management_unit,
    contact_person,
    contact_phone
  FROM
    ods_yj_emergency_boats
  ORDER BY (case
    when ship_name = '海事01'
    or ship_name = '长天龙' then 0
    else 1
  end),
  id asc)t where rownum<=(#{page}*#{size}))t1
  where t1.rowno>((#{page}-1)* #{size})
"""
*/
var sql = """
select t1.* from 
(select t.*,rownum rowno from   
  (select  a.id,
    a.ship_name,
    a.ship_type,
    a.ship_model,
    a.specification,
    a.management_unit,
    a.contact_person,
    a.contact_phone, 
    b.mmsi from ods_yj_emergency_boats a left join 
    (select * from bds_base_data.sc_ship_basic_Data  
    where delete_flag='0' and status_flag='1' and ship_id is not null)b on a.ship_name=b.ship_name_cn  
    ORDER BY (case
    when a.ship_name = '海事01'
    or a.ship_name = '长天龙' then 0
    else 1
  end),id asc)t where rownum<=(#{page}*#{size}))t1
  where t1.rowno>((#{page}-1)* #{size})
"""

var total = db.ods_data.camel().selectInt(totalSql);
var list = db.ods_data.camel().select(sql);

var back = {
  "total":total,
  "list":list 
};

import response;
return response.json({
          resultCode: 200,
          resultMsg: "查询成功",
          data: back
  });