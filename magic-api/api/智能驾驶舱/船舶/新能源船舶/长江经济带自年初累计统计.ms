{
  "properties" : { },
  "id" : "07ab12a3ad6c463c8ef1e7cf6eb23b60",
  "script" : null,
  "groupId" : "8cfab9687d1a495288b389b5545384b5",
  "name" : "长江经济带自年初累计统计",
  "createTime" : null,
  "updateTime" : 1742954212631,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/sinceYearByProvince",
  "method" : "GET",
  "parameters" : [ {
    "name" : "provinceName",
    "value" : "上海",
    "description" : "",
    "required" : true,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"indexSecName\": \"碳减排量\",\n        \"indexValues\": 96.163\n    }, {\n        \"indexSecName\": \"节约燃油\",\n        \"indexValues\": 29.99\n    }, {\n        \"indexSecName\": \"累计航行里程\",\n        \"indexValues\": 15382.814\n    }]\n}",
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
          "name" : "indexSecName",
          "value" : "碳减排量",
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
          "value" : "96.163",
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
    select index_sec_name, index_values
        from dm_data.NEW_ENERGY_SHIP
        where code = '5' 
        and index_name = #{provinceName}
        ORDER BY index_sec_code
"""*/
/*
var sql = """

select nvl(sum(carbon_em_re),0) carbon_em_re,
       round(nvl(sum(carbon_em_re),0)/3.206,2) saving_oil,
       nvl(sum(mileage),0) mileage
  from dm_data.NEW_ENERGY_SHIP_CJGX a
 inner join dict_data.D_CB_HOME_PORT b
    on a.ship_regport = b.item_name_cn
 inner join dm_data.NEW_ENERGY_SHIP_MONTH_TJ c
    on a.ship_id = c.ship_id
 where replace(replace(b.province_name, '省', ''), '市', '') = #{provinceName}
*/
var sql = """
select nvl(round(sum(a.carbon_reduction) / 1000, 3),0) as carbon_em_re,
       nvl(round(nvl(sum(a.carbon_reduction), 0) / 1000 / 3.206, 2),0) saving_oil,
       nvl(sum(a.accumulative_mileage),0) mileage
  from dm_data.e_battery_ship_stats a
 inner join ods_hs_Share.Dc_Battery_Ship b
    on a.ship_id = b.ship_id
 where 
   replace(replace(b.ship_area, '省', ''), '市', '')=#{provinceName}
   and a.version = '1'
   and b.version = '1' 
"""
var map = db.dm_data.camel().selectOne(sql);
var list = []
list.add({"indexSecName": "碳减排量","indexValues": map.get("carbonEmRe")::double});
list.add({"indexSecName": "节约燃油","indexValues": map.get("savingOil")::double});
list.add({"indexSecName": "累计航行里程","indexValues": map.get("mileage")::double});

return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: list 
}); 