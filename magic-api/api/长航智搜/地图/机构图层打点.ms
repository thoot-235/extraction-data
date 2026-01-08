{
  "properties" : { },
  "id" : "4478ef9ff0764032b98aa97c43a5c407",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "机构图层打点",
  "createTime" : null,
  "updateTime" : 1687253133574,
  "lock" : null,
  "createBy" : null,
  "updateBy" : "admin",
  "path" : "/getOrganLocationList",
  "method" : "GET",
  "parameters" : [ {
    "name" : "organName",
    "value" : "湖口航道处",
    "description" : null,
    "required" : false,
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
  "responseBody" : "{\n    \"code\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"organName\": \"长江九江航道处湖口航道处\",\n        \"parentDept\": \"长江九江航道处\",\n        \"longitude\": \"115.9748\",\n        \"latitude\": \"29.7274\",\n        \"address\": \"江西省九江市浔阳区通道闸22号\",\n        \"areaMileage\": \"754.0～814.0\",\n        \"dutyPhone\": \"0792-8436155\",\n        \"dataSource\": \"长江航道局上报\"\n    }]\n}",
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
      "name" : "code",
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
    }, {
      "name" : "data",
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
          "name" : "organName",
          "value" : "长江九江航道处湖口航道处",
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
          "name" : "parentDept",
          "value" : "长江九江航道处",
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
          "name" : "longitude",
          "value" : "115.9748",
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
          "name" : "latitude",
          "value" : "29.7274",
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
          "name" : "address",
          "value" : "江西省九江市浔阳区通道闸22号",
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
          "name" : "areaMileage",
          "value" : "754.0～814.0",
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
          "name" : "dutyPhone",
          "value" : "0792-8436155",
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
          "name" : "dataSource",
          "value" : "长江航道局上报",
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
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;
var sql="""
 select t.organ_name,
        t.parent_dept,
        case
          when t.longitude is null then
           '--'
          else
           longitude
        end longitude,
        case
          when t.latitude is null then
           '--'
          else
           latitude
        end latitude,
        case
          when t.address is null then
           '--'
          else
           address
        end address,
        case
          when t.area_mileage is null then
           '--'
          else
           area_mileage
        end area_mileage,
        case
          when t.duty_phone is null then
           '--'
          else
           duty_phone
        end duty_phone,
        t.data_source
   from ORGAN_SN_TOTAL t  where 1=1
   ?{organName,and t.organ_name like  '%'||#{organName}||'%'}

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