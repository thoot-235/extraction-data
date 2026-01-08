{
  "properties" : { },
  "id" : "f1e0107e3bbd45649a61ffcce0af740a",
  "script" : null,
  "groupId" : "c41bce8c9d11400293c67cb04153e13a",
  "name" : "分货类货运量",
  "createTime" : null,
  "updateTime" : 1721717204650,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getPortGoodsType",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"gsh\": [{\n            \"portName\": \"苏州\",\n            \"num\": 14565.26\n        }, {\n            \"portName\": \"泰州\",\n            \"num\": 12858.94\n        }, {\n            \"portName\": \"江阴\",\n            \"num\": 12330.36\n        }, {\n            \"portName\": \"南通\",\n            \"num\": 8220.84\n        }, {\n            \"portName\": \"镇江\",\n            \"num\": 7342.52\n        }],\n        \"jzx\": [{\n            \"portName\": \"苏州\",\n            \"num\": 202.97\n        }, {\n            \"portName\": \"上海\",\n            \"num\": 131.91\n        }, {\n            \"portName\": \"南京\",\n            \"num\": 74.82\n        }, {\n            \"portName\": \"武汉\",\n            \"num\": 55.58\n        }, {\n            \"portName\": \"南通\",\n            \"num\": 53.68\n        }],\n        \"wxp\": [{\n            \"portName\": \"南京\",\n            \"num\": 1535.04\n        }, {\n            \"portName\": \"苏州\",\n            \"num\": 1136.85\n        }, {\n            \"portName\": \"泰州\",\n            \"num\": 759.89\n        }, {\n            \"portName\": \"南通\",\n            \"num\": 753.14\n        }, {\n            \"portName\": \"上海\",\n            \"num\": 555.14\n        }]\n    }\n}",
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
      "name" : "result",
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
        "name" : "gsh",
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
            "name" : "portName",
            "value" : "苏州",
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
            "name" : "num",
            "value" : "14565.26",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          } ]
        } ]
      }, {
        "name" : "jzx",
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
            "name" : "portName",
            "value" : "苏州",
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
            "name" : "num",
            "value" : "202.97",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          } ]
        } ]
      }, {
        "name" : "wxp",
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
            "name" : "portName",
            "value" : "南京",
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
            "name" : "num",
            "value" : "1535.04",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
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
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;

//干散货类
var gshSql = """
    select a.port_cn_name port_name,  to_char(coalesce(sum(b.port_cargo_nums),0)/10000,'9999999999.99') num
        from d_cb_port_imp a
        left join ch.sts_cargo_city_port b
            on a.city_name = b.city_name 
        where b.cargo_class_name = '干散货类' 
        and a.port_cn_name!='上海' 
        and b.ym >= concat(to_char(current_date, 'YYYY'), '-01')
        group by a.port_cn_name, a.orders
        order by sum(b.port_cargo_nums) desc
        limit 5
"""
/**
//干散货类
var gshSql = """
        select port_name, round(nvl(num,0)/10000,2) num, orders
                from dm_data.STS_PORT_FLOW_DIRECTION
                where CODE_TYPE = 3
                        and good_type = '干散货类'
                        and orders <6
                        and import_time = (select max(import_time)
                                                from dm_data.STS_PORT_FLOW_DIRECTION
                                                where CODE_TYPE = 3
                                                and good_type = '干散货类')
                        order by orders asc
"""*/
//集装箱类
var jzxSql = """
    select a.port_cn_name port_name,  to_char(coalesce(sum(b.port_cargo_nums),0)/10000,'9999999999.99') num
        from d_cb_port_imp a
        left join ch.sts_cargo_city_port b
            on a.city_name = b.city_name
        where --b.cargo_class_name = '集装箱类'
        b.cargo_type_code = '1800'
        and a.port_cn_name!='上海' 
        and b.ym >= concat(to_char(current_date, 'YYYY'), '-01')
        group by a.port_cn_name, a.orders
        order by sum(b.port_cargo_nums) desc
        limit 5
"""
/**
//集装箱类
var jzxSql = """
        select port_name, round(nvl(num,0)/10000,2) num, orders
                from dm_data.STS_PORT_FLOW_DIRECTION
                where CODE_TYPE = 3
                        and good_type = '集装箱类'
                        and orders <6
                        and import_time = (select max(import_time)
                                                from dm_data.STS_PORT_FLOW_DIRECTION
                                                where CODE_TYPE = 3
                                                and good_type = '集装箱类')
                        order by orders asc
""" */
//危险品类
var wxpSql = """
    select a.port_cn_name port_name,  to_char(coalesce(sum(b.port_cargo_nums),0)/10000,'9999999999.99') num
    from d_cb_port_imp a
    left join ch.sts_cargo_city_port b
        on a.city_name = b.city_name
    where b.cargo_class_name = '散装液货危险品'
    and a.port_cn_name!='上海' 
    and b.ym >= concat(to_char(current_date, 'YYYY'), '-01')
    group by a.port_cn_name, a.orders
    order by sum(b.port_cargo_nums) desc
    limit 5
"""


/**
//危险品类
var wxpSql = """
        select port_name, round(nvl(num,0)/10000,2) num, orders
                from dm_data.STS_PORT_FLOW_DIRECTION
                where CODE_TYPE = 3
                        and good_type = '散装液货危险品'
                        and orders <6
                        and import_time = (select max(import_time)
                                                from dm_data.STS_PORT_FLOW_DIRECTION
                                                where CODE_TYPE = 3
                                                and good_type = '散装液货危险品')
                        order by orders asc
""" */

/**
var gsh = async db.dm_data.camel().select(gshSql);
var jzx = async db.dm_data.camel().select(jzxSql);
var wxp = async db.dm_data.camel().select(wxpSql);
 */

var gsh = async db.gpadmin.camel().select(gshSql);
var jzx = async db.gpadmin.camel().select(jzxSql);
var wxp = async db.gpadmin.camel().select(wxpSql);
for(item in gsh.get()){
        item.put("num",item.get("num")::double);
}
for(item in jzx.get()){
        item.put("num",item.get("num")::double);
}
for(item in wxp.get()){
        item.put("num",item.get("num")::double);
}

var res = {};
res.put("gsh",gsh.get());
res.put("jzx",jzx.get());
res.put("wxp",wxp.get());

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
});