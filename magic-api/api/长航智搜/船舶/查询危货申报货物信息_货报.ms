{
  "properties" : { },
  "id" : "8caf98d846704915b984f1139fd6d967",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "查询危货申报货物信息_货报",
  "createTime" : null,
  "updateTime" : 1693552389683,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getDangerCarriageGds",
  "method" : "GET",
  "parameters" : [ {
    "name" : "carryId",
    "value" : "MDGCS0200329161727599LC7",
    "description" : "",
    "required" : true,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "declareType",
    "value" : "9",
    "description" : "",
    "required" : true,
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"list\": [{\n            \"totalCount\": \"1\",\n            \"carryGoodsId\": \"DGTS0181211104643700DDZ\",\n            \"unno\": \"\",\n            \"goodsName\": \"煤\",\n            \"goodsNameExtra\": \"\",\n            \"goodsNameEn\": \"COAL\",\n            \"goodsNameEnExtra\": \"\",\n            \"goodsGroupCode\": \"B\",\n            \"goodsGroupCodeCn\": \"1\",\n            \"ifOceanPollutantCode\": \"\",\n            \"ifOceanPollutantCodeCn\": \"是\",\n            \"carryTransId\": \"TDGCP0191011160456593M8U15099498381314\",\n            \"nvl(t1.netWeight,'--')\": \"--\",\n            \"nvl(t1.totalWeight,'--')\": \"22260\"\n        }],\n        \"total\": 1\n    }\n}",
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
      "name" : "data",
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
        "name" : "list",
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
            "name" : "totalCount",
            "value" : "1",
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
            "name" : "carryGoodsId",
            "value" : "DGTS0181211104643700DDZ",
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
            "name" : "unno",
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
          }, {
            "name" : "goodsName",
            "value" : "煤",
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
            "name" : "goodsNameExtra",
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
          }, {
            "name" : "goodsNameEn",
            "value" : "COAL",
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
            "name" : "goodsNameEnExtra",
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
          }, {
            "name" : "goodsGroupCode",
            "value" : "B",
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
            "name" : "goodsGroupCodeCn",
            "value" : "1",
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
            "name" : "ifOceanPollutantCode",
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
          }, {
            "name" : "ifOceanPollutantCodeCn",
            "value" : "是",
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
            "name" : "carryTransId",
            "value" : "TDGCP0191011160456593M8U15099498381314",
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
            "name" : "nvl(t1.netWeight,--)",
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
          }, {
            "name" : "nvl(t1.totalWeight,--)",
            "value" : "22260",
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
        "name" : "total",
        "value" : "1",
        "description" : "",
        "required" : false,
        "dataType" : "Integer",
        "type" : "",
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
import response;

var packSql = """ 
select count(*) OVER() total_count,
       t2.carry_goods_id,
       t2.unno,
       t2.goods_name,
       t2.goods_name_extra,
       t2.goods_name_en,
       t2.goods_name_en_extra,
       t2.if_ocean_pollutant_code_cn,
       t2.risk_category,
       t1.carry_trans_id,
       nvl(t1.net_weight,'--') net_weight,
       nvl(t1.total_weight,'--') total_weight
  from sub_biz_data.dgr_goods_trans t1, sub_biz_data.dgr_goods_pack t2
 where t1.carry_id = t2.carry_id
   and t1.carry_trans_id = t2.carry_trans_id
   and t1.carry_id = #{carryId}
   """;
var liqSql = """
select count(*) OVER() total_count,
       t2.carry_goods_id,
       t2.unno,
       t2.goods_name,
       t2.goods_name_extra,
       t2.goods_name_en,
       t2.goods_name_en_extra,
       t2.pollution_category,
       t2.pollution_category_cn,
       t2.risk_category,
       t2.risk_category_cn,
       t1.carry_trans_id,
       nvl(t1.net_weight,'--') net_weight,
       nvl(t1.total_weight,'--') total_weight
  from sub_biz_data.dgr_goods_trans t1, sub_biz_data.dgr_goods_liquid t2
 where t1.carry_id = t2.carry_id
   and t1.carry_trans_id = t2.carry_trans_id
   and t1.carry_id = #{carryId}
   """;
var solidSql = """
select count(*) OVER() total_count,
       t2.carry_goods_id,
       t2.unno,
       t2.goods_name,
       t2.goods_name_extra,
       t2.goods_name_en,
       t2.goods_name_en_extra,
       t2.goods_group_code,
       t2.goods_group_code_cn,
       t2.if_ocean_pollutant_code,
       t2.if_ocean_pollutant_code_cn,
       t1.carry_trans_id,
       nvl(t1.net_weight,'--') net_weight,
       nvl(t1.total_weight,'--') total_weight
  from sub_biz_data.dgr_goods_trans t1, sub_biz_data.dgr_goods_solid t2
 where t1.carry_id = t2.carry_id
   and t1.carry_trans_id = t2.carry_trans_id
   and t1.carry_id = #{carryId}""";
  
var list = [];
var totalCount = 0;
if (declareType == '1'||declareType == '4') {
    list = db.biz_data.camel().select(packSql);
} else if (declareType == '2'||declareType == '5') {
    list = db.biz_data.camel().select(liqSql);
} else if (declareType == '3'||declareType == '6'
            ||declareType == '8'||declareType == '9') {
    list = db.biz_data.camel().select(solidSql);
}
for (item in list) {
    totalCount = item.get("totalCount");
}

if (list == null) {
    list = [];
}

totalCount = totalCount == null ? "0" : totalCount::string;
var back = {
    "list": list,
    "total": Integer.parseInt(totalCount)
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: back
});