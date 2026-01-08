{
  "properties" : { },
  "id" : "951cb57ef4174e38986aa4538136a911",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "公司符合证明信息",
  "createTime" : null,
  "updateTime" : 1693552388865,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/queryCompDcNational",
  "method" : "GET",
  "parameters" : [ {
    "name" : "companyId",
    "value" : "394642750",
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
    "name" : "uscc",
    "value" : "91341702394642750w",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": []\n}",
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
      "children" : [ ]
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import log;
import response;
companyId=(companyId==null?"":companyId).replace("<em>","").replace("</em>","");
var sql = """
select * from (
 SELECT DOC_ID,DOC_NO,
         IF_TEMP,
         AUDIT_SHIP_TYP,
         case when TO_CHAR(ISSU_DATE, 'yyyy-MM-dd')='1900-01-01' then '--' else TO_CHAR(ISSU_DATE, 'yyyy-MM-dd') end  ISSU_DATE,
         case when TO_CHAR(BEGIN_DATE, 'yyyy-MM-dd')='1900-01-01' then '--' else TO_CHAR(BEGIN_DATE, 'yyyy-MM-dd')end BEGIN_DATE,
         case when TO_CHAR(EXPIRY_DATE, 'yyyy-MM-dd')='1900-01-01' then '--' else TO_CHAR(EXPIRY_DATE, 'yyyy-MM-dd') end  EXPIRY_DATE,
         ISSUING_ORGANIZATION_CODE,
         CERTIFICATION_TYPE,
         IS_CANCEL,
         case when TO_CHAR(CANCEL_DATE, 'yyyy-MM-dd')='1900-01-01' then '--' else TO_CHAR(CANCEL_DATE, 'yyyy-MM-dd') end  CANCEL_DATE,
         CANCEL_REASON,
         companyid
    FROM BDS_BASE_DATA.CMP_DC_NATIONAL
 WHERE delete_flag='0' 
 order by IS_CANCEL 
 )
 <trim prefix="WHERE" prefixOverrides="AND |OR ">
                   <if test="companyId != null and companyId!=''">
                        lower(companyid) = lower(#{companyId})
                   </if>
                    <if test="uscc != null and uscc!=''">
                       or lower(companyid) = lower(#{uscc})
                   </if>
            </trim>

"""
var basic = db.base_data.camel().select(sql);
if(basic==null){
  basic=[];
} 
for(item in basic){
    if(item.get("auditShipTyp")!=null){
        var s=item.get("auditShipTyp").split(",");
        var shipName="";
        for(type in s){
            shipName+=TagUtils.getTagNameByCode("auditShipTypeTag",type)+" ";            
        }
        if(shipName!=null){
            item.put("auditShipTypeCn",shipName.substring(0,shipName.length()-1));
        }
    }
    item.put("ifTempCn",TagUtils.getTagNameByCode("tempMarkTag",item.get("ifTemp")::string));//是否临时证书
    item.put("orgName",TagUtils.getTagNameByCode("issuOrgTag",item.get("issuingOrganizationCode")::string));//签发机构
    item.put("isCancelCn",TagUtils.getTagNameByCode("cancelMarkTag",item.get("isCancel")::string));//是否注销
    item.put("certificationTypeCn",TagUtils.getTagNameByCode("companyCertTypeTag",item.get("certificationType")::string));//证书类型
}
return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: basic
	});