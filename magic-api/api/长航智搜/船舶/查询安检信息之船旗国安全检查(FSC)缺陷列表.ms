{
  "properties" : { },
  "id" : "f82a6890a8974f6ab0302996633452c2",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "查询安检信息之船旗国安全检查(FSC)缺陷列表",
  "createTime" : null,
  "updateTime" : 1755594950634,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/ShipAndflagState",
  "method" : "GET",
  "parameters" : [ {
    "name" : "domesticSecurityNumber",
    "value" : "20180703090932705090202",
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
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1679660612337,\n    \"executeTime\": 644\n}",
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
      "name" : "code",
      "value" : "-1",
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
      "name" : "message",
      "value" : "系统内部出现错误",
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
      "name" : "data",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Object",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "timestamp",
      "value" : "1679660612337",
      "description" : "",
      "required" : false,
      "dataType" : "Long",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "executeTime",
      "value" : "644",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
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
import response;
// 基本信息
var sql="""select x.DOMESTIC_SECURITY_NUMBER,x.STATUS_CONTROL_ID,x.TASK_ID,x.VOYAGE_ID,x.PREL_INVEST_DOMESTIC_SECNO,x.INSPECT_TYPE,x.SHIP_NO,x.CAPTAIN_CERT_NO,x.CAPTAIN_PHONE,x.PORT_CODE,
       x.INSPECTOR_CODE,x.INSPECTOR_NAME,x.PRATICE_INSPECTOR_CODE,x.PRATICE_INSPECTOR_NAME,to_char(x.INSPECT_DATE,'yyyy-mm-dd') INSPECT_DATE,x.PRELIMINARY_REVIEW_SIGN,x.DETENTION_MARK,x.INSPECT_ACTION,x.OTHER_DESC,x.REMARK,x.NUMBER_OF_DEFECTS,x.CORRECT_MARK,x.NOT_CLOSE_DEFECTSNUM,x.IS_SPECIAL_INSP,x.SECURITY_TYPE,x.IS_PASS_SPEC_INSP,x.PRIORITY_ORDER,x.FSC_BUSI_NO,x.RISK_ATTRIBUTE,'A'||y.SHIP_FIRSTREG_NO SHIP_NO,y.SHIP_REG_NO,y.SHIP_ID,y.SHIP_FIRSTREG_NO,y.SHIP_NAME_CN,y.SHIP_NAME_EN,y.SHIP_INSPECT_NO,y.SHIP_CALLSIGN,y.SHIP_IMO,y.MMSI,y.SHIP_REGION_TYPE,y.SHIP_ROUTE_CODE,y.SAILINGAREA_CODE,y.REGPORT_CODE,y.ORIG_REGPORT_NAME,y.SHIP_TYPE_CODE,y.SHIP_HULL_MATERIAL_CODE,to_char(y.SHIP_BUILT_DATE,'yyyy-mm-dd')SHIP_BUILT_DATE,y.SHIPYARD_CN,y.SHIP_LENGTH,y.SHIP_BREADTH,y.SHIP_DEPTH,y.SHIP_GROSSTON,y.SHIP_NETTON,y.SHIP_DWT,y.SHIP_ENGINE_TYPE_CODE,y.SHIP_ENGINE_NUM,y.SHIP_ENGINE_POWER,y.SHIP_PROPELLER_KIND_CODE,y.SHIP_PROPELLER_NUM,y.SHIP_SUMMER_DRAFT,y.SHIP_WIND_LEVEL,y.SHIP_MINIMUM_FREEBOARD,y.SHIP_CONTAINER_NUM,y.SHIP_PARKING_NUM,y.SHIP_PASSENGER_NUM,y.REMARK,y.STATUS_FLAG,y.ORG_CODE,count(*) OVER() total_count
  from bds_biz_data.SHP_STATE_CONTROL x
  left join SHP_BASIC_DATA y
    on x.ship_no = 'A' || y.ship_firstreg_no
 where x.DOMESTIC_SECURITY_NUMBER = #{domesticSecurityNumber} and x.delete_flag='0' and y.delete_flag='0'
 order by x.inspect_date desc""";

var obj=db.base_data.camel().selectOne(sql);
var totalCount =0;
if(obj!=null){
        totalCount = obj.get("totalCount");
        obj.put("shipRouteCode",TagUtils.getTagNameByCode("shipRouteLineTag",obj.get("shipRouteCode")))    
        obj.put("regportCode",TagUtils.getTagNameByCode("shipRegportTag",obj.get("regportCode")))    
        obj.put("shipTypeCode",TagUtils.getTagNameByCode("shipClassTag",obj.get("shipTypeCode"))) 
        obj.put("sailingareaCode",TagUtils.getTagNameByCode("shipRouteAreaTag",obj.get("sailingareaCode")))        
        obj.put("shipHullMaterialCode",TagUtils.getTagNameByCode("shipHullTag",obj.get("shipHullMaterialCode")))        
        obj.put("shipEngineTypeCode",TagUtils.getTagNameByCode("shipEngineTag",obj.get("shipEngineTypeCode")))        
        obj.put("shipPropellerKindCode",TagUtils.getTagNameByCode("shipPropllerTag",obj.get("shipPropellerKindCode")))        
        obj.put("shipRegionType",TagUtils.getTagNameByCode("shipRegionTypeTag",obj.get("shipRegionType")))        
        obj.put("orgCode",TagUtils.getTagNameByCode("issuOrgTag",obj.get("orgCode")))        
        obj.put("portCode",TagUtils.getTagNameByCode("portListTag",obj.get("portCode")))        
        obj.put("inspectType",TagUtils.getTagNameByCode("inspectTypeTag",obj.get("inspectType")))        
        obj.put("riskAttribute",TagUtils.getTagNameByCode("riskAttributeLevel",obj.get("riskAttribute")))        
        obj.put("priorityOrder",TagUtils.getTagNameByCode("priorityOrderTag",obj.get("priorityOrder")))        
        obj.put("isSpecialInsp",TagUtils.getTagNameByCode("releaseMark",obj.get("isSpecialInsp")))        
        obj.put("isPassSpecInsp",TagUtils.getTagNameByCode("releaseMark",obj.get("isPassSpecInsp")))  
        obj.put("detentionMark",TagUtils.getTagNameByCode("releaseMark",obj.get("detentionMark"))) 
        obj.put("_captainPhone",DesensitizationUtil.isFixed(obj.get("captainPhone")==null?"":obj.get("captainPhone").asString()));
}
        
if(obj==null){
  obj={};
}                
var back={
        "list":obj,
        "total":Integer.parseInt(totalCount::string) 
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: back 
});