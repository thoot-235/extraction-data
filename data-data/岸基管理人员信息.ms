{
  "properties" : { },
  "id" : "044983b6157a443eae1732f604d6b6da",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "岸基管理人员信息",
  "createTime" : null,
  "updateTime" : 1693552388965,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getShoreBaseManger",
  "method" : "GET",
  "parameters" : [ {
    "name" : "companyId",
    "value" : "<em>232</em>",
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
      "dataType" : "Array",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
import log;
import response;
companyId=(companyId==null?"":companyId).replace("<em>","").replace("</em>","");

if(companyId == null || companyId==''){
   return response.json({
      "code":500,
      "status": "failed",
      "message": "参数异常",
      "result": null
   });
}
var sql = """
  select NAME,
         ID_CARD_NO,
         POST_NAME_CODE,
         DEPT_AND_POST,
         SEX,
         OFFICE_TELEPHONE,
         MOBILE_PHONE,
         trim(NO_OF_COC) NO_OF_COC
    FROM BDS_BASE_DATA.CMP_SHORE_BASE_MANAGER
  WHERE delete_flag='0' ?{companyId,and COMPANYID = #{companyId}}
"""
var basic = db.base_data.camel().select(sql);
if (basic == null) {
    basic = [];
}
for (item in basic) {
    //脱敏处理
    item.put("_mobilePhone", DesensitizationUtil.mobilePhone(item.get("mobilePhone")))
    item.put("officeTelephone", DesensitizationUtil.mobilePhone(item.get("officeTelephone")))
    item.put("idCardNo", DesensitizationUtil.idCardNum(item.get("idCardNo")))
    item.put("noOfCoc", DesensitizationUtil.isIdCardNo(item.get("noOfCoc")))
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: basic
});