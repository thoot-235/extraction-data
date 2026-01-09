{
  "properties" : { },
  "id" : "7e75bf3e625e4a258067b7d59b117f6d",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "获取气象站列表",
  "createTime" : null,
  "updateTime" : 1691749539442,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getlistWeatherStation",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"stationname\":\"南通31至30浮北岸\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 200,\n    \"success\": \"查询成功\",\n    \"data\": [{\n        \"id\": \"ECA0B3416B22EAAEE050007F010031E8\",\n        \"stationname\": \"南通31至30浮北岸\",\n        \"longitude\": \"120.8022200000\",\n        \"latitude\": \"32.0188900000\",\n        \"ifAddFlag\": \"\"\n    }]\n}",
  "description" : "",
  "requestBodyDefinition" : {
    "name" : "root",
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
      "name" : "stationname",
      "value" : "南通31至30浮北岸",
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
      "name" : "code",
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
      "name" : "success",
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
          "name" : "id",
          "value" : "ECA0B3416B22EAAEE050007F010031E8",
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
          "name" : "stationname",
          "value" : "南通31至30浮北岸",
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
          "name" : "longitude",
          "value" : "120.8022200000",
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
          "name" : "latitude",
          "value" : "32.0188900000",
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
          "name" : "ifAddFlag",
          "value" : "",
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



var Sql = """

         select
            id,
            stationname ,
            longitude ,
            latitude,
            if_Add_Flag 
        from
            search_dmgd_nws_object
        where 1=1
        ?{body.stationname,  and stationname like  '%'||#{body.stationname}||'%' }
        
      

        """;
var list=db.ais.camel().select(Sql);
if(list==null||list==''){
   list=[];
}
import response;
return response.json({
    code: 200,
    success: "查询成功",
    data: list 

});
