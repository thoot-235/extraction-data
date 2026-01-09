{
  "properties" : { },
  "id" : "509965b7d0ec4f788cc1e75d3a74a7a5",
  "script" : null,
  "groupId" : "69f9552f682c4f55a2f59d8663909151",
  "name" : "修改船员内河适任证详情字段",
  "createTime" : null,
  "updateTime" : 1693552389143,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getCrewCertInlInfoUpdate",
  "method" : "GET",
  "parameters" : [ {
    "name" : "serialNo",
    "value" : "N090000000241593",
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
  "responseBody" : "{\n    \"code\": 200,\n    \"status\": \"success\",\n    \"message\": \"查询成功\",\n    \"result\": {\n        \"needAudit\": {},\n        \"noNeedAudit\": {}\n    }\n}",
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
      "name" : "status",
      "value" : "success",
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
      "name" : "message",
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
      "dataType" : "Object",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "needAudit",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Object",
        "type" : "",
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "noNeedAudit",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Object",
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
import request;
import response;
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;

 import 'org.ssssssss.magic.utils.TreeUtil' as TreeUtil;


var sql="""
    
  
  select  SERIAL_NO,
    CERT_NO,
    ID_CARD_NO,
    CERT_IDCARD_NO,
    COMP_TYPE_NAME,
    APPL_MAJOR_NAME,
    CERT_CATE_NAME,
    CERT_POSI_NAME,
    to_char(ISSU_DATE,'yyyy-mm-dd') ISSU_DATE,
    to_char(EXPIRY_DATE,'yyyy-mm-dd') EXPIRY_DATE,
    CERT_PRINT_NO,
    ISSU_OFFI_NAME,
    APPL_LIMI_CN,
    PHOTO_NO,
    PHYSEXAM_SERI_NO,
    case
         when cert_status = '0' then
          '无效'
         else
          '有效'
       end cert_status,  
    INVA_FORM,
    ARCH_SERINUM,
    APPL_FORM,
    INVAMAN_NAME,
    to_char(INVA_DATE,'yyyy-mm-dd')INVA_DATE,
    INVAREASON,
    BID_NO,
    UNIEXAM_LIMI_CN,
    (case 
         when SHORE_REST_SIGN = '0' then
          '不受限'
          when SHORE_REST_SIGN = '1' then
          '受限'
         else
          ''
       end) as SHORE_REST_SIGN,
    (case 
         when UNIEXAM_REST_SIGN = '0' then
          '不受限'
          when UNIEXAM_REST_SIGN = '1' then
          '受限'
         else
          ''
       end) as UNIEXAM_REST_SIGN,
    (case 
         when SHIP_REST_SIGN = '0' then
          '不受限'
          when SHIP_REST_SIGN = '1' then
          '受限'
         else
          ''
       end) as SHIP_REST_SIGN,
    SHORE_LIMI_CN,
    SHIP_LIMI_CN,
    to_char(CERT_PRINT_DATE,'yyyy-mm-dd')CERT_PRINT_DATE,
    ROUTEVERSION,
    issu_org_code ,
    (case 
         when rest_sign = '0' then
          '不受限'
          when rest_sign = '1' then
          '受限'
         else
          ''
       end) as  rest_sign_name ,
    (case 
         when cert_sign = '0' then
          '不受限'
         when cert_sign = '1' then
          '受限'
         else
          '' 
       end) cert_sign ,
    cert_print_org_code ,
    LAST_UPDATE_DATE from CREW_CERT_INL_CMPT
 where 1=1 
 
   ?{serialNo, and SERIAL_NO=#{serialNo}}
    
"""
var serviceBook = db.base_data.selectOne (sql);

var fieldsPowerSql=""" select * from bds_base_data.sc_table_fields where table_name_en='BDS_BASE_DATA.CREW_CERT_INL_CMPT'""";

var fieldsPower=db.base_data.select(fieldsPowerSql);//字段权限控制

var LastData=TreeUtil.ScZzMap(serviceBook, fieldsPower);//代码组装返回值

  return response.json({   
     code:200,
     status: "success",
     message:"查询成功",
     result: LastData,

   });