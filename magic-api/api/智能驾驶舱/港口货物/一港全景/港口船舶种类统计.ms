{
  "properties" : { },
  "id" : "26bca51617424457bb2fb849104c5f84",
  "script" : null,
  "groupId" : "06840557c3324b57a151875e9c1c91e7",
  "name" : "港口船舶种类统计",
  "createTime" : null,
  "updateTime" : 1713753603510,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getPortTodayShip",
  "method" : "GET",
  "parameters" : [ {
    "name" : "type",
    "value" : "2",
    "description" : "1是按日统计，2是按近一年统计",
    "required" : true,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "portName",
    "value" : "WUHAN",
    "description" : "",
    "required" : false,
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"shipNum\": \"44\",\n        \"shipTypeName\": \"集装箱\"\n    }, {\n        \"shipNum\": \"3\",\n        \"shipTypeName\": \"干散货\"\n    }, {\n        \"shipNum\": \"13\",\n        \"shipTypeName\": \"滚装运输船\"\n    }]\n}",
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
          "name" : "shipNum",
          "value" : "44",
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
          "name" : "shipTypeName",
          "value" : "集装箱",
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
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;

if(portName != null || portName !=""){
  var portNameSql = """
    select port_cn_name from dict_data.d_cb_port_imp where port_pinyin =UPPER(#{portName})
  """
  portName = db.dm_data.camel().selectValue(portNameSql);
}


var shipNumsSql = """
  select sum(ship_num) ship_num,(case when ship_type_name is null then '其他' else ship_type_name end)  ship_type_name from 
dm_data.sts_ship_eep_report_port_type where 1=1


    <if test="type =='1'.toString()">
        and sts_cycle='D'||to_char(sysdate,'yyyy-mm-dd')
        
    </if>

    <if test="type =='2'.toString()">

       and sts_date_start>= to_date (to_char(add_months(sysdate,-12),'yyyy-mm')||'-01','yyyy-mm-dd')
      and sts_date_start< to_date(to_char(sysdate,'yyyy-mm')||'-01','yyyy-mm-dd')
    </if>
      
    
    <if test="portName != null and portName != ''">
        and port_Name=#{portName}
    </if>
group by (case when ship_type_name is null then '其他' else ship_type_name end) 
"""
//and sts_date_start>=trunc(sysdate,'yyyy') 今年开始

var shipNums =  db.ods_data.camel().select(shipNumsSql);




return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: shipNums
});