{
  "properties" : { },
  "id" : "cdb16c6ad08049e0ba2c0b886ffbcdcd",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "ais基站图层打点",
  "createTime" : null,
  "updateTime" : 1710746402198,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getAisStationList",
  "method" : "GET",
  "parameters" : [ {
    "name" : "stationName",
    "value" : "天兴洲",
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
  "responseBody" : "{\n    \"code\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"stationCode\": \"AIS0000042\",\n        \"stationName\": \"天兴洲\",\n        \"channelBelong\": \"青山夹水道\",\n        \"szxy\": \"下游\",\n        \"waterwayDistance\": \"1032.99\",\n        \"longitude\": \"114.366667\",\n        \"latitude\": \"30.633333\",\n        \"sfzj\": \"否\",\n        \"org\": \"武汉局\",\n        \"responsible\": \"董*\",\n        \"phone\": \"156****0500\",\n        \"purpose\": \"通信及辅助航行管理\",\n        \"detailAddress\": \"湖北省武汉市青山区红卫路街道建设二路872号\",\n        \"effectiveRange\": \"--\"\n    }]\n}",
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
          "name" : "stationCode",
          "value" : "AIS0000042",
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
          "name" : "stationName",
          "value" : "天兴洲",
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
          "name" : "channelBelong",
          "value" : "青山夹水道",
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
          "name" : "szxy",
          "value" : "下游",
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
          "name" : "waterwayDistance",
          "value" : "1032.99",
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
          "value" : "114.366667",
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
          "value" : "30.633333",
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
          "name" : "sfzj",
          "value" : "否",
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
          "name" : "org",
          "value" : "武汉局",
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
          "name" : "responsible",
          "value" : "董*",
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
          "name" : "phone",
          "value" : "156****0500",
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
          "name" : "purpose",
          "value" : "通信及辅助航行管理",
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
          "name" : "detailAddress",
          "value" : "湖北省武汉市青山区红卫路街道建设二路872号",
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
          "name" : "effectiveRange",
          "value" : "--",
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
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;
var sql="""
select t.station_code,
       t.station_name,
       t.channel_belong,
       case
         when t.szxy = '1' then
          '上游'
         when t.szxy = '2' then
          '中游'
         when t.szxy = '3' then
          '下游'
       end szxy,
       t.waterway_distance,
       t.longitude,
       t.latitude,
       t.sfzj,
       t.org,
/*       case
         when length(t.responsible) = 2 then
          substr(t.responsible, 0, 1) || lpad('*', 1, '*')
         when length(t.responsible) = 3 then
          substr(t.responsible, 0, 1) || lpad('*', 1, '*') ||
          substr(t.responsible, -1, 1)
         else
          substr(t.responsible, 1, 2) || '**' ||
          substr(t.responsible, -1, 1)
       end responsible,*/
       responsible,
       case
         when t.phone = '0' then
          '--'
         else
          --substr(t.phone, 1, 3) || lpad('*', 4, '*') || substr(t.phone, 8)
          phone
       end phone,
       case
         when trim(t.purpose) = '' or trim(t.purpose) is null then
          '--'
         else
          purpose
       end purpose,
       t.detail_address,
       case
         when trim(t.effective_range) = '' or
              trim(t.effective_range) is null then
          '--'
         else
          effective_range
       end effective_range
  from AIS_STATION_SN t

  where 1=1 
  ?{stationName,and t.station_name like  '%'||#{stationName}||'%'}

""";
var list=db.hs_share.camel().select(sql);
if (list == null) {
    list = [];
}
return response.json({
    code: 200,
    resultMsg: "查询成功",
    data: list
});