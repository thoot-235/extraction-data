{
  "properties" : { },
  "id" : "945293b69480448cae37ed0ebf97b3e5",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "危货申报货物属性信息",
  "createTime" : null,
  "updateTime" : 1693552389585,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getDangerGoodsProperty",
  "method" : "GET",
  "parameters" : [ {
    "name" : "carryGoodsId",
    "value" : "6828215359701520384",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"list\": [],\n        \"total\": 0\n    }\n}",
  "description" : "",
  "requestBodyDefinition" : {
    "name" : null,
    "value" : null,
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
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
      "name" : "data",
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
        "name" : "list",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : null,
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
import response;

var packSql = """ 
select count(*) OVER() total_count,
       carry_goods_id,
       carry_id,
       carry_trans_id,
       declare_type_code,
       declare_type_name,
       goods_id,
       unno,
       goods_name,
       goods_name_en,
       goods_name_extra,
       goods_name_en_extra,
       risk_category,
       sub_risk1,
       sub_risk2,
       case  when pack_group='Ⅰ' then '货物具有大的危险性'
       when pack_group='Ⅱ' then '货物具有中等危险性'
       when pack_group='Ⅲ' then '货物具有小的危险性，包装强度要求一般' end 
       pack_group,
       emerg_no,
       case when if_ocean_pollutant_code='0' then '否'
       else '是' end if_ocean_pollutant_code,
       case when if_exempt_code='0' then '否'
       else '是' end  if_exempt_code,
       case when  if_limit_code='0' then '否'
       else '是' end if_limit_code,
       flash_point,
       control_temp,
       emerg_temp
  from sub_biz_data.dgr_goods_pack
 where carry_goods_id = #{carryGoodsId}
   """;
var liqSql = """
select count(*) over() total_count,
       carry_goods_id,
       carry_id,
       declare_type_code,
       declare_type_name,
       carry_trans_id,
       goods_id,
       unno,
       goods_name,
       goods_name_en,
       goods_name_extra,
       goods_name_en_extra,
       risk_category,
       mhb,
       goods_group_code,
       if_ocean_pollutant_code,
       description,
       repose_angle,
       stowage_factor,
       special_property,
       handbook,
       trim_procedure,
       moisture_limit,
       moisture_content
  from sub_biz_data.dgr_goods_liquid
 where carry_goods_id = #{carryGoodsId}
   """;
var solidSql = """
select count(*) over() total_count,
       carry_goods_id,
       carry_id,
       declare_type_code,
       declare_type_name,
       carry_trans_id,
       goods_id,
       unno,
       goods_name,
       goods_name_en,
       goods_name_extra,
       goods_name_en_extra,
       risk_category,
       mhb,
       goods_group_code,
       if_ocean_pollutant_code,
       description,
       repose_angle,
       stowage_factor,
       special_property,
       handbook,
       trim_procedure,
       moisture_limit,
       moisture_content
  from sub_biz_data.dgr_goods_solid
 where carry_goods_id = #{carryGoodsId}
 """;
  
var list = [];
var totalCount = 0;
if (declareType == '1'||declareType == '4') {
    list = db.biz_data.camel().select(packSql);
} else if (declareType == '2'||declareType == '5') {
    list = db.biz_data.camel().select(liqSql);
} else if (declareType == '3'||declareType == '6'||declareType == '8'||declareType == '9') {
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