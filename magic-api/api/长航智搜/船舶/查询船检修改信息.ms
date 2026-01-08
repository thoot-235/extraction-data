{
  "properties" : { },
  "id" : "c6b35650515d4df2aa1d828f948206e1",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "查询船检修改信息",
  "createTime" : null,
  "updateTime" : 1693552389809,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getShipCertIssueMessUpdate",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipSurveyNo",
    "value" : "202065080021",
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
    "name" : "certName",
    "value" : "内河船舶防止油污证书",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"needAudit\": {\n            \"CERT_ISSUEDDATE\": \"\",\n            \"CERT_ISSUEDPLACE\": \"\",\n            \"SHIP_SURVEY_ITEM_NAME\": \"\"\n        },\n        \"noNeedAudit\": {}\n    }\n}",
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
      "name" : "data",
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
        "name" : "needAudit",
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
          "name" : "CERT_ISSUEDDATE",
          "value" : "",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : null,
          "defaultValue" : null,
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "CERT_ISSUEDPLACE",
          "value" : "",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : null,
          "defaultValue" : null,
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "SHIP_SURVEY_ITEM_NAME",
          "value" : "",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : null,
          "defaultValue" : null,
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        } ]
      }, {
        "name" : "noNeedAudit",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Object",
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
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
import 'org.ssssssss.magic.utils.TreeUtil' as TreeUtil;

import response
var  Sql = """select
       A.SHIP_SURVEY_NO,
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
          ?{certName,and a.cert_Name= #{certName}}
          ?{shipSurveyNo, and a.SHIP_SURVEY_NO =  #{shipSurveyNo}}
""";



var list = db.base_data.selectOne(Sql); 

if(list!=null){
   
            list.put("certIdNum", list.get("certId"))
            //      数据脱敏
            list.put("certId", DesensitizationUtil.certNo(list.get("certId")::string))
         
}


var fieldsPowerSql=""" select * from bds_base_data.sc_table_fields where table_name_en='BDS_BASE_DATA.SHP_SUVERY_CERT_ISSUE'""";

var fieldsPower=db.base_data.select(fieldsPowerSql);//字段权限控制

var LastData=TreeUtil.ScZzMap(list, fieldsPower);//代码组装返回值


return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: LastData
});