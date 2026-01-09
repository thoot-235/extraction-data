{
  "properties" : { },
  "id" : "d95ae03d1f8b4cf98511665ba3441715",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "查询安检信息之船旗国安全检查(FSC)",
  "createTime" : null,
  "updateTime" : 1747107070726,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/ShipflagState",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipId",
    "value" : "",
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
    "value" : "2023-01-01 10:02:23",
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
    "value" : "2025-02-01 13:02:23",
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
    "required" : false,
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
    "dataType" : "String",
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
        "defaultValue" : null,
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
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;
shipId=(shipId==null?"":shipId).replace("<em>","").replace("</em>","");
var pageNum = page;
pageNum= pageNum!=null&pageNum!=''? pageNum :1

var pageSize = size;
pageSize= pageSize!=null&pageSize!=''? pageSize :10

var pageStart = """ select *
        from (select rownum rowno, b.*
              from (""";
var pageEnd = """ ) b
        where rownum <= ( #{pageNum} * #{pageSize})) a
        where a.rowno > ( ( #{pageNum} - 1 ) * #{pageSize} )""";

var sql="""select DOMESTIC_SECURITY_NUMBER,STATUS_CONTROL_ID,TASK_ID,VOYAGE_ID,PREL_INVEST_DOMESTIC_SECNO,INSPECT_TYPE,
        SHIP_NO,CAPTAIN_CERT_NO,CAPTAIN_PHONE,PORT_CODE,INSPECTOR_CODE,INSPECTOR_NAME,PRATICE_INSPECTOR_CODE,
        PRATICE_INSPECTOR_NAME,to_char(INSPECT_DATE,'yyyy-MM-dd')INSPECT_DATE,PRELIMINARY_REVIEW_SIGN,DETENTION_MARK,INSPECT_ACTION,OTHER_DESC,REMARK,
        NUMBER_OF_DEFECTS,CORRECT_MARK,NOT_CLOSE_DEFECTSNUM,IS_SPECIAL_INSP,SECURITY_TYPE,IS_PASS_SPEC_INSP,
        PRIORITY_ORDER,FSC_BUSI_NO,RISK_ATTRIBUTE,count(*) OVER() total_count from (select
        x.DOMESTIC_SECURITY_NUMBER,x.STATUS_CONTROL_ID,x.TASK_ID,x.VOYAGE_ID,x.PREL_INVEST_DOMESTIC_SECNO,x.INSPECT_TYPE,
        x.SHIP_NO,x.CAPTAIN_CERT_NO,x.CAPTAIN_PHONE,x.PORT_CODE,x.INSPECTOR_CODE,x.INSPECTOR_NAME,x.PRATICE_INSPECTOR_CODE,
        x.PRATICE_INSPECTOR_NAME,x.INSPECT_DATE,x.PRELIMINARY_REVIEW_SIGN,x.DETENTION_MARK,x.INSPECT_ACTION,x.OTHER_DESC,x.REMARK,
        x.NUMBER_OF_DEFECTS,x.CORRECT_MARK,x.NOT_CLOSE_DEFECTSNUM,x.IS_SPECIAL_INSP,x.SECURITY_TYPE,x.IS_PASS_SPEC_INSP,
        x.PRIORITY_ORDER,x.FSC_BUSI_NO,x.RISK_ATTRIBUTE
        from bds_biz_data.SHP_STATE_CONTROL x
        where delete_flag='0' and x.ship_no = (SELECT  DISTINCT SHIP_NO FROM
        (select ship_id, 'A'||ship_firstreg_no SHIP_NO from SHP_BASIC_DATA  where ship_id=#{shipId}) where rownum =1 )
        union all
        select
        x.DOMESTIC_SECURITY_NUMBER,x.STATUS_CONTROL_ID,x.TASK_ID,x.VOYAGE_ID,x.PREL_INVEST_DOMESTIC_SECNO,x.INSPECT_TYPE,
        x.SHIP_NO,x.CAPTAIN_CERT_NO,x.CAPTAIN_PHONE,x.PORT_CODE,x.INSPECTOR_CODE,x.INSPECTOR_NAME,x.PRATICE_INSPECTOR_CODE,
        x.PRATICE_INSPECTOR_NAME,x.INSPECT_DATE,x.PRELIMINARY_REVIEW_SIGN,x.DETENTION_MARK,x.INSPECT_ACTION,x.OTHER_DESC,x.REMARK,
        x.NUMBER_OF_DEFECTS,x.CORRECT_MARK,x.NOT_CLOSE_DEFECTSNUM,x.IS_SPECIAL_INSP,x.SECURITY_TYPE,x.IS_PASS_SPEC_INSP,
        x.PRIORITY_ORDER,x.FSC_BUSI_NO,x.RISK_ATTRIBUTE
        from bds_biz_data.SHP_STATE_CONTROL x
        where delete_flag='0' and x.ship_no = ( select  'B' || ship_imo from SHP_BASIC_DATA  where ship_imo IS NOT NULL AND  ship_id=#{shipId} and rownum =1 ))x
        where 1=1
        ?{beginTime,and x.INSPECT_DATE >= to_date(#{beginTime}, 'yyyy-MM-dd hh24:mi:ss')}
        ?{endTime,and x.INSPECT_DATE <= to_date(#{endTime}, 'yyyy-MM-dd hh24:mi:ss')}
        order by x.inspect_date desc""";

var list=db.base_data.camel().select(pageStart + sql + pageEnd);
var totalCount=0;
for(item in list){
        if(item.get("preliminaryReviewSign")!=null && item.get("preliminaryReviewSign")!=''){
                item.put("preliminaryReviewSign",TagUtils.getTagNameByCode("inspectMark",item.get("preliminaryReviewSign")::string))
        }
        item.put("portCodeCn",TagUtils.getTagNameByCode("portListTag",item.get("portCode")))    
        item.put("portCode",TagUtils.getTagNameByCode("portListTag",item.get("portCode")))    
        item.put("detentionMark",TagUtils.getTagNameByCode("isOwnTag",item.get("detentionMark")))            
    totalCount = item.get("totalCount");
}  
if(list==null){
  list=[];
}   
var back={
        "list":list,
        "total":Integer.parseInt(totalCount::string) 
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: back 
});