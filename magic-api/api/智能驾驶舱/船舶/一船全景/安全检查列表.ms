{
  "properties" : { },
  "id" : "7e7c6024455e436ba50fb53074b7d1b3",
  "script" : null,
  "groupId" : "a2f8b128e2c64d9eba631714dd3787a1",
  "name" : "安全检查列表",
  "createTime" : null,
  "updateTime" : 1747106682591,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getShipSafetyCheck",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipMmsi",
    "value" : "413836088",
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
    "name" : "shipId",
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
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"inspectorName\": \"张宁,徐光强,朱大千\",\n        \"inspectTypeName\": \"船员实操能力专项检查 普通安全检查 0000000014 \",\n        \"inspectDate\": \"2023-12-15\",\n        \"numberOfDefects\": \"4\",\n        \"detentionMarkName\": \"否\",\n        \"preliminaryReviewSignName\": \"复查\"\n    }, {\n        \"inspectorName\": \"张宁,徐光强,朱大千\",\n        \"inspectTypeName\": \"船员实操能力专项检查 普通安全检查 0000000014 \",\n        \"inspectDate\": \"2023-12-14\",\n        \"numberOfDefects\": \"4\",\n        \"detentionMarkName\": \"否\",\n        \"preliminaryReviewSignName\": \"初查\"\n    }]\n}",
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
      "name" : "result",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Array",
      "type" : null,
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
        "type" : null,
        "defaultValue" : null,
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ {
          "name" : "inspectorName",
          "value" : "张宁,徐光强,朱大千",
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
          "name" : "inspectTypeName",
          "value" : "船员实操能力专项检查 普通安全检查 0000000014",
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
          "name" : "inspectDate",
          "value" : "2023-12-15",
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
          "name" : "numberOfDefects",
          "value" : "4",
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
          "name" : "detentionMarkName",
          "value" : "否",
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
          "name" : "preliminaryReviewSignName",
          "value" : "复查",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : null,
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


if((shipMmsi == null || shipMmsi =="")&&(shipId == null || shipId =="")){
return response.json({
        resultCode: 500,
        resultMsg: "shipMmsi、shipId不能同时为空"
	});
  
}

shipMmsi=(shipMmsi==null?"":shipMmsi);
shipId=(shipId==null?"":shipId);
var sql = """
  select inspector_name,
        inspect_type as inspect_type_name,
        to_char(to_date(inspect_date, 'dd/MM/yy'), 'yyyy-MM-dd') inspect_date,
        number_of_defects,
        detention_mark_name,
        PRELIMINARY_REVIEW_SIGN_NAME
    from sub_biz_data.shp_state_control a
  inner join bds_base_data.sc_ship_basic_data b
      on a.ship_no = b.ship_no
  where to_date(inspect_date, 'dd/MM/yy') >= sysdate - interval '3'
  year
    and b.status_flag = '1'
    and b.delete_flag = '0'
     
     <trim prefix="and("  suffix=")" prefixOverrides="AND |OR ">
       <if test="shipMmsi != null and shipMmsi!=''">
             OR b.mmsi = #{shipMmsi}
      </if>
      <if test="shipId != null and shipId!=''">
             OR b.ship_id = #{shipId}
      </if>
     
  </trim>
  order by inspect_date desc
"""
var list =  db.biz_data.camel().select(sql);
for ( item in list){
     var arr = item.get("inspectTypeName").split(",");
     var typeName="";
     

       for(ss in arr) {
      typeName+=TagUtils.getTagNameByCode("inspectTypeTag",ss);
       typeName+=" ";
       }

       item.put("inspectTypeName",typeName)
      
}

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: list
});