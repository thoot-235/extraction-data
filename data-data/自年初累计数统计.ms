{
  "properties" : { },
  "id" : "53868ca756dd4f5aabee98bad35c9877",
  "script" : null,
  "groupId" : "8cfab9687d1a495288b389b5545384b5",
  "name" : "自年初累计数统计",
  "createTime" : null,
  "updateTime" : 1742954290273,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/sinceYear",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"indexName\": \"自年初累计里程\",\n        \"indexValues\": 15712.494\n    }, {\n        \"indexName\": \"自年初累计碳减排\",\n        \"indexValues\": 104.648\n    }, {\n        \"indexName\": \"自年初累计总能耗\",\n        \"indexValues\": 0.653\n    }]\n}",
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
          "name" : "indexName",
          "value" : "自年初累计里程",
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
          "name" : "indexValues",
          "value" : "15712.494",
          "description" : "",
          "required" : false,
          "dataType" : "Double",
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
import response;
/*
var sql = """
    select index_name, index_values
      from dm_data.NEW_ENERGY_SHIP
     where code = '1'
       and ANALYSIS_TIME = (select max(ANALYSIS_TIME)
                              from dm_data.NEW_ENERGY_SHIP
                             where code = '1')
"""*/

var sql = """
/*    select nvl(sum(carbon_em_re),0) as  carbon_em_re,
        nvl(sum(energy_consum),0) as  energy_consum,
        nvl(sum(mileage),0) as  mileage
    from dm_data.NEW_ENERGY_SHIP_MONTH_TJ
    where ym >= to_char(trunc(sysdate, 'yyyy'), 'yyyyMM')
    */
    select nvl(round(sum(carbon_reduction)/1000,3),0) as carbon_em_re,
nvl(round(sum(energy_consumption)/1000000,3),0) as energy_consum,
nvl(sum(accumulative_mileage),0) as mileage  from e_battery_ship_stats where version='1'
"""
var map = db.dm_data.camel().selectOne(sql);
var list = []
list.add({"indexName": "自年初累计里程","indexValues": map.get("mileage")::double});
list.add({"indexName": "自年初累计碳减排","indexValues": map.get("carbonEmRe")::double});
list.add({"indexName": "自年初累计总能耗","indexValues": map.get("energyConsum")::double});

return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: list 
}); 