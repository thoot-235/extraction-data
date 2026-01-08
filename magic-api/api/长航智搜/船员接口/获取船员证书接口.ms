{
  "properties" : { },
  "id" : "609b6a1f41a2415c9d99bcf16a9c3bce",
  "script" : null,
  "groupId" : "69f9552f682c4f55a2f59d8663909151",
  "name" : "获取船员证书接口",
  "createTime" : null,
  "updateTime" : 1749524466966,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getShipCrewCertMess",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n\"idCardNo\":\"75JYsMA3e8eZ0QzdG1LIIfoV1WGDAn1F1KMA2nMEKJk=\",\r\n\"type\":3\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": \"\"\n}",
  "description" : "",
  "requestBodyDefinition" : {
    "name" : "root",
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
    }, {
      "name" : "type",
      "value" : "3",
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
    "dataType" : "String",
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
      "name" : "result",
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
  }
}
================================
import log;
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
import log;
import response;

import 'org.springblade.common.utils.ZzSecurityHelper' as ZzSecurityHelper;




var idCardNo=(body.idCardNo==null?"":body.idCardNo).replace("<em>","").replace("</em>","");
idCardNo=ZzSecurityHelper.decryptAES(body.idCardNo);
idCardNo = idCardNo.replace("<em>","").replace("</em>","");

if(idCardNo==null || idCardNo==''){
    return  response.json({
        "code": 0,
        "message": "参数[idCardNo]为必填项",
        "data": {},      
        "executeTime": 2
    });
}
var type=body.type;
if(type==null || type==''){
    return  response.json({
        "code": 0,
        "message": "参数[type]为必填项",
        "data": {},      
        "executeTime": 2
    });
}

//船员发证信息_海员船员内河航线行驶资格证明
var sql1 = """
select  SERIAL_NO,
     CERT_NO,
    id_card_no, 
    NAME,
    sex,
    BIRTH_DATE,
    APPL_ROUTE,
    appl_scope  , 
    issu_org_code  ,
    ISSU_DATE,
    EXPIRY_DATE,
    EFFECTIVE_DATE,
    INITISSU_DATE,
    CERT_PRINT_DATE,
    CERT_PRINT_NO,
    CERT_STATUS,
    inva_form, 
    CURR_COMP_ISSU_DATE,
    COMP_CERT_NO,
    comp_type_code 
from  bds_base_data.CREW_CERT_INL_NAV_QC
where  1=1 
and delete_flag='0' and cert_status='1'
 ?{idCardNo,and id_card_no = #{idCardNo}} 
 
"""

//船员_海船船员适任证
var sql2 ="""
    select  SERIAL_NO,CERT_NO,
        ID_CARD_NO,
        NAME,
        sex,
        BIRTH_DATE,
        nationality,
        CERT_CATE_NAME,
        COMP_TYPE_NAME,
        APPL_MAJOR_NAME,
        CERT_LEVEL_NAME,
        CERT_POSI_NAME,
        appl_scope,
        APPL_LIMI_CN,
        CERT_PRINT_NO,
        CERT_PRINT_DATE,
        cert_print_org_code,
        cert_status,
        is_handle_g_cert,
        certtype_g CERTTYPE_G_NAME,
        appl_hk_and_macao_sign
from  bds_base_data.CREW_CERT_SEAMAN_CMPT
where  1=1  
and delete_flag='0'  and cert_status = '1'
 ?{idCardNo,and id_card_no = #{idCardNo}} 
    """
//船员发证信息_船员服务簿
var sql3 ="""
    select  SERIAL_NO,ID_CARD_NO,
        CERT_IDCARD_NO,
        NAME,
        sex,
        HOME_ADDR,
        nationality,
        SERVBOOK_CODE,
        SERVBOOK_PRINT_NO,
        BREA_DEDUC_PRINT_NO,
        regi_cate,
        servbook_issu_mode,
        appl_scope,
        issu_org_code,
        ISSU_OFFI_NAME,
        INITISSU_DATE,
        ISSU_DATE,
        inva_form,
        cert_status
from  bds_base_data.CREW_CERT_SERVICEBOOK
where  1=1  
and delete_flag='0'  and cert_status = '1'
 ?{idCardNo,and id_card_no = #{idCardNo}} 
    """

//船员发证信息_内河培训合格证
var sql4 ="""
    select  SERIAL_NO,ID_CARD_NO,
        CERT_NO,
        cert_type,
        TRAIN_ITEM_NAME,
        appl_scope,
        issu_org_code,
        ISSU_DATE,
        EXPIRY_DATE,
        cert_print_org_code,
        CERT_PRINT_DATE,
        QUALCERT_PRINT_NO,
        inva_form,
        cert_status
from  bds_base_data.CREW_CERT_INL_TRAIN_QULI
where  1=1  
and delete_flag='0'  and cert_status = '1'
 ?{idCardNo,and id_card_no = #{idCardNo}} 
    """

var sql5="""
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
where  1=1  
and delete_flag='0'  and cert_status = '1'
 ?{idCardNo,and id_card_no = #{idCardNo}} 
"""

//船公司_岸基管理人员
var sql6 ="""
    select ID_CARD_NO,
            NAME,
            SEX,
            BELONG_COMPANY,
            SHORE_BASED_MANAGE_CLASS,
            DUTY,
            PHONE,
            ADDRESS,
            LAST_UPDATE_DATE
            from COMPANY_SHORE_BASED_MANAGE_PER
            where  1=1 
            ?{idCardNo,and id_card_no = #{idCardNo}}          
"""

var res ={};
if(type=='1'){//船员发证信息_海员船员内河航线行驶资格证明
    res=db.base_data.camel().selectOne(sql1);
    if(res !=null){
        res.put("applScopeName", TagUtils.getTagNameByCode("applScopeTag", res.get("applScope")));
        res.put("invaFormName", TagUtils.getTagNameByCode("invaFormTag", res.get("invaForm")));
        res.put("issuOrgName", TagUtils.getTagNameByCode("issuOrgTag", res.get("issuOrgCode")));
        res.put("compTypeName", TagUtils.getTagNameByCode("compCertTypeTag", res.get("compTypeCode")));
        res.put("sexName", TagUtils.getTagNameByCode("sexTag", res.get("sex")));
        //脱敏处理
        res.put("idCardNoT", DesensitizationUtil.idCardNum(res.get("idCardNo")))
        res.put("certNoT", DesensitizationUtil.isIdCardNo(res.get("certNo")))
        res.put("certPrintNoT", DesensitizationUtil.isIdCardNo(res.get("certPrintNo")))
       res.put("idCardNo", ZzSecurityHelper.encryptAES(res.get("idCardNo")));   
       res.put("certNo", ZzSecurityHelper.encryptAES(res.get("certNo"))); 
    }

}else if(type=='2'){ //船员_海船船员适任证
    res=db.base_data.camel().selectOne(sql2);
     if(res !=null){
        res.put("sexName", TagUtils.getTagNameByCode("sexTag", res.get("sex")));
        res.put("nationalityName", TagUtils.getTagNameByCode("nationalityCrewTag", res.get("nationality")));
        res.put("applScopeName", TagUtils.getTagNameByCode("applScopeTag", res.get("applScope")));
        res.put("certPrintOrgName", TagUtils.getTagNameByCode("issuOrgTag", res.get("certPrintOrgCode")));
        res.put("certStatusName", TagUtils.getTagNameByCode("certStatusTag", res.get("certStatus")));
        res.put("isHandleGCertName", TagUtils.getTagNameByCode("isNoTag", res.get("isHandleGCert")));
        res.put("applHkAndMacaoSignName", TagUtils.getTagNameByCode("applHkAndMacaoSignTag", res.get("applHkAndMacaoSign")));
        //脱敏处理
        res.put("idCardNoT", DesensitizationUtil.idCardNum(res.get("idCardNo")))
        res.put("certNoT", DesensitizationUtil.isIdCardNo(res.get("certNo")))
        res.put("certPrintNoT", DesensitizationUtil.isIdCardNo(res.get("certPrintNo")))
       res.put("idCardNo", ZzSecurityHelper.encryptAES(res.get("idCardNo")));  
       res.put("certNo", ZzSecurityHelper.encryptAES(res.get("certNo"))); 
    }
    
}else if(type=='3'){//船员发证信息_船员服务簿
    res=db.base_data.camel().selectOne(sql3);
    if(res !=null){
        res.put("sexName", TagUtils.getTagNameByCode("sexTag", res.get("sex")));
        res.put("nationalityName", TagUtils.getTagNameByCode("nationalityCrewTag", res.get("nationality")));
        res.put("regiCateName", TagUtils.getTagNameByCode("regiCateTag", res.get("regiCate")));
        res.put("servbookIssuModeName", TagUtils.getTagNameByCode("servbookIssuModeTag", res.get("servbookIssuMode")));
        res.put("applScopeName", TagUtils.getTagNameByCode("applScopeTag", res.get("applScope")));
        res.put("issuOrgName", TagUtils.getTagNameByCode("issuOrgTag", res.get("issuOrgCode")));
        res.put("invaFormName", TagUtils.getTagNameByCode("invaFormTag", res.get("invaForm")));
        res.put("certStatusName", TagUtils.getTagNameByCode("certStatusTag", res.get("certStatus")));
        //脱敏处理
        res.put("certIdcardNoT", DesensitizationUtil.idCardNum(res.get("certIdcardNo")))
        res.put("idCardNoT", DesensitizationUtil.idCardNum(res.get("idCardNo")))
        res.put("certNoT", DesensitizationUtil.isIdCardNo(res.get("certNo"))) 
        res.put("idCardNo", ZzSecurityHelper.decryptAES(res.get("idCardNo")));  
        res.put("certNo", ZzSecurityHelper.encryptAES(res.get("certNo")));    
    }
}else if(type=='4'){//船员发证信息_内河培训合格证
    res=db.base_data.camel().selectOne(sql4);
    if(res !=null){
        res.put("applScopeName", TagUtils.getTagNameByCode("applScopeTag", res.get("applScope")));
        res.put("issuOrgName", TagUtils.getTagNameByCode("issuOrgTag", res.get("issuOrgCode")));
        res.put("certPrintOrgName", TagUtils.getTagNameByCode("issuOrgTag", res.get("certPrintOrgCode")));
        res.put("invaFormName", TagUtils.getTagNameByCode("invaFormTag", res.get("invaForm")));
        res.put("certStatusName", TagUtils.getTagNameByCode("certStatusTag", res.get("certStatus")));
        res.put("certTypeName", TagUtils.getTagNameByCode("certType", res.get("certType")));
        //脱敏处理
        res.put("idCardNoT", DesensitizationUtil.idCardNum(res.get("idCardNo")))
        res.put("certNoT", DesensitizationUtil.isIdCardNo(res.get("certNo")))  
         res.put("idCardNo", ZzSecurityHelper.encryptAES(res.get("idCardNo")));
         res.put("certNo", ZzSecurityHelper.encryptAES(res.get("certNo")));     
       
    }
}else if(type=='5'){//船员发证信息_内河适任证
    res=db.base_data.camel().selectOne(sql5);
    if(res !=null){
      res.put("certNoNum", res.get("certNo")::string);
      res.put("certNo", DesensitizationUtil.certNo(res.get("certNo")::string));
      res.put("idCardNoNum", ZzSecurityHelper.decryptAES(res.get("idCardNo")::string));
      res.put("idCardNo", DesensitizationUtil.certNo(res.get("idCardNo")::string));
      res.put("issuOrgName",TagUtils.getTagNameByCode("issuOrgTag",res.get("issuOrgCode")));
      res.put("applForm",TagUtils.getTagNameByCode("applFormTag",res.get("applForm")));     
      res.put("invaForm",TagUtils.getTagNameByCode("invaFormTag",res.get("invaForm")));     
      res.put("certPrintOrgName",TagUtils.getTagNameByCode("issuOrgTag",res.get("certPrintOrgCode"))); 
      res.put("idCardNo", ZzSecurityHelper.encryptAES(res.get("idCardNo")));  
      res.put("certNo", ZzSecurityHelper.encryptAES(res.get("certNo"))); 
    } 
}else if(type=='6'){//船公司_岸基管理人员
    res=db.base_data.camel().selectOne(sql5);
}


return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: res
});