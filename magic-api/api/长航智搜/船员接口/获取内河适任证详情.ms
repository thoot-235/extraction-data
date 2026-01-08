{
  "properties" : { },
  "id" : "a09dc5d1efc14775ab8d7b281c0c1b24",
  "script" : null,
  "groupId" : "69f9552f682c4f55a2f59d8663909151",
  "name" : "获取内河适任证详情",
  "createTime" : null,
  "updateTime" : 1723786779088,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getCrewCertInlInfo",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n\"idCardNo\":\"75JYsMA3e8eZ0QzdG1LIIfoV1WGDAn1F1KMA2nMEKJk=\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1691115903708,\n    \"executeTime\": 42\n}",
  "description" : "",
  "requestBodyDefinition" : {
    "name" : "",
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ {
      "name" : "idCardNo",
      "value" : "75JYsMA3e8eZ0QzdG1LIIfoV1WGDAn1F1KMA2nMEKJk=",
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
      "value" : "-1",
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
      "name" : "message",
      "value" : "系统内部出现错误",
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
      "children" : [ ]
    }, {
      "name" : "timestamp",
      "value" : "1691115903708",
      "description" : "",
      "required" : false,
      "dataType" : "Long",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "executeTime",
      "value" : "42",
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
  }
}
================================
import request;
import response;
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
import 'org.springblade.common.utils.ZzSecurityHelper' as ZzSecurityHelper;




var certNo=(body.certNo==null?"":body.certNo).replace("<em>","").replace("</em>","");
certNo=ZzSecurityHelper.decryptAES(body.certNo);
certNo = certNo.replace("<em>","").replace("</em>","");

if(certNo==null || certNo==''){
    return  response.json({
        "code": 0,
        "message": "参数[certNo]为必填项",
        "data": {},      
        "executeTime": 2
    });
}

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
 
   ?{certNo, and CERT_NO=#{certNo}}
    
"""
var serviceBook = db.base_data.camel().select (sql);

if(serviceBook.size()>0){
    for (item in serviceBook){
        item.put("certNoNum", ZzSecurityHelper.encryptAES(item.get("certNo")::string));
        item.put("certNo", DesensitizationUtil.certNo(item.get("certNo")::string));
        item.put("idCardNoNum", ZzSecurityHelper.encryptAES(item.get("idCardNo")::string));
        item.put("idCardNo", DesensitizationUtil.certNo(item.get("idCardNo")::string));
        item.put("issuOrgName",TagUtils.getTagNameByCode("issuOrgTag",item.get("issuOrgCode")));
        item.put("applForm",TagUtils.getTagNameByCode("applFormTag",item.get("applForm")));     
        item.put("invaForm",TagUtils.getTagNameByCode("invaFormTag",item.get("invaForm")));     
        item.put("certPrintOrgName",TagUtils.getTagNameByCode("issuOrgTag",item.get("certPrintOrgCode")));         
     }
  }

  return response.json({   
     code:200,
     status: "success",
     message:"查询成功",
     result: serviceBook,

   });