{
  "properties" : { },
  "id" : "b99c003a936d49a88b6f848359d147e7",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "水上绿色服务区图层打点",
  "createTime" : null,
  "updateTime" : 1701057378961,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getWaterGreenServiceArea",
  "method" : "GET",
  "parameters" : [ {
    "name" : "serviceAreaName",
    "value" : "鸡冠石水上绿色综合服务区",
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
  "responseBody" : "{\n    \"code\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": \"\\r\\nselect \\r\\nSERVICE_AREA_NAME\\t,\\r\\nCHANNEL,\\r\\nPOSITION,\\r\\nLONGITUDE,\\r\\nLATITUDE,\\r\\nMOTION_UNIT,\\r\\nSERVICE_FUNCTION,\\r\\nREMARK,\\r\\nPONTOON_NUM,\\r\\nSCALE,\\r\\nIMPORT_TIME\\t\\r\\nfrom ods_hs_share.WATER_GREEN_SERVICE_AREA where 1=1 \\r\\n?{serviceAreaName,and SERVICE_AREA_NAME like  '%'||#{serviceAreaName}||'%'}\\r\\n\"\n}",
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
      "value" : "\\r\\nselect \\r\\nSERVICE_AREA_NAME\\t,\\r\\nCHANNEL,\\r\\nPOSITION,\\r\\nLONGITUDE,\\r\\nLATITUDE,\\r\\nMOTION_UNIT,\\r\\nSERVICE_FUNCTION,\\r\\nREMARK,\\r\\nPONTOON_NUM,\\r\\nSCALE,\\r\\nIMPORT_TIME\\t\\r\\nfrom ods_hs_share.WATER_GREEN_SERVICE_AREA where 1=1 \\r\\n?{serviceAreaName,and SERVICE_AREA_NAME like  '%'||#{serviceAreaName}||'%'}\\r\\n",
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
  }
}
================================
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;

var sql="""
select 
SERVICE_AREA_NAME,
CHANNEL,
POSITION,
LONGITUDE,
LATITUDE,
MOTION_UNIT,
SERVICE_FUNCTION,
REMARK,
PONTOON_NUM,
SCALE,
IMPORT_TIME	
from ods_hs_share.WATER_GREEN_SERVICE_AREA where 1=1 
?{serviceAreaName,and SERVICE_AREA_NAME like  '%'||#{serviceAreaName}||'%'}
""";
var service = db.ods.camel().select(sql);
return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: service
});