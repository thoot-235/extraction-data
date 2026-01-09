{
  "properties" : { },
  "id" : "fe84fb3c9dde44d89a8ef9680b8f5597",
  "script" : null,
  "groupId" : "8cfab9687d1a495288b389b5545384b5",
  "name" : "航行里程",
  "createTime" : null,
  "updateTime" : 1747971295738,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/navigationMiles",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"indexCode\": \"2025-01\",\n        \"indexValues\": 12333.447\n    }, {\n        \"indexCode\": \"2025-02\",\n        \"indexValues\": 1800.715\n    }]\n}",
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
          "name" : "indexCode",
          "value" : "2025-01",
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
          "value" : "12333.447",
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
    select index_code, index_values
        from dm_data.NEW_ENERGY_SHIP
        where code = '3'
        AND index_code >= to_char(trunc(sysdate, 'YYYY'), 'YYYY-MM')
        ORDER BY index_code
"""*/
/*
var sql = """
select a.index_code, nvl(b.mileage, 0) as index_values
  from (SELECT TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE, 'YEAR'), level - 1),
                       'yyyyMM') as ym,
               TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE, 'YEAR'), level - 1),
                       'yyyy-MM') as index_code
          from dual
        connect by level <= extract(month from sysdate) -
                   extract(month from trunc(sysdate, 'YEAR'))) a
  left join (SELECT YM, SUM(mileage) mileage
               FROM dm_data.NEW_ENERGY_SHIP_MONTH_TJ
              where ym >= to_char(trunc(sysdate, 'yyyy'), 'yyyyMM')
              group by YM) b
    on a.ym = b.ym
 order by a.ym
"""
*/
/*
var sql = """
select a.index_code, nvl(b.mileage, 0) as index_values
  from (SELECT TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE, 'YEAR'), level - 1),
                       'yyyy-MM') as ym,
               TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE, 'YEAR'), level - 1),
                       'yyyy-MM') as index_code
          from dual
        connect by level <= extract(month from sysdate) -
                   extract(month from trunc(sysdate, 'YEAR'))) a
  left join ( SELECT substr(sts_date,0,7) YM, SUM(accumulative_mileage ) mileage
               FROM dm_data.e_battery_ship_stats
              where substr(sts_date,0,7) >= to_char(trunc(sysdate, 'yyyy'), 'yyyy-MM') 
              and version='1'
              group by substr(sts_date,0,7) ) b
    on a.ym = b.ym
 order by a.ym
"""
*/
var sql = """
select a.index_code, nvl(b.mileage, 0) as index_values
  from (SELECT TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE, 'YEAR'), level - 1),
                       'yyyy-MM') as ym,
               TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE, 'YEAR'), level - 1),
                       'yyyy-MM') as index_code
          from dual
        connect by level <= 12) a
  left join ( SELECT substr(sts_date,0,7) YM, SUM(accumulative_mileage ) mileage
               FROM dm_data.e_battery_ship_stats
              where substr(sts_date,0,7) >= to_char(trunc(sysdate, 'yyyy'), 'yyyy-MM') 
              and version='1'
              group by substr(sts_date,0,7) ) b
    on a.ym = b.ym
 order by a.ym
"""
var list = db.dm_data.camel().select(sql);
for(item in list){
    item.put("indexValues",item.get("indexValues")::double)
}

var temp = [{
        "indexCode": "2024-01",
        "indexValues": 690.00
    }, {
        "indexCode": "2024-02",
        "indexValues": 558.32
    }, {
        "indexCode": "2024-03",
        "indexValues": 1759.68
    }, {
        "indexCode": "2024-04",
        "indexValues": 2658.05
    }, {
        "indexCode": "2024-05",
        "indexValues": 2619.12
    }, {
        "indexCode": "2024-06",
        "indexValues": 1941.86
    }, {
        "indexCode": "2024-07",
        "indexValues": 578.68
    }, {
        "indexCode": "2024-08",
        "indexValues": 1743.89
    }, {
        "indexCode": "2024-09",
        "indexValues": 1117.57
    }, {
        "indexCode": "2024-10",
        "indexValues": 3101.45
    }]
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: list 
//  data:temp
}); 