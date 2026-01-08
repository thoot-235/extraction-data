{
  "properties" : { },
  "id" : "013243a519584353b05f4cb18f4e21b2",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "危货申报单详情接口",
  "createTime" : null,
  "updateTime" : 1693552389577,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getDangerCarriageInfoDetail",
  "method" : "GET",
  "parameters" : [ {
    "name" : "carryId",
    "value" : "MDGCS0200329161727599LC7",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"compCode\": \"张家港保税区瑞创国际物流有限公司\",\n        \"compName\": \"张家港保税区瑞创国际物流有限公司\",\n        \"applyDate\": \"2020-03-29\",\n        \"arriveOrDepart\": \"进港\",\n        \"startPort\": \"湛江\",\n        \"endPort\": \"张家港\",\n        \"adPortDate\": \"2020-03-30\",\n        \"contactName\": \"陈宏祥\",\n        \"contactPhone\": \"58638519\",\n        \"voyageNo\": \"111H\",\n        \"_contactPhone\": \"58****19\"\n    }\n}",
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
      "name" : "data",
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
        "name" : "compCode",
        "value" : "张家港保税区瑞创国际物流有限公司",
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
        "name" : "compName",
        "value" : "张家港保税区瑞创国际物流有限公司",
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
        "name" : "applyDate",
        "value" : "2020-03-29",
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
        "name" : "arriveOrDepart",
        "value" : "进港",
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
        "name" : "startPort",
        "value" : "湛江",
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
        "name" : "endPort",
        "value" : "张家港",
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
        "name" : "adPortDate",
        "value" : "2020-03-30",
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
        "name" : "contactName",
        "value" : "陈宏祥",
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
        "name" : "contactPhone",
        "value" : "58638519",
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
        "name" : "voyageNo",
        "value" : "111H",
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
        "name" : "_contactPhone",
        "value" : "58****19",
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
    } ]
  }
}
================================
import response;
import 'com.success.data.tag.TagUtils' as TagUtils
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
var sql = """
select  a.comp_code,a.comp_name ,--货主
case when to_char(a.APPLY_DATE,'yyyy-mm-dd')='1900-01-01' then '--' else to_char(a.APPLY_DATE,'yyyy-mm-dd') end APPLY_DATE,--申报时间
b.arrive_or_depart,
case when b.arrive_or_depart='0' then nvl(prev_PORT_name,prev_PORT_CODE) 
else nvl(ad_Port_Name,ad_Port_code)  end start_port ,
case when b.arrive_or_depart='0' then nvl(ad_Port_Name,ad_Port_code)
else nvl(next_Port_Name,next_Port_code)  end end_port ,
case when to_char(AD_PORT_DATE,'yyyy-mm-dd')='1900-01-01' then '--' else to_char(AD_PORT_DATE,'yyyy-mm-dd')  end  AD_PORT_DATE,--抵离港时间
CONTACT_NAME,--联系人姓名
CONTACT_PHONE,--联系电话
VOYAGE_NO
from  bds_biz_data.DGR_CARRY a ,bds_biz_data.DGR_CARRY_VOY b
where a.CARRY_ID = b.carry_id 
and  a.CARRY_ID=#{carryId}
"""

var data = db.biz_data.camel().selectOne(sql);
if (data != null) {
    data.put("arriveOrDepart", TagUtils.getTagNameByCode("arrivalOrLeave", data.get("arriveOrDepart")));
    data.put("startPort", TagUtils.getTagNameByCode("wfPortListTag", data.get("startPort")));
    data.put("endPort", TagUtils.getTagNameByCode("wfPortListTag", data.get("endPort")));
    data.put("_contactPhone",DesensitizationUtil.isFixed(data.get("contactPhone")==null?"":data.get("contactPhone").asString()));
}

return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: data
});