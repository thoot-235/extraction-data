{
  "properties" : { },
  "id" : "873c4e2b3c414448811e7cd91dac8d19",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "查询安检信息之现场监督检查",
  "createTime" : null,
  "updateTime" : 1742885588817,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getSiteSupervision",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipId",
    "value" : "CN20099436517",
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
    "name" : "beginTime",
    "value" : "2023-01-02",
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
    "name" : "endTime",
    "value" : "2023-01-09",
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
    "value" : "10",
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
      "children" : [ {
        "name" : "list",
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
      }, {
        "name" : "total",
        "value" : "0",
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
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;
shipId = (shipId == null ? "" : shipId).replace("<em>", "").replace("</em>", "");
// var pageNum = page;
// pageNum= pageNum!=null&pageNum!=''? pageNum :1

// var pageSize = size;
// pageSize= pageSize!=null&pageSize!=''? pageSize :10

var pageStart = """ select *
        from (select  b.*
              from (""";
var pageEnd = """ ) b
        where rowno <= ( #{page} * #{size})) a
        where a.rowno > ( ( #{page} - 1 ) * #{size} )""";

var sql = """select distinct x.INSPECT_NO,x.SUPERVISION_ID,x.TASK_ID,x.VOYAGE_ID,x.SHIP_NO,x.SHIP_ID,x.SHIP_NAME_CN,x.SHIP_OPERATOR,
        x.SHIP_BUSINESS_ADDRESS,x.SHIP_BUSINESS_FAX,x.SHIP_MANAGER,x.SHIP_MANAGER_ADDR,x.SHIP_MANAGER_FAX,x.CAPTAIN_NAME,
        x.INSPECT_ORG,x.INSPECTION_SITE,to_char(x.INSPECT_DATE,'yyyy-MM-dd') INSPECT_DATE,x.INSPECTOR_CODE,x.INSPECTOR_NAME,x.INSPECT_TIME_LIMIT,x.REASON,x.PROBLEM_OR_VIOLATION,x.REMARK,x.SPOT_BUSI_NO,x.PRIORITY_ORDER,x.RISK_ATTRIBUTE,x.PRATICE_INSPECTOR_CODE,
        x.PRATICE_INSPECTOR_NAME,x.IS_SPECIAL_INSPECT,x.INSPECT_TYPE,x.IF_SAFEINSPECT,x.PRELIMINARY_REVIEW_SIGN,
        x.INITIAL_INSPECT_NO,x.NUMBER_OF_DEFECTS,x.CORRECT_MARK,x.NOT_CLOSE_DEFECTSNUM,y.SHIP_REG_NO,
        y.SHIP_FIRSTREG_NO,y.SHIP_NAME_EN,y.SHIP_INSPECT_NO,y.SHIP_CALLSIGN,y.SHIP_IMO,
        y.MMSI,y.SHIP_REGION_TYPE,y.SHIP_ROUTE_CODE,y.SAILINGAREA_CODE,y.REGPORT_CODE,y.ORIG_REGPORT_NAME,
        y.SHIP_TYPE_CODE,y.SHIP_HULL_MATERIAL_CODE,y.SHIP_BUILT_DATE,y.SHIPYARD_CN,y.SHIP_LENGTH,y.SHIP_BREADTH,y.SHIP_DEPTH,
        y.SHIP_GROSSTON,y.SHIP_NETTON,y.SHIP_DWT,y.SHIP_ENGINE_TYPE_CODE,y.SHIP_ENGINE_NUM,y.SHIP_ENGINE_POWER,
        y.SHIP_PROPELLER_KIND_CODE,y.SHIP_PROPELLER_NUM,y.SHIP_SUMMER_DRAFT,y.SHIP_WIND_LEVEL,y.SHIP_MINIMUM_FREEBOARD,
        y.SHIP_CONTAINER_NUM,y.SHIP_PARKING_NUM,y.SHIP_PASSENGER_NUM,
       y.STATUS_FLAG,y.ORG_CODE,rownum rowno,count(*) OVER() total_count
        from bds_biz_data.SHP_SITE_SUPERVISION x left join (select * from SHP_BASIC_DATA where status_flag = '1') y 
        on x.ship_no = ('A'||y.SHIP_FIRSTREG_NO) where x.SHIP_ID = #{shipId}
        ?{inspectNo,and x.INSPECT_NO=#{inspectNo}}
        ?{beginTime,and x.INSPECT_DATE >= to_date(#{beginTime}, 'yyyy-MM-dd hh:mi:ss')}
        ?{endTime,and x.INSPECT_DATE <= to_date(#{endTime}, 'yyyy-MM-dd hh:mi:ss')}
        and x.delete_flag='0' and y.delete_flag='0'
        order by x.inspect_date desc""";

var list = db.base_data.camel().select(pageStart + sql + pageEnd);

var totalCount = 0;
if (list != "" && list != null) {
    for (item in list) {
        if (item.get("preliminaryReviewSign") != null && item.get("preliminaryReviewSign") != '') {
            item.put("preliminaryReviewSign", TagUtils.getTagNameByCode("inspectMark", item.get("preliminaryReviewSign").toString()))
        }
        item.put("riskAttribute", TagUtils.getTagNameByCode("riskAttributeLevel", item.get("riskAttribute")))
        item.put("priorityOrder", TagUtils.getTagNameByCode("priorityOrderTag", item.get("priorityOrder")))
        item.put("regportCodeCn", TagUtils.getTagNameByCode("shipRegportTag", item.get("regportCode")))
        item.put("regportCode", TagUtils.getTagNameByCode("shipRegportTag", item.get("regportCode")))
        item.put("shipRouteCodeCn", TagUtils.getTagNameByCode("shipRouteLineTag", item.get("shipRouteCode")))
        item.put("shipRouteCode", TagUtils.getTagNameByCode("shipRouteLineTag", item.get("shipRouteCode")))
        item.put("shipTypeCodeCN", TagUtils.getTagNameByCode("shipClassTag", item.get("shipTypeCode")))
        item.put("shipTypeCode", TagUtils.getTagNameByCode("shipClassTag", item.get("shipTypeCode")))
        item.put("sailingareaCodeCn", TagUtils.getTagNameByCode("shipRouteAreaTag", item.get("sailingareaCode")))
        item.put("sailingareaCode", TagUtils.getTagNameByCode("shipRouteAreaTag", item.get("sailingareaCode")))
        item.put("shipHullMaterialCodeCn", TagUtils.getTagNameByCode("shipHullTag", item.get("shipHullMaterialCode")))
        item.put("shipHullMaterialCode", TagUtils.getTagNameByCode("shipHullTag", item.get("shipHullMaterialCode")))
        item.put("shipEngineTypeCodeCn", TagUtils.getTagNameByCode("shipEngineTag", item.get("shipEngineTypeCode")))
        item.put("shipEngineTypeCode", TagUtils.getTagNameByCode("shipEngineTag", item.get("shipEngineTypeCode")))
        item.put("shipPropellerKindCodeCn", TagUtils.getTagNameByCode("shipPropllerTag", item.get("shipPropellerKindCode")))
        item.put("shipPropellerKindCode", TagUtils.getTagNameByCode("shipPropllerTag", item.get("shipPropellerKindCode")))
        item.put("shipRegionType", TagUtils.getTagNameByCode("shipRegionTypeTag", item.get("shipRegionType")))
        item.put("orgCode", TagUtils.getTagNameByCode("issuOrgTag", item.get("orgCode")))
        item.put("inspectOrg", TagUtils.getTagNameByCode("inspectOrgTag", item.get("inspectOrg")))
        item.put("inspectionSite", TagUtils.getTagNameByCode("berthTag", item.get("inspectionSite")))
        // item.put("riskAttribute", TagUtils.getTagNameByCode("riskAttributeLevel", item.get("riskAttribute")))
        // item.put("priorityOrder", TagUtils.getTagNameByCode("priorityOrderTag", item.get("priorityOrder")))
        totalCount = item.get("totalCount");
    }
}

if (list == null) {
    list = [];
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