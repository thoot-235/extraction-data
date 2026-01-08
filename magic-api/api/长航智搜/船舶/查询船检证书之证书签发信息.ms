{
  "properties" : { },
  "id" : "19c2c2d19a694badb924f75d7fcfc888",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "查询船检证书之证书签发信息",
  "createTime" : null,
  "updateTime" : 1693552389820,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getShipCertIssueMess",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipInsRegNo",
    "value" : "",
    "description" : "船检登记号",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "shipSurveyNo",
    "value" : "",
    "description" : "船舶检验编号",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "certName",
    "value" : "22",
    "description" : "证书名",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "ifEffective",
    "value" : "0",
    "description" : "是否有效",
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
  "responseBody" : "{\n    \"resultCode\": 401,\n    \"resultMsg\": \"参数【shipInsRegNo】、【shipSurveyNo】、【certName】不可同时为空不可同时为空\"\n}",
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
      "value" : "401",
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
      "value" : "参数【shipInsRegNo】、【shipSurveyNo】、【certName】不可同时为空不可同时为空",
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
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
import response

if((shipInsRegNo == null || shipInsRegNo=='')&&(shipSurveyNo==null ||shipSurveyNo==''||certName==null ||certName=='')){
   return response.json({
        resultCode: 200,
        resultMsg: "参数【shipInsRegNo】、【shipSurveyNo】、【certName】不可同时为空",
	});
}
var  Sql = """select * from (select
       A.SHIP_SURVEY_NO,a.SHIP_SURVEY_NO||'&&'||a.CERT_NAME as  identifier,
       A.CERT_NAME,
       B.SHIP_INS_REG_NO,
       A.SHIP_ID,
       A.CERT_ID,
       (case A.INS_CERT_ISSUE_WAY when '1' then '发证' when '2' then '签证' when '3' then '换发' when '4' then '补发' else '' end)INS_CERT_ISSUE_WAY,
       A.SHIP_SURVEY_ITEM_NAME,
       to_char(A.CERT_DUEDATE,'yyyy-mm-dd') as CERT_DUEDATE,
       to_char(A.CERT_ISSUEDDATE,'yyyy-mm-dd') as CERT_ISSUEDDATE,
       A.CERT_ISSUEDPLACE,
       A.CERT_ISSUED_ORG,
       A.PRINCIPAL_URVEYOR,
       A.SHIP_SURVEY_REMARK,
       (case  when cert_duedate>sysdate then '有效' when cert_duedate<sysdate then '无效' else '' end) as if_Effective,
       (case  when cert_duedate>sysdate then '1' when cert_duedate<sysdate then '0' else '' end)as if_Effective_Code
  from SHP_SUVERY_CERT_ISSUE A LEFT JOIN SHP_SUVERY_DATA B ON A.SHIP_SURVEY_NO=B.SHIP_SURVEY_NO
    where   1=1 
        ?{shipInsRegNo,and b.SHIP_INS_REG_NO = #{shipInsRegNo} }
        ?{shipSurveyNo, and a.SHIP_SURVEY_NO =  #{shipSurveyNo}}
        ?{certName, and a.CERT_NAME =  #{certName}}
        )
        where 1=1 
        ?{ifEffective, and if_Effective_Code =  #{ifEffective}}
""";



var list = db.base_data.camel().select(Sql); 

if(list){
    for (item in list) {
            item.put("certIdNum", item.get("certId"))
            //      数据脱敏
            item.put("certId", DesensitizationUtil.certNo(item.get("certId")::string))
         }
}

return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: list
});