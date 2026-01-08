{
  "properties" : { },
  "id" : "a1116ab0cf4c447c82889d4832d44e0f",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "在船船员之船员系统",
  "createTime" : null,
  "updateTime" : 1693552389608,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/queryServQuali",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipNo",
    "value" : "A350315000046",
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
    "name" : "page",
    "value" : "1",
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
    "name" : "size",
    "value" : "1",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"list\": [],\n        \"total\": 0\n    }\n}",
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
      "dataType" : "Object",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "list",
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
      }, {
        "name" : "total",
        "value" : "0",
        "description" : "",
        "required" : false,
        "dataType" : "String",
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

var cbSql;

cbSql = """
select rowno, total_count,
        SERIAL_NO,BUSINESS_CODE,IS_PART_TIMEJOB,OFFI_ORG_ID,OFFI_OPER_ID,OFFI_OPER_NAME,OFFI_OPER_TIME,APPL_STATE,
        VALID_FLAG,CREATER_ORG_ID,CREATER_ID,CREATER_NAME,CREATING_TIME,ORG_ID,ID_CARD_NO,NAME,COMP_CERT_NO,CERT_TYPE_CODE,
        CERT_CATE_CODE,CERT_LEVEL_CODE,CERT_DUTY_CODE,SHIP_NO,SHIP_ID,OFFI_SHIP_NAME_CN,OFFI_SHIP_NAME_EN,SHIP_RANK,
        SHIP_GROSSTON,SHIP_ENGINE_POWER,SHIP_OWNER,SHIP_CLASS_CODE,NAVI_AREA,SHIP_ROUTE_CODE,DUTY_CAPTAIN_NAME,DUTY_CAPTAIN_ID,
        DUTY_CAPTAIN_PHONE,SHIP_PASSENGER_NUM,OFFI_DUTY,OFFI_DATE,OFFI_LOCATION,OFFI_LOCATION_NAME,OFFI_SOURCES,DISMISS_DATE,
        DISMISS_PLACE,DISMISS_PLACE_NAME,DISMISS_SOURCES,DISM_OGR_ID,DISM_OPER_ID,DISM_OPER_NAME,DISM_OPER_TIME,
        OFFI_AND_DISM_SIGN,DEPA_ENTRY_MARK,OFFI_DAYS,IFUSE_FLAG,IS_NORM_DISM,DISMISS_REAS,SMALVESS_SIGN,REMARK,CHECK_RESULT,
        CHECK_CONTENT,CREATE_DATE,LAST_UPDATE_DATE
    from (select rownum rowno, total_count,
        SERIAL_NO,BUSINESS_CODE,IS_PART_TIMEJOB,OFFI_ORG_ID,OFFI_OPER_ID,OFFI_OPER_NAME,OFFI_OPER_TIME,APPL_STATE,
        VALID_FLAG,CREATER_ORG_ID,CREATER_ID,CREATER_NAME,CREATING_TIME,ORG_ID,ID_CARD_NO,NAME,COMP_CERT_NO,CERT_TYPE_CODE,
        CERT_CATE_CODE,CERT_LEVEL_CODE,CERT_DUTY_CODE,SHIP_NO,SHIP_ID,OFFI_SHIP_NAME_CN,OFFI_SHIP_NAME_EN,SHIP_RANK,
        SHIP_GROSSTON,SHIP_ENGINE_POWER,SHIP_OWNER,SHIP_CLASS_CODE,NAVI_AREA,SHIP_ROUTE_CODE,DUTY_CAPTAIN_NAME,DUTY_CAPTAIN_ID,
        DUTY_CAPTAIN_PHONE,SHIP_PASSENGER_NUM,OFFI_DUTY,OFFI_DATE,OFFI_LOCATION,OFFI_LOCATION_NAME,OFFI_SOURCES,DISMISS_DATE,
        DISMISS_PLACE,DISMISS_PLACE_NAME,DISMISS_SOURCES,DISM_OGR_ID,DISM_OPER_ID,DISM_OPER_NAME,DISM_OPER_TIME,
        OFFI_AND_DISM_SIGN,DEPA_ENTRY_MARK,OFFI_DAYS,IFUSE_FLAG,IS_NORM_DISM,DISMISS_REAS,SMALVESS_SIGN,REMARK,CHECK_RESULT,
        CHECK_CONTENT,CREATE_DATE,LAST_UPDATE_DATE
          from (
     select count(ID_CARD_NO) over() total_count,
        SERIAL_NO,BUSINESS_CODE,IS_PART_TIMEJOB,OFFI_ORG_ID,OFFI_OPER_ID,OFFI_OPER_NAME,OFFI_OPER_TIME,APPL_STATE,
        VALID_FLAG,CREATER_ORG_ID,CREATER_ID,CREATER_NAME,CREATING_TIME,ORG_ID,ID_CARD_NO,NAME,COMP_CERT_NO,CERT_TYPE_CODE,
        CERT_CATE_CODE,CERT_LEVEL_CODE,CERT_DUTY_CODE,SHIP_NO,SHIP_ID,OFFI_SHIP_NAME_CN,OFFI_SHIP_NAME_EN,SHIP_RANK,
        SHIP_GROSSTON,SHIP_ENGINE_POWER,SHIP_OWNER,SHIP_CLASS_CODE,NAVI_AREA,SHIP_ROUTE_CODE,DUTY_CAPTAIN_NAME,DUTY_CAPTAIN_ID,
        DUTY_CAPTAIN_PHONE,SHIP_PASSENGER_NUM,OFFI_DUTY,OFFI_DATE,OFFI_LOCATION,OFFI_LOCATION_NAME,OFFI_SOURCES,DISMISS_DATE,
        DISMISS_PLACE,DISMISS_PLACE_NAME,DISMISS_SOURCES,DISM_OGR_ID,DISM_OPER_ID,DISM_OPER_NAME,DISM_OPER_TIME,
        OFFI_AND_DISM_SIGN,DEPA_ENTRY_MARK,OFFI_DAYS,IFUSE_FLAG,IS_NORM_DISM,DISMISS_REAS,SMALVESS_SIGN,REMARK,CHECK_RESULT,
        CHECK_CONTENT,CREATE_DATE,LAST_UPDATE_DATE from
        CREW_SERVICE_EXPE where 1=1 and OFFI_AND_DISM_SIGN = '1'   
        and SHIP_NO = #{shipNo} or SHIP_ID = #{shipNo} 
        and delete_flag='0'
         ) b
              where rownum <= (#{page}*#{size})) a
              where a.rowno >((#{page}-1)* #{size})   
""";

import response
var list = db.biz_data.camel().select(cbSql);
var totalCount = 0;
for (item in list) {
    item.put("certTypeCode", TagUtils.getTagNameByCode("compCertTypeTag", item.get("certTypeCode")))
    item.put("certDutyCode", TagUtils.getTagNameByCode("offiDutyTag", item.get("certDutyCode")))
    item.put("isPartTimejob", TagUtils.getTagNameByCode("isPartTimeJob", item.get("isPartTimejob")))
    item.put("offiSources", TagUtils.getTagNameByCode("offiSourcesTag", item.get("offiSources")))
    if (null == item.get("offiLocationName") || "".equals(item.get("offiLocationName"))) {
        var LocationName = TagUtils.getTagNameByCode("portListTag", item.get("offiLocation"));
        if (item.get("offiLocation").equals(LocationName)) {
            LocationName = TagUtils.getTagNameByCode("issuOrgTag", item.get("offiLocation"));
            item.put("offiLocation", LocationName);
        }
        item.put("offiLocation", LocationName);
    }
    //脱敏处理
    item.put("idCardNo", DesensitizationUtil.idCardNum(item.get("idCardNo")))
    item.put("compCertNo", DesensitizationUtil.isIdCardNo(item.get("compCertNo")))
    totalCount = item.get("totalCount");
}
var back = {
    "list": list,
    "total": Integer.parseInt(totalCount::string)
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: back
});