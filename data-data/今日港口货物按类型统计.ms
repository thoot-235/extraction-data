{
  "properties" : { },
  "id" : "d8491f3d160347b6bd6724d01bc8c143",
  "script" : null,
  "groupId" : "06840557c3324b57a151875e9c1c91e7",
  "name" : "今日港口货物按类型统计",
  "createTime" : null,
  "updateTime" : 1713753626599,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getPortDetailTodayCargoType",
  "method" : "GET",
  "parameters" : [ {
    "name" : "type",
    "value" : "1",
    "description" : "1是按日统计，2是按年统计",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"portCargo\": \"16410\",\n        \"cargoTypeName\": \"其他\"\n    }, {\n        \"portCargo\": \"274890\",\n        \"cargoTypeName\": \"干散货类\"\n    }, {\n        \"portCargo\": \"28557.8\",\n        \"cargoTypeName\": \"散装液货危险品\"\n    }, {\n        \"portCargo\": \"79162.4\",\n        \"cargoTypeName\": \"集装箱类\"\n    }]\n}",
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
          "name" : "portCargo",
          "value" : "16410",
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
          "name" : "cargoTypeName",
          "value" : "其他",
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
    select port_cn_name from dict_data.d_cb_port_imp where port_pinyin = UPPER(#{portName})
  """
  portName = db.dm_data.camel().selectValue(portNameSql);
}

var shipNumsSql = """
  select sum(port_cargo) port_cargo,(case when cargo_type_name is null then '其他' else cargo_type_name end) cargo_type_name from 
dm_data.STS_SHIP_port_REPORT_CARGO where 
<if test="type =='1'.toString()">
 sts_cycle='D'||to_char(sysdate,'yyyy-mm-dd')
</if>
<if test="type =='2'.toString()">
 sts_date_start>=trunc(sysdate,'yyyy')
</if>
?{portName,    and port_Name =#{portName} }
group by (case when cargo_type_name is null then '其他' else cargo_type_name end)
"""


var shipNums =  db.ods_data.camel().select(shipNumsSql);




return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: shipNums
});