{
  "properties" : { },
  "id" : "e7859f33ad6c4a6fa9b22eb53ff5ab0f",
  "script" : null,
  "groupId" : "8cfab9687d1a495288b389b5545384b5",
  "name" : "总能耗",
  "createTime" : null,
  "updateTime" : 1741848751028,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/totalEnergyConsum",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"indexCode\": \"2025-01\",\n        \"indexValues\": 0.114\n    }, {\n        \"indexCode\": \"2025-02\",\n        \"indexValues\": 0.348\n    }, {\n        \"indexCode\": \"2025-03\",\n        \"indexValues\": 0.191\n    }, {\n        \"indexCode\": \"2025-04\",\n        \"indexValues\": 0.0\n    }, {\n        \"indexCode\": \"2025-05\",\n        \"indexValues\": 0.0\n    }, {\n        \"indexCode\": \"2025-06\",\n        \"indexValues\": 0.0\n    }, {\n        \"indexCode\": \"2025-07\",\n        \"indexValues\": 0.0\n    }, {\n        \"indexCode\": \"2025-08\",\n        \"indexValues\": 0.0\n    }, {\n        \"indexCode\": \"2025-09\",\n        \"indexValues\": 0.0\n    }, {\n        \"indexCode\": \"2025-10\",\n        \"indexValues\": 0.0\n    }, {\n        \"indexCode\": \"2025-11\",\n        \"indexValues\": 0.0\n    }, {\n        \"indexCode\": \"2025-12\",\n        \"indexValues\": 0.0\n    }]\n}",
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
      "defaultValue" : null,
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
      "defaultValue" : null,
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
          "name" : "indexCode",
          "value" : "2025-01",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : null,
          "defaultValue" : null,
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "indexValues",
          "value" : "0.114",
          "description" : "",
          "required" : false,
          "dataType" : "Double",
          "type" : null,
          "defaultValue" : null,
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
        where code = '2'
        AND index_code >= to_char(trunc(sysdate, 'YYYY'), 'YYYY-MM')
        ORDER BY index_code
"""*/
/*
var sql = """
select a.index_code, nvl(b.energy_consum, 0) as index_values
  from (SELECT TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE, 'YEAR'), level - 1),
                       'yyyy-MM') as ym,
               TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE, 'YEAR'), level - 1),
                       'yyyy-MM') as index_code
          from dual
        connect by level <= extract(month from sysdate) -
                   extract(month from trunc(sysdate, 'YEAR'))) a
  left join (SELECT substr(sts_date,0,7) YM, 
               nvl(round(sum(energy_consumption)/1000000,3),0)  energy_consum
               FROM dm_data.e_battery_ship_stats
              where substr(sts_date,0,7) >= to_char(trunc(sysdate, 'yyyy'), 'yyyy-MM') 
              and version='1' 
              group by substr(sts_date,0,7)) b
    on a.ym = b.ym
 order by a.ym
"""
*/
var sql = """
select a.index_code, nvl(b.energy_consum, 0) as index_values
  from (SELECT TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE, 'YEAR'), level - 1),
                       'yyyy-MM') as ym,
               TO_CHAR(ADD_MONTHS(TRUNC(SYSDATE, 'YEAR'), level - 1),
                       'yyyy-MM') as index_code
          from dual
        connect by level <= 12) a
  left join (SELECT substr(sts_date,0,7) YM, 
               nvl(round(sum(energy_consumption)/1000000,3),0)  energy_consum
               FROM dm_data.e_battery_ship_stats
              where substr(sts_date,0,7) >= to_char(trunc(sysdate, 'yyyy'), 'yyyy-MM') 
              and version='1' 
              group by substr(sts_date,0,7)) b
    on a.ym = b.ym
 order by a.ym
"""
var list = db.dm_data.camel().select(sql);
for(item in list){
    item.put("indexValues",item.get("indexValues")::double)
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: list 
}); 