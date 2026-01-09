{
  "properties" : { },
  "id" : "fc83b3d4b1f1453ab6e7610d26a3f097",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "公司符合证明信息修改范围字段",
  "createTime" : null,
  "updateTime" : 1693552388873,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/queryCompDcNationalUpdate",
  "method" : "GET",
  "parameters" : [ {
    "name" : "docId",
    "value" : "e2e60453-d3c6-4ac0-9cbd-2ceed489948e",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"needAudit\": {\n            \"CANCEL_DATE\": \"\",\n            \"CANCEL_REASON\": \"\"\n        },\n        \"noNeedAudit\": {}\n    }\n}",
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
      "defaultValue" : null,
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
      "defaultValue" : null,
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
      "type" : null,
      "defaultValue" : null,
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
        "defaultValue" : null,
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ {
          "name" : "CANCEL_DATE",
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
          "name" : "CANCEL_REASON",
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
        "defaultValue" : null,
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
import log;
 import 'org.ssssssss.magic.utils.TreeUtil' as TreeUtil;

import response;
companyId=(companyId==null?"":companyId).replace("<em>","").replace("</em>","");
var sql = """

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
WHERE  doc_id = #{docId}
                   
                   
          

"""
var basic = db.base_data.selectOne(sql);

var fieldsPowerSql=""" select * from bds_base_data.sc_table_fields where table_name_en='BDS_BASE_DATA.CMP_DC_NATIONAL'""";

var fieldsPower=db.base_data.select(fieldsPowerSql);//字段权限控制

var LastData=TreeUtil.ScZzMap(basic, fieldsPower);//代码组装返回值


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: LastData
	});