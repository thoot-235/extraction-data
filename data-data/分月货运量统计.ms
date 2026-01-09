{
  "properties" : { },
  "id" : "b5b6e418f28e4e9eaf98c0c393e451b6",
  "script" : null,
  "groupId" : "71c52af0421741f3baab0e40a108f071",
  "name" : "分月货运量统计",
  "createTime" : 1693290873628,
  "updateTime" : 1693305711220,
  "lock" : null,
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/cargoNumByMonth",
  "method" : "GET",
  "parameters" : [ {
    "name" : "yy",
    "value" : "2022",
    "description" : null,
    "required" : true,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }, {
    "name" : "mm",
    "value" : "12",
    "description" : null,
    "required" : true,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"result\": [{\n        \"yy\": \"2022\",\n        \"mm\": \"09\",\n        \"cargoNum\": \"38974.68\"\n    }],\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\"\n}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : {
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
      "name" : "result",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Array",
      "type" : null,
      "defaultValue" : null,
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
          "name" : "yy",
          "value" : "2022",
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
          "name" : "mm",
          "value" : "09",
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
          "name" : "cargoNum",
          "value" : "38974.68",
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
    }, {
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
    } ]
  }
}
================================
import response;
var sql="""
select yy, mm, round(sum(cargo_num), 2) cargo_num
  from (select round(sum(t.act_cargo_num) / 10000, 2) cargo_num,
               to_char(sts_date_start, 'yyyy') yy,
               to_char(sts_date_start, 'mm') mm
          from dm_data.sts_ship_eep_report t
         where basin = '干线'
           and detail_basin = '长江'
    ?{yy,and to_char(t.sts_date_start, 'yyyy') = #{yy}}
    ?{mm,and to_char(t.sts_date_start, 'mm') = #{mm}}
         group by to_char(sts_date_start, 'yyyy'),
                  to_char(sts_date_start, 'mm')
        union all
        select round(sum(t.act_cargo_num) / 10000, 2) cargo_num,
               to_char(sts_date_start, 'yyyy') yy,
               to_char(sts_date_start, 'mm') mm
          from dm_data.sts_shp_insp t
         where basin = '干线'
           and detail_basin = '长江'
    ?{yy,and to_char(t.sts_date_start, 'yyyy') = #{yy}}
    ?{mm,and to_char(t.sts_date_start, 'mm') = #{mm}}
         group by to_char(sts_date_start, 'yyyy'),
                  to_char(sts_date_start, 'mm'))
 group by yy, mm
"""
var cargonum = db.dm_data.camel().select(sql);

return response.json({   
       result: cargonum,
       resultCode: 200,
       resultMsg: "查询成功"

   });