{
  "properties" : { },
  "id" : "208504fe988145918e1f3421bcbc0040",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "查询危货申报数据之货物信息",
  "createTime" : null,
  "updateTime" : 1693552389674,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getDangerCarriageDetail",
  "method" : "GET",
  "parameters" : [ {
    "name" : "carryId",
    "value" : "7044119144555446272",
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
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"list\": [],\n        \"total\": 0\n    }\n}",
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
        "children" : [ ]
      }, {
        "name" : "total",
        "value" : "0",
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

var goodsPackSql = """ select count(*) OVER() total_count,
       CARRY_GOODS_ID,
       CARRY_ID,
       CARRY_TRANS_ID,
       UNNO,
       GOODS_NAME,
       GOODS_NAME_EN,
       RISK_CATEGORY GOODS_TYPE,
       SUB_RISK1 GOODS_TYPE_CODE1,
       SUB_RISK2 GOODS_TYPE_CODE2,
       PACK_GROUP PACK_TYPE,
       IF_OCEAN_POLLUTANT_CODE POLLUTION_NAME,
       case
         when IF_LIMIT_CODE = '0' then
          '否'
         when IF_LIMIT_CODE = '1' then
          '是'
       end IF_LIMIT_CODE,
       case
         when IF_EXEMPT_CODE = '0' then
          '否'
         when IF_EXEMPT_CODE = '1' then
          '是'
       end IF_EXEMPT_CODE,
       EMERG_NO,
       CONTROL_TEMP CTL_TEMP,
       EMERG_TEMP,
       FLASH_POINT FP_VALUE
  from sub_biz_data. DGR_GOODS_PACK where 1=1
        ?{carryId,and CARRY_ID = #{carryId}}""";
var goodsLiquidSql = """select count(*) OVER() total_count,
       CARRY_GOODS_ID,
       CARRY_ID,
       CARRY_TRANS_ID,
       bulk_liquid_type LIQUID_GOODS_TYPE,
       UNNO,
       GOODS_NAME,
       GOODS_NAME_EN,
       risk_category GOODS_TYPE_CODE,
       pollution_category POLLUTION_TYPE,
       OIL_PROPERTY,
       PRODUCT_OIL_TYPE,
       PERSISTENCE_FLAG,
       FLASH_POINT,
       flash_point_value FP_VALUE,
       flash_point_name FP_NAME,
       VISCOSITY,
       MELT_POINT,
       WORK_TEMP,
       autoignition_temp SC_UPPER_TEMP,
       BOIL_POINT,
       COMBUSTIBLE_UPPER_TEMP,
       COMBUSTIBLE_LOWER_TEMP,
       LIQUID_DENSITY,
       STEAM_DENSITY,
       STEAM_PRESSURE,
       WATER_SOLUBILITY,
       TLV,
       CONDUCTIVITY,
       LTP,
       LC50_INHALE,
       LD50_SKIN,
       LD50_ORAL,
       PERSONNEL_PROTECTION PERSONNEL_PROT,
       EMERG_MEASURE,
       GOODS_REACTIVITY,
       case
         when FORCE_PREWASH_FLAG = '0' then
          '否'
         when FORCE_PREWASH_FLAG = '1' then
          '是'
       end IF_FORCE_PREWASH_CODE,
       FORCE_PREWASH_DESC FORCE_PREWASH_INS
  from sub_biz_data.DGR_GOODS_LIQUID where 1=1
        ?{carryId,and CARRY_ID = #{carryId}}""";
var goodsSolidBSql = """select count(*) OVER() total_count,
       CARRY_GOODS_ID,
       CARRY_ID,
       CARRY_TRANS_ID,
       UNNO,
       GOODS_NAME,
       GOODS_NAME_EN,
       risk_category GOODS_TYPE_CODE,
       IF_OCEAN_POLLUTANT_CODE POLLUTION_NAME,
       GOODS_GROUP_CODE,
       DESCRIPTION,
       REPOSE_ANGLE,
       STOWAGE_FACTOR,
       special_property SPCI_PROPERTY,
       HANDBOOK,
       TRIM_PROCEDURE TRIM_PRO,
       MOISTURE_LIMIT MSTR_LIMIT,
       MOISTURE_CONTENT MSTR_CONT
  from sub_biz_data. DGR_GOODS_SOLID
 where 1 = 1
        ?{carryId,and CARRY_ID = #{carryId}}""";
var carryPackSql = """select count(*) OVER() total_count,
       CARRY_GOODS_ID,
       CARRY_ID,
       CARRY_TRANS_ID,
       UNNO,
       GOODS_NAME,
       GOODS_NAME_EN,
       RISK_CATEGORY GOODS_TYPE_CODE,
       SUB_RISK1 GOODS_TYPE_CODE1,
       SUB_RISK2 GOODS_TYPE_CODE2,
       PACK_GROUP PACK_TYPE,
       case
         when IF_LIMIT_CODE = '0' then
          '否'
         when IF_LIMIT_CODE = '1' then
          '是'
       end IF_LIMIT_CODE,
       case
         when IF_EXEMPT_CODE = '0' then
          '否'
         when IF_EXEMPT_CODE = '1' then
          '是'
       end IF_EXEMPT_CODE,
       EMERG_NO
  from sub_biz_data. DGR_CARRY_PACK
 where 1 = 1
        ?{carryId,and CARRY_ID = #{carryId}}""";
var carryLiquidSql = """select CARRY_GOODS_ID,
       CARRY_ID,
       CARRY_TRANS_ID,
       BULK_LIQUID_TYPE LIQUID_GOODS_TYPE,
       UNNO,
       GOODS_NAME,
       GOODS_NAME_EN,
       RISK_CATEGORY GOODS_TYPE_CODE,
       POLLUTION_CATEGORY POLLUTION_TYPE,
       OIL_PROPERTY,
       PRODUCT_OIL_TYPE,
       PERSISTENCE_FLAG,
       FLASH_POINT,
       FLASH_POINT_VALUE FP_VALUE,
       FLASH_POINT_NAME FP_NAME,
       WORK_TEMP,
       TANK_NO LIQUID_WHSE_NO,
       case
         when IF_INERTING_CODE = '0' then
          '否'
         when IF_INERTING_CODE = '1' then
          '是'
       end IF_INERTING_CODE,
       WORK_TYPE_CODE OPERATION_MODE,
       WORK_TYPE_NAME WORK_MODE_NAME,
       VISCOSITY,
       case
         when FORCE_PREWASH_FLAG = '0' then
          '否'
         when FORCE_PREWASH_FLAG = '1' then
          '是'
       end IF_FORCE_PREWASH_CODE,
       FORCE_PREWASH_DESC FORCE_PREWASH_INS,
       MELT_POINT
  from sub_biz_data. DGR_CARRY_LIQUID
 where 1 = 1
        ?{carryId,and CARRY_ID = #{carryId}}""";
var carrySolidBSql = """select CARRY_GOODS_ID,
       CARRY_ID,
       CARRY_TRANS_ID,
       UNNO,
       GOODS_NAME,
       GOODS_NAME_EN,
       RISK_CATEGORY    GOODS_TYPE_CODE,
       IF_MHB           MHB,
       GOODS_GROUP_CODE
  from sub_biz_data. DGR_CARRY_SOLID
 where 1 = 1
        ?{carryId,and CARRY_ID = #{carryId}}""";
var list = [];
var totalCount = 0;
if (declareType == '1') {
    list = db.biz_data.camel().select(goodsPackSql);
} else if (declareType == '2') {
    list = db.biz_data.camel().select(goodsLiquidSql);
    for (item in list) {
        if (item.get("liquidGoodsType") != null && item.get("liquidGoodsType") != '') {
            item.put("liquidGoodsTypeCn", TagUtils.getTagNameByCode("liquidGoodsType", item.get("liquidGoodsType")::string))
        }
    }
} else if (declareType == '3' || declareType == '8') {
    list = db.biz_data.camel().select(goodsSolidBSql);
} else if (declareType == '4') {
    list = db.biz_data.camel().select(carryPackSql);
} else if (declareType == '5') {
    list = db.biz_data.camel().select(carryLiquidSql);
    for (item in list) {
        if (item.get("liquidGoodsType") != null && item.get("liquidGoodsType") != '') {
            item.put("liquidGoodsTypeCn", TagUtils.getTagNameByCode("liquidGoodsType", item.get("liquidGoodsType")::string))
        }
    }
} else if (declareType == '6' || declareType == '9') {
    list = db.biz_data.camel().select(carrySolidBSql);
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