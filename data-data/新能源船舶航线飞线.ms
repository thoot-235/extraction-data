{
  "properties" : { },
  "id" : "6aeac1c9f49749b2ab23c4e77d0167ef",
  "script" : null,
  "groupId" : "8cfab9687d1a495288b389b5545384b5",
  "name" : "新能源船舶航线飞线",
  "createTime" : null,
  "updateTime" : 1753952692022,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/airline",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"portO\": \"镇江\",\n        \"portD\": \"芜湖\"\n    }, {\n        \"portO\": \"镇江\",\n        \"portD\": \"南京\"\n    }, {\n        \"portO\": \"镇江\",\n        \"portD\": \"镇江\"\n    }, {\n        \"portO\": \"镇江\",\n        \"portD\": \"扬州\"\n    }, {\n        \"portO\": \"镇江\",\n        \"portD\": \"南通\"\n    }, {\n        \"portO\": \"镇江\",\n        \"portD\": \"上海\"\n    }, {\n        \"portO\": \"黄石\",\n        \"portD\": \"武汉\"\n    }, {\n        \"portO\": \"扬州\",\n        \"portD\": \"镇江\"\n    }, {\n        \"portO\": \"南京\",\n        \"portD\": \"镇江\"\n    }, {\n        \"portO\": \"重庆\",\n        \"portD\": \"泰州\"\n    }, {\n        \"portO\": \"重庆\",\n        \"portD\": \"宜昌\"\n    }, {\n        \"portO\": \"重庆\",\n        \"portD\": \"重庆\"\n    }, {\n        \"portO\": \"扬州\",\n        \"portD\": \"扬州\"\n    }, {\n        \"portO\": \"南京\",\n        \"portD\": \"南京\"\n    }, {\n        \"portO\": \"南通\",\n        \"portD\": \"苏州\"\n    }, {\n        \"portO\": \"泰州\",\n        \"portD\": \"芜湖\"\n    }, {\n        \"portO\": \"芜湖\",\n        \"portD\": \"芜湖\"\n    }, {\n        \"portO\": \"武汉\",\n        \"portD\": \"南京\"\n    }, {\n        \"portO\": \"武汉\",\n        \"portD\": \"黄石\"\n    }, {\n        \"portO\": \"泰州\",\n        \"portD\": \"镇江\"\n    }, {\n        \"portO\": \"芜湖\",\n        \"portD\": \"武汉\"\n    }, {\n        \"portO\": \"武汉\",\n        \"portD\": \"武汉\"\n    }, {\n        \"portO\": \"南通\",\n        \"portD\": \"镇江\"\n    }, {\n        \"portO\": \"武汉\",\n        \"portD\": \"宜昌\"\n    }, {\n        \"portO\": \"芜湖\",\n        \"portD\": \"宜昌\"\n    }, {\n        \"portO\": \"南通\",\n        \"portD\": \"扬州\"\n    }, {\n        \"portO\": \"无锡\",\n        \"portD\": \"泰州\"\n    }, {\n        \"portO\": \"南通\",\n        \"portD\": \"上海\"\n    }, {\n        \"portO\": \"苏州\",\n        \"portD\": \"芜湖\"\n    }, {\n        \"portO\": \"宜昌\",\n        \"portD\": \"武汉\"\n    }, {\n        \"portO\": \"宜昌\",\n        \"portD\": \"苏州\"\n    }, {\n        \"portO\": \"苏州\",\n        \"portD\": \"苏州\"\n    }, {\n        \"portO\": \"宜昌\",\n        \"portD\": \"重庆\"\n    }, {\n        \"portO\": \"宜昌\",\n        \"portD\": \"宜昌\"\n    }, {\n        \"portO\": \"苏州\",\n        \"portD\": \"南通\"\n    }, {\n        \"portO\": \"宜昌\",\n        \"portD\": \"无锡\"\n    }, {\n        \"portO\": \"上海\",\n        \"portD\": \"上海\"\n    }]\n}",
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
          "name" : "portO",
          "value" : "镇江",
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
          "name" : "portD",
          "value" : "芜湖",
          "description" : "",
          "required" : false,
          "dataType" : "String",
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
    select DISTINCT INDEX_NAME AS PORT_O, INDEX_SEC_NAME AS PORT_D
        from dm_data.NEW_ENERGY_SHIP
        WHERE INDEX_NAME IN (SELECT PORT_CN_NAME FROM DICT_DATA.D_CB_PORT_IMP)
        AND INDEX_SEC_NAME IN (SELECT PORT_CN_NAME FROM DICT_DATA.D_CB_PORT_IMP)
        and code = '6'
"""
var list = db.ods_data.camel().select(sql);*/
/*
//目前是测试的50条新能源船舶的列表，后期如有新增船舶，需将新能源船舶静态数据，同步更新至 35gp 库的 new_energy_ship_to_airline 表
var shipListSql = """
    select ship_id from ch.new_energy_ship_to_airline
"""
var shipList = db.gpadmin.camel().select(shipListSql);
var airlineSql = """
 select replace(replace(a.city_name_o,'省',''),'市','') as PORT_O,
       replace(replace(a.city_name_d,'省',''),'市','') as PORT_D from (
    select distinct city_name_o ,city_name_d  FROM ch.dwd_ship_eep_report_iod_i_d where ship_id in
    <foreach collection="shipList" item="item" open="(" separator="," close=")">
      #{item.shipId}
    </foreach>
    and city_name_o in (SELECT city_name FROM d_cb_port_imp)
    and city_name_d in (SELECT city_name FROM d_cb_port_imp)
    and basin_i in ('干线') 
    and ym >= concat(to_char(current_date,'yyyy') ,'01') ) a
"""
var airline = db.gpadmin.camel().select(airlineSql);
*/
var airlineSql ="""
 select port_o,port_d from ch.new_energy_ship_port_o_d
"""
var airline = db.gpadmin.camel().select(airlineSql);
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: airline 
}); 