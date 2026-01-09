{
  "properties" : { },
  "id" : "80bf71912dea4b7ea1ab362d1fd1ba2c",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "根据inspetId查询进出口查验船员",
  "createTime" : null,
  "updateTime" : 1693552389952,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getCrewListByInspetId",
  "method" : "GET",
  "parameters" : [ {
    "name" : "inspType",
    "value" : "IMP",
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
    "name" : "inspetId",
    "value" : "20170101102917415010009",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": []\n}",
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
      "children" : [ ]
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
import response;
var sql=null;
if("IMP".equals(inspType)){
sql="""
select 
crew_name name,
id_card_no,
crew_cret_no certNo,
 '船员证书'  cert_Type,
 COMP_DUTIES_CODE duty_Code
from  bds_biz_data.SHP_IMP_INSP_CREW
where crew_id=#{inspetId}
"""
}
else{

    sql="""
   
select 
crew_name name,
id_card_no,
crew_cret_no certNo,
 '船员证书'  cert_Type,
 COMP_DUTIES_CODE duty_Code
from  bds_biz_data.SHP_exP_INSP_CREW
where EXP_CREW_ID=#{inspetId}

    """
}

var ret=db.biz_data.camel().select(sql);
for(item in ret){
      item.put("dutyCode", TagUtils.getTagNameByCode("offiDutyTag", item.get("dutyCode")));
        item.put("_idCardNo", item.get("idCardNo")::string);
        item.put("idCardNo", DesensitizationUtil.idCardNum(item.get("idCardNo")::string))
}
 return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        data: ret
    });