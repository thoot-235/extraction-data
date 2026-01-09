{
  "properties" : { },
  "id" : "55707e898566401fb363caf0d31e288f",
  "script" : null,
  "groupId" : "6f3efe31c5a444338c7afc53597cc47c",
  "name" : "人员管理",
  "createTime" : null,
  "updateTime" : 1702723455967,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getCompPerson",
  "method" : "GET",
  "parameters" : [ {
    "name" : "uscc",
    "value" : "91320803733745800F",
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
      "children" : [ ]
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import log;
import response;
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;

uscc=(uscc==null?"":uscc).replace("<em>","").replace("</em>","");

var anjiSql = """
  select a.NAME,
         a.ID_CARD_NO,
         a.POST_NAME_CODE,
         a.DEPT_AND_POST,
         a.SEX,
         a.OFFICE_TELEPHONE,
         a.MOBILE_PHONE,
         a.NO_OF_COC
          FROM BDS_BASE_DATA.CMP_SHORE_BASE_MANAGER a
         inner join BDS_BASE_DATA.Company_Info_All b
            on a.companyid = b.company_id
         WHERE a.delete_flag = '0'
           and b.uscc = #{uscc}
"""
var anji = db.base_data.camel().select(anjiSql);

for (item in anji) {
    //脱敏处理
    item.put("_mobilePhone", DesensitizationUtil.mobilePhone(item.get("mobilePhone")))
    item.put("officeTelephone", DesensitizationUtil.mobilePhone(item.get("officeTelephone")))
    item.put("idCardNo", DesensitizationUtil.idCardNum(item.get("idCardNo")))
    item.put("noOfCoc", DesensitizationUtil.isIdCardNo(item.get("noOfCoc")))
}

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: anji
	});