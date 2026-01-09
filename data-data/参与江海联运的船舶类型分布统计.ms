{
  "properties" : { },
  "id" : "14e6ef35fde64726b72f63ed9c354195",
  "script" : null,
  "groupId" : "ee26923e30094e23bd55337d62b5f351",
  "name" : "参与江海联运的船舶类型分布统计",
  "createTime" : null,
  "updateTime" : 1748429751065,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getShipTypeByJhly",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"data\": [{\n            \"classTypeName\": \"集装箱船\",\n            \"shipNum\": 1775\n        }, {\n            \"classTypeName\": \"液货船\",\n            \"shipNum\": 2165\n        }, {\n            \"classTypeName\": \"干散货船\",\n            \"shipNum\": 7743\n        }, {\n            \"classTypeName\": \"客船\",\n            \"shipNum\": 2\n        }, {\n            \"classTypeName\": \"其它普货船\",\n            \"shipNum\": 1685\n        }],\n        \"tjTime\": 2024\n    }\n}",
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
      "dataType" : "Array",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
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
            "name" : "classTypeName",
            "value" : "集装箱船",
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
            "name" : "shipNum",
            "value" : "1775",
            "description" : "",
            "required" : false,
            "dataType" : "Integer",
            "type" : null,
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          } ]
        } ]
      }, {
        "name" : "tjTime",
        "value" : "2024",
        "description" : "",
        "required" : false,
        "dataType" : "Integer",
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

//船舶数量
//江海联运标志（过滤掉特殊船种）valid = '1'
//只统计海船（为了进一步过滤）ship_region_type = '1'
//考虑到后期可能存在其他类型的数据，所以圈定范围 flag_trade in ('01','02')
var shipNumsSql = """
    select 
            case
                when substr(class_type_code, 0, 2) = '03' then
                '液货船'
                else
                class_type_name
            end class_type_name,
            count(1) ship_num
        from sub_biz_data.shp_basic_report_info_od
        where year = (select max(year) from sub_biz_data.SHP_BASIC_REPORT_INFO_OD)
            and valid = '1'
            and ship_region_type = '1'
          --  and flag_trade in ('01','02')
        group by 
                case
                    when substr(class_type_code, 0, 2) = '03' then
                    '液货船'
                    else
                    class_type_name
                end
        order by class_type_name desc, ship_num desc
"""
/** 分国内国际
//船舶数量
var shipNumsSql = """
    select case when flag_trade = '01' then '国内'
                when flag_trade = '02' then '国际'
                else '干支'
            end flag_trade,
            case
                when substr(class_type_code, 0, 2) = '03' then
                '液货船'
                else
                class_type_name
            end class_type_name,
            count(1) ship_num
        from sub_biz_data.shp_basic_report_info_od
        where year = (select max(year) from sub_biz_data.SHP_BASIC_REPORT_INFO_OD)
            and valid = '1'
            and ship_region_type = '1'
        group by flag_trade,
                case
                    when substr(class_type_code, 0, 2) = '03' then
                    '液货船'
                    else
                    class_type_name
                end
        order by flag_trade asc, ship_num desc
""" */
//统计时间
var tjTimeSql = """
    select to_char(sysdate,'yyyy')-1 from dual
"""
var shipNums = async db.dm_data.camel().select(shipNumsSql);
var tjTime = async db.dm_data.camel().selectInt(tjTimeSql);
for(item in shipNums.get()){
    item.put("shipNum",item.get("shipNum")::int);
}
var data = {};
data.put("data",shipNums.get());
data.put("tjTime", tjTime.get());



return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: data
});