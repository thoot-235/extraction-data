{
  "properties" : { },
  "id" : "7218b891974e42a4a9cb17b635d2dde4",
  "script" : null,
  "groupId" : "429bf27232e44bdbae1a46ea3dcc6609",
  "name" : "证书信息",
  "createTime" : null,
  "updateTime" : 1720493146204,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getCrewCert",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"idCardNo\": \"buPyG9AXkW9s1hyqd9Q+SeCtDq5hM2XLVIEKPwp5F5I=\",\r\n    \"type\": \"hgz\",\r\n    \"status\": \"1\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"certType\": \"内河适任证\",\n        \"issuOrg\": \"广州海事局\",\n        \"issuDate\": \"2021/03/17\",\n        \"endDate\": \"\"\n    }, {\n        \"certType\": \"服务薄\",\n        \"issuOrg\": \"广州海事局\",\n        \"issuDate\": \"2021/03/17\",\n        \"endDate\": \"--\"\n    }, {\n        \"certType\": \"内河载运包装危险货物船舶船员特殊培训\",\n        \"issuOrg\": \"黄石海事局\",\n        \"issuDate\": \"2024/01/03\",\n        \"endDate\": \"2029/01/03\"\n    }]\n}",
  "description" : "",
  "requestBodyDefinition" : {
    "name" : "",
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ {
      "name" : "idCardNo",
      "value" : "buPyG9AXkW9s1hyqd9Q+SeCtDq5hM2XLVIEKPwp5F5I=",
      "description" : "",
      "required" : true,
      "dataType" : "String",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "type",
      "value" : "hgz",
      "description" : "",
      "required" : true,
      "dataType" : "String",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "status",
      "value" : "1",
      "description" : "",
      "required" : true,
      "dataType" : "String",
      "type" : null,
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
          "name" : "certType",
          "value" : "内河适任证",
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
          "name" : "issuOrg",
          "value" : "广州海事局",
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
          "name" : "issuDate",
          "value" : "2021/03/17",
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
          "name" : "endDate",
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
      } ]
    } ]
  }
}
================================
import log;
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
import org.springblade.common.utils.ZzSecurityHelper
import log;
import response;
//海员证
var idCardNo=(body.idCardNo==null?"":body.idCardNo).replace("<em>","").replace("</em>","");
if(idCardNo==null || idCardNo ==""){
    return response.json({
        resultCode: 200,
        resultMsg: "idCardNo不能为空"
    });
}
log.info("------------------------idCardNo---------------------------"+idCardNo);
idCardNo = ZzSecurityHelper.decryptAES(idCardNo);
var type = body.type;
var status = body.status;

var sql1 = """
select id_card_no,CERT_NO,
       '海员证' as type,
       CERT_PRINT_NO,
       '' as  regi_cate,
       APPL_FORM ,
       ISSU_ORG_CODE,
       case when to_char(EXPIRY_DATE,'yyyy-mm-dd')='1900-01-01' then '' else  to_char(EXPIRY_DATE,'yyyy/MM/dd')  end  EXPIRY_DATE,
       case when to_char(ISSU_DATE, 'yyyy-mm-dd')='1900-01-01' then '' else  to_char(ISSU_DATE, 'yyyy/MM/dd') end  ISSU_DATE,
       case
         when cert_status = '0' then
          '无效'
         else
          '有效'
       end cert_status
  from bds_base_data.CREW_CERT_SEAMAN
where  1=1  
and  delete_flag='0'
?{idCardNo,and id_card_no = #{idCardNo}} 
 ?{status!='all',and cert_status = #{status}} 
 order by cert_status desc
"""

//适任证
var sql2 = """
select * from  (
   select id_card_no,serial_no, CERT_NO,COMP_TYPE_NAME ,
'内河适任证' as cert_type,
CERT_PRINT_NO,
   APPL_FORM ,
   ISSU_ORG_CODE,
   case when to_char(ISSU_DATE, 'yyyy-mm-dd')='1900-01-01'  then '' else to_char(ISSU_DATE, 'yyyy/MM/dd') end   ISSU_DATE,
       case
         when cert_status = '0' then
          '无效'
         else
          '有效'
       end cert_status,
      case when   to_char(EXPIRY_DATE,'yyyy-mm-dd')='1900-01-01'  then ''
      when  to_char(EXPIRY_DATE,'yyyy-mm-dd')='9999-01-01'  
      then '' else to_char(EXPIRY_DATE,'yyyy/MM/dd')  end  EXPIRY_DATE
from  bds_base_data.CREW_CERT_INL_CMPT 
where  1=1  
and  delete_flag='0'
?{idCardNo,and id_card_no = #{idCardNo}} 
 ?{status!='all',and cert_status = #{status}} 
 union 
 select id_card_no,serial_no, CERT_NO,COMP_TYPE_NAME,
'海船适任证' as cert_type,
CERT_PRINT_NO,
   APPL_FORM ,
   ISSU_ORG_CODE,
   case when to_char(ISSU_DATE, 'yyyy-mm-dd')='1900-01-01' then '' else to_char(ISSU_DATE, 'yyyy/MM/dd') end   ISSU_DATE,
       case
         when cert_status = '0' then
          '无效'
         else
          '有效'
       end cert_status,
       case when to_char(EXPIRY_DATE,'yyyy-mm-dd')='1900-01-01' then '' else to_char(EXPIRY_DATE,'yyyy/MM/dd') end  EXPIRY_DATE
from  bds_base_data.CREW_CERT_SEAMAN_CMPT
where  1=1  
and delete_flag='0'
?{idCardNo,and id_card_no = #{idCardNo}} 
 ?{status!='all',and cert_status = #{status}} 
 union 
 select id_card_no,serial_no, CERT_NO,COMP_TYPE_NAME,
'小型海船适任证' as cert_type,
CERT_PRINT_NO,
   APPL_FORM ,
   ISSU_ORG_CODE,
   case when to_char(ISSU_DATE, 'yyyy-mm-dd')='1900-01-01'  then '' else to_char(ISSU_DATE, 'yyyy/MM/dd') end ISSU_DATE,
       case
         when cert_status = '0' then
          '无效'
         else
          '有效'
       end cert_status,
      case when to_char(EXPIRY_DATE,'yyyy-mm-dd')='1900-01-01'  then '' else to_char(EXPIRY_DATE,'yyyy/MM/dd') end   EXPIRY_DATE
from  bds_base_data.CREW_CERT_SMALL_SEAMAN 
where  1=1  
and delete_flag='0'
?{idCardNo,and id_card_no = #{idCardNo}} 
 ?{status!='all',and cert_status = #{status}} 
 union 
 select id_card_no,serial_no, CERT_NO,COMP_TYPE_NAME,
'引航员适任证' as cert_type,
CERT_PRINT_NO,

   APPL_FORM ,
   ISSU_ORG_CODE,
  case when  to_char(ISSU_DATE, 'yyyy-mm-dd')='1900-01-01' then '' else to_char(ISSU_DATE, 'yyyy/MM/dd') end ISSU_DATE,
       case
         when cert_status = '0' then
          '无效'
         else
          '有效'
       end cert_status,
       case when to_char(EXPIRY_DATE,'yyyy-mm-dd')='1900-01-01' then '' else to_char(EXPIRY_DATE,'yyyy/MM/dd')  END  EXPIRY_DATE
from  bds_base_data.CREW_CERT_PILOT_CMPT
where  1=1  
and delete_flag='0'
?{idCardNo,and id_card_no = #{idCardNo}} 
 ?{status!='all',and cert_status = #{status}} 

)
order by cert_status desc

"""


//服务簿
var sql3 = """
select  SERIAL_NO,id_card_no,SERVBOOK_CODE ,--服务簿编码
SERVBOOK_PRINT_NO ,
 REGI_CATE as  regi_cate,
  SERVBOOK_ISSU_MODE ,
   ISSU_ORG_CODE,
   SERVBOOK_CODE,
   case when to_char(ISSU_DATE, 'yyyy-mm-dd')='1900-01-01' then  '' else to_char(ISSU_DATE, 'yyyy/MM/dd')  end  ISSU_DATE,
       case
         when cert_status = '0' then
          '无效'
         else
          '有效'
       end cert_status
from  bds_base_data.CREW_CERT_SERVICEBOOK
where  1=1  
and  delete_flag='0'
?{idCardNo,and id_card_no = #{idCardNo}} 
 ?{status!='all',and cert_status = #{status}} 
 order by cert_status desc

"""

//合格证
var sql4 = """
select * from 
(

select serial_no, id_card_no, CERT_NO,
train_item_name as cert_type,
QUALCERT_PRINT_NO as CERT_PRINT_NO,
QUALCERT_PRINT_NO as t_CERT_PRINT_NO,
  APPL_FORM ,
   ISSU_ORG_CODE,
   case when to_char(ISSU_DATE, 'yyyy-mm-dd')='1900-01-01' then '' else to_char(ISSU_DATE, 'yyyy/MM/dd') end  ISSU_DATE,
       case
         when cert_status = '0' then
          '无效'
         else
          '有效'
       end cert_status,
        case when to_char(EXPIRY_DATE,'yyyy-mm-dd')='1900-01-01' then '' else to_char(EXPIRY_DATE,'yyyy/MM/dd') end  EXPIRY_DATE
from  bds_base_data.CREW_CERT_INL_TRAIN_QULI
where  1=1 
and  delete_flag='0'
 ?{idCardNo,and id_card_no = #{idCardNo}} 
 ?{status!='all',and cert_status = #{status}} 
 union 
 select serial_no, id_card_no, CERT_NO,
'海船培训合格证' as cert_type,
CERT_PRINT_NO as CERT_PRINT_NO,
CERT_PRINT_NO as t_CERT_PRINT_NO,
  APPL_FORM ,
   ISSU_ORG_CODE,
   case when to_char(ISSU_DATE, 'yyyy-mm-dd')='1900-01-01' then '' else to_char(ISSU_DATE, 'yyyy/MM/dd') end  ISSU_DATE,
       case
         when cert_status = '0' then
          '无效'
         else
          '有效'
       end cert_status,
        case when to_char(INVA_DATE,'yyyy-mm-dd')='1900-01-01' then '' else to_char(INVA_DATE,'yyyy/MM/dd') end  EXPIRY_DATE
from  bds_base_data.CREW_CERT_SEA_TRAIN_QULI
where  1=1  
 and delete_flag='0'
?{idCardNo,and id_card_no = #{idCardNo}} 
 ?{status!='all',and cert_status = #{status}} 

)
order by ISSU_DATE desc
"""

//健康证
var sql5 = """
select  id_card_no, CERT_NO,
CERT_PRINT_NO as CERT_PRINT_NO,
  APPL_FORM ,
   PHYSEXAM_ORG as ISSU_ORG_CODE,
       PHYSEXAM_ORG_NAME  ,
       MAIN_PHYS_NAME,
   case when to_char(ISSU_DATE, 'yyyy-mm-dd')='1900-01-01' then '' else to_char(ISSU_DATE, 'yyyy/MM/dd') end  ISSU_DATE,
       case
         when cert_status = '0' then
          '无效'
         else
          '有效'
       end cert_status,DEPARTMENT,
        case when to_char(EXPIRY_DATE,'yyyy-mm-dd')='1900-01-01' then ''  else to_char(EXPIRY_DATE,'yyyy/MM/dd')  end  EXPIRY_DATE
from  bds_base_data.CREW_CERT_SEAMAN_FIT
where  1=1  
and delete_flag='0'
?{idCardNo,and id_card_no = #{idCardNo}} 
 ?{status!='all',and cert_status = #{status}} 
 order by ISSU_DATE desc
"""

//游艇驾驶证
var sql6 = """
select  id_card_no, CERT_NO,
CERT_PRINT_NO as CERT_PRINT_NO,
  APPL_FORM ,
  appl_scope,
    ISSU_ORG_CODE,
     '' as ISSU_ORG_name ,
   case when to_char(ISSU_DATE, 'yyyy-mm-dd')='1900-01-01' then '' else to_char(ISSU_DATE, 'yyyy/MM/dd')  end  ISSU_DATE,
       case
         when cert_status = '0' then
          '无效'
         else
          '有效'
       end cert_status,
      case when  to_char(INVA_DATE,'yyyy-mm-dd')='1900-01-01' then '' else to_char(INVA_DATE,'yyyy/MM/dd') end  EXPIRY_DATE
from  bds_base_data.CREW_CERT_YACHT_DRIVE_LIC
where  1=1  
and delete_flag='0'
?{idCardNo,and id_card_no = #{idCardNo}} 
 ?{status!='all',and cert_status = #{status}} 
 order by cert_status desc
"""

//海进江
var sql7 = """
select  SERIAL_NO,id_card_no, CERT_NO,
CERT_PRINT_NO as CERT_PRINT_NO,
  APPL_FORM ,
  appl_route,
    ISSU_ORG_CODE,
   case when to_char(ISSU_DATE, 'yyyy-mm-dd')='1900-01-01' then '' else  to_char(ISSU_DATE, 'yyyy/MM/dd') end  ISSU_DATE,
       case
         when cert_status = '0' then
          '无效'
         else
          '有效'
       end cert_status,
       case when  to_char(EXPIRY_DATE,'yyyy-mm-dd')='1900-01-01' then '' else to_char(EXPIRY_DATE,'yyyy/MM/dd') end  EXPIRY_DATE
from  bds_base_data.CREW_CERT_INL_NAV_QC
where  1=1 
and delete_flag='0'
 ?{idCardNo,and id_card_no = #{idCardNo}} 
 ?{status!='all',and cert_status = #{status}} 
 order by ISSU_DATE desc
"""


//全部





var ret = [];
var hyzlist = [];
var srzlist = [];
var fwblist = [];
var hgzlist = [];
var jkzlist = [];
var ytjslist = [];
var hjjlist = [];


if (type == 'all' || type == 'srz') { ////
    srzlist = db.base_data.camel().select(sql2);
    for (item in srzlist) {
        item.put("applForm", TagUtils.getTagNameByCode("applFormTag", item.get("applForm")));
        item.put("issuOrgCn", TagUtils.getTagNameByCode("issuOrgTag", item.get("issuOrgCode")));
        item.put("regiCate", TagUtils.getTagNameByCode("regiCateTag", item.get("regiCate")));
        item.put("certNoNum", item.get("certNo"))
        //脱敏处理
        item.put("idCardNoNum", item.get("idCardNo"))
        item.put("certNoNum", item.get("certNo"))
        item.put("certPrintNoNum", item.get("certPrintNo"))
        item.put("idCardNo", DesensitizationUtil.isIdCardNo(item.get("idCardNo")))
        item.put("certNo", DesensitizationUtil.isIdCardNo(item.get("certNo")))
        item.put("certPrintNo", DesensitizationUtil.isIdCardNo(item.get("certPrintNo")))

        //插入ret
        var map = {};
        map.put("certType",item.get("certType"));
        map.put("issuOrg",TagUtils.getTagNameByCode("issuOrgTag", item.get("issuOrgCode")));
        map.put("issuDate",item.get("issuDate"));
        map.put("endDate",item.get("expiryDate"));
        ret.add(map);
     
    }
}
if (type == 'all' || type == 'fwb') {
    fwblist = db.base_data.camel().select(sql3);
    for (item in fwblist) {
        item.put("servbookIssuMode", TagUtils.getTagNameByCode("servbookIssuModeTag", item.get("servbookIssuMode")));
        item.put("issuOrgCn", TagUtils.getTagNameByCode("issuOrgTag", item.get("issuOrgCode")));
        item.put("regiCate", TagUtils.getTagNameByCode("regiCateTag", item.get("regiCate")));
        //脱敏处理
        item.put("idCardNoNum", item.get("idCardNo"))
        item.put("servbookPrintNoNum",item.get("servbookPrintNo"))
        item.put("servbookCodeNum", item.get("servbookCode"))

        item.put("idCardNo", DesensitizationUtil.idCardNum(item.get("idCardNo")))
        item.put("servbookPrintNo", DesensitizationUtil.isIdCardNo(item.get("servbookPrintNo")))
        item.put("servbookCode", DesensitizationUtil.isIdCardNo(item.get("servbookCode")))

        //插入ret
        var map = {};
        map.put("certType","服务薄");
        map.put("issuOrg",TagUtils.getTagNameByCode("issuOrgTag", item.get("issuOrgCode")));
        map.put("issuDate",item.get("issuDate"));
        map.put("endDate","--");
        ret.add(map);
    }
}
if (type == 'all' || type == 'hgz') {
    hgzlist = db.base_data.camel().select(sql4);
    for (item in hgzlist) {
        item.put("applForm", TagUtils.getTagNameByCode("applFormTag", item.get("applForm")));
        item.put("issuOrgCn", TagUtils.getTagNameByCode("issuOrgTag", item.get("issuOrgCode")));
        //脱敏处理
        item.put("idCardNoNum", item.get("idCardNo"))
        item.put("certPrintNoNum",item.get("certPrintNo"))
        item.put("certNoNum", item.get("certNo"))
        item.put("idCardNo", DesensitizationUtil.idCardNum(item.get("idCardNo")))
        item.put("certPrintNo", DesensitizationUtil.isIdCardNo(item.get("certPrintNo")))
        item.put("certNo", DesensitizationUtil.isIdCardNo(item.get("certNo")))

        //插入ret
        var map = {};
        map.put("certType",item.get("certType"));
        map.put("issuOrg",TagUtils.getTagNameByCode("issuOrgTag", item.get("issuOrgCode")));
        map.put("issuDate",item.get("issuDate"));
        map.put("endDate",item.get("expiryDate"));
        ret.add(map);
    }
}
if (type == 'all' || type == 'jkz') {
    jkzlist = db.base_data.camel().select(sql5);
    for (item in jkzlist) {
        item.put("applForm", TagUtils.getTagNameByCode("crewHealthCertApplFormTag", item.get("applForm")));
        item.put("issuOrgCn", TagUtils.getTagNameByCode("issuOrgTag", item.get("issuOrgCode")));
        var s=item.get("department")==null?"":item.get("department").asString();
        var t="";
       for(ss in s.split(",")) {
      t+=TagUtils.getTagNameByCode("departmentTag",ss);
       t+=" ";
       }
    
        item.put("department",t);
        //脱敏处理
        item.put("idCardNoNum", item.get("idCardNo"))
        item.put("certNoNum", item.get("certNo"))
        item.put("certPrintNoNum", item.get("certPrintNo"))
        item.put("idCardNo", DesensitizationUtil.idCardNum(item.get("idCardNo")))
        item.put("certNo", DesensitizationUtil.isIdCardNo(item.get("certNo")))
        item.put("certPrintNo", DesensitizationUtil.isIdCardNo(item.get("certPrintNo")))

        //插入ret
        var map = {};
        map.put("certType","健康证");
        map.put("issuOrg",TagUtils.getTagNameByCode("issuOrgTag", item.get("issuOrgCode")));
        map.put("issuDate",item.get("issuDate"));
        map.put("endDate",item.get("expiryDate"));
        ret.add(map);
    }
}
if (type == 'all' || type == 'hjj') {
    hjjlist = db.base_data.camel().select(sql7);
    for (item in hjjlist) {
        item.put("applForm", TagUtils.getTagNameByCode("applFormTag", item.get("applForm")));
        item.put("issuOrgCn", TagUtils.getTagNameByCode("issuOrgTag", item.get("issuOrgCode")));
        item.put("applRouteCn", TagUtils.getTagNameByCode("applRouteTag", item.get("applRoute")));
        //脱敏处理
        item.put("idCardNoNum", item.get("idCardNo"))
        item.put("certNoNum", item.get("certNo"))
        item.put("certPrintNoNum", item.get("certPrintNo"))
        item.put("idCardNo", DesensitizationUtil.idCardNum(item.get("idCardNo")))
        item.put("certNo", DesensitizationUtil.isIdCardNo(item.get("certNo")))
        item.put("certPrintNo", DesensitizationUtil.isIdCardNo(item.get("certPrintNo")))

        //插入ret
        var map = {};
        map.put("certType","海船内河行驶资格证");
        map.put("issuOrg",TagUtils.getTagNameByCode("issuOrgTag", item.get("issuOrgCode")));
        map.put("issuDate",item.get("issuDate"));
        map.put("endDate",item.get("expiryDate"));
        ret.add(map);
    }

}
if (type == 'all' || type == 'ytjsz') {
    ytjslist = db.base_data.camel().select(sql6);
    for (item in ytjslist) {
        item.put("applForm", TagUtils.getTagNameByCode("applFormTag", item.get("applForm")));
        item.put("issuOrgCn", TagUtils.getTagNameByCode("issuOrgTag", item.get("issuOrgCode")));
        item.put("applScopeCn", TagUtils.getTagNameByCode("applScopeTag", item.get("applScope")));
        //脱敏处理
        item.put("idCardNoNum", item.get("idCardNo"))
        item.put("certNoNum", item.get("certNo"))
        item.put("certPrintNoNum", item.get("certPrintNo"))
        item.put("idCardNo", DesensitizationUtil.idCardNum(item.get("idCardNo")))
        item.put("certNo", DesensitizationUtil.isIdCardNo(item.get("certNo")))
        item.put("certPrintNo", DesensitizationUtil.isIdCardNo(item.get("certPrintNo")))

        
        //插入ret
        var map = {};
        map.put("certType","游艇驾驶证");
        map.put("issuOrg",TagUtils.getTagNameByCode("issuOrgTag", item.get("issuOrgCode")));
        map.put("issuDate",item.get("issuDate"));
        map.put("endDate",item.get("expiryDate"));
        ret.add(map);
    }
}
if (type == 'all' || type == 'hyz') {

    hyzlist = db.base_data.camel().select(sql1);
    for (item in hyzlist) {
        item.put("applForm", TagUtils.getTagNameByCode("applFormTag", item.get("applForm")));
        item.put("issuOrgCn", TagUtils.getTagNameByCode("issuOrgTag", item.get("issuOrgCode")));
        item.put("regiCate", TagUtils.getTagNameByCode("regiCateTag", item.get("regiCate")));
        //脱敏处理
        item.put("certNoNum", item.get("certNo"))
        item.put("certPrintNoNum", item.get("certPrintNo"))
        item.put("certNo", DesensitizationUtil.isIdCardNo(item.get("certNo")))
        item.put("certPrintNo", DesensitizationUtil.isIdCardNo(item.get("certPrintNo")))
        //插入ret
        var map = {};
        map.put("certType","海员证");
        map.put("issuOrg",TagUtils.getTagNameByCode("issuOrgTag", item.get("issuOrgCode")));
        map.put("issuDate",item.get("issuDate"));
        map.put("endDate",item.get("expiryDate"));
        ret.add(map);
        
    }
}

return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: ret
});