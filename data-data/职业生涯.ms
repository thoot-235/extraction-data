{
  "properties" : { },
  "id" : "229cbee7ad1141798a153ec144a8ef6f",
  "script" : null,
  "groupId" : "429bf27232e44bdbae1a46ea3dcc6609",
  "name" : "职业生涯",
  "createTime" : null,
  "updateTime" : 1713167613725,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getCrewCareer",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"idCardNo\": \"Ir3I+MykcdB9i4OGn+tUqrQljI/DFPWiPa2U1ojh0gs=\",\r\n    \"page\": \"1\",\r\n    \"size\": \"100\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"list\": [],\n        \"total\": 0\n    }\n}",
  "description" : "",
  "requestBodyDefinition" : {
    "name" : "",
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ {
      "name" : "idCardNo",
      "value" : "Ir3I+MykcdB9i4OGn+tUqrQljI/DFPWiPa2U1ojh0gs=",
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
      "required" : false,
      "dataType" : "String",
      "type" : "",
      "defaultValue" : "1",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "size",
      "value" : "100",
      "description" : "",
      "required" : false,
      "dataType" : "String",
      "type" : "",
      "defaultValue" : "100",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    } ]
  },
  "responseBodyDefinition" : {
    "name" : "",
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "String",
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
      "name" : "result",
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
import org.springblade.common.utils.ZzSecurityHelper
import log;
import response;
var idCardNo=(body.idCardNo==null?"":body.idCardNo).replace("<em>","").replace("</em>","");
if(idCardNo==null || idCardNo ==""){
    return response.json({
        resultCode: 200,
        resultMsg: "idCardNo不能为空"
    });
}
log.info("------------------------idCardNo---------------------------"+idCardNo);
idCardNo = ZzSecurityHelper.decryptAES(idCardNo);
var pageNum = body.page;
pageNum= pageNum!=null&pageNum!=''? pageNum :1

var pageSize = body.size;
pageSize= pageSize!=null&pageSize!=''? pageSize :10


var pageStart = """ select *
        from (select rownum rowno, b.*
              from (""";
var pageEnd = """ ) b
        where rownum <= ( #{pageNum} * #{pageSize})) a
        where a.rowno > ( ( #{pageNum} - 1 ) * #{pageSize} )""";
        
var sql = """
     select x.*,count(*) OVER() total_count from (select  row_number() over(partition by a.SERIAL_NO order by c.cj_active_time desc) rn, a.SERIAL_NO,
       a.BUSINESS_CODE,
       a.IS_PART_TIMEJOB,
       a.OFFI_ORG_ID,
       a.OFFI_OPER_ID,
       a.OFFI_OPER_NAME,
       case when to_char(a.OFFI_OPER_TIME,'yyyy-mm-dd')='1900-01-01' then '--' else  to_char(a.OFFI_OPER_TIME,'yyyy-mm-dd hh24:mi:ss') end OFFI_OPER_TIME,
       a.APPL_STATE,
       a.VALID_FLAG,
       a.CREATER_ORG_ID,
       a.CREATER_ID,
       a.CREATER_NAME,
       case when to_char(a.CREATING_TIME,'yyyy-mm-dd')='1900-01-01' then '--' else to_char(a.CREATING_TIME,'yyyy-mm-dd hh24:mi:ss') end CREATING_TIME,
       a.ORG_ID,
       a.ID_CARD_NO,
       a.NAME,
       a.COMP_CERT_NO,
       a.CERT_TYPE_CODE,
       a.CERT_CATE_CODE,
       a.CERT_LEVEL_CODE,
       a.CERT_DUTY_CODE,
       a.SHIP_NO,
       a.SHIP_ID,
       a.OFFI_SHIP_NAME_CN,
       a.OFFI_SHIP_NAME_EN,
       a.SHIP_RANK,
       a.SHIP_GROSSTON,
       a.SHIP_ENGINE_POWER,
       a.SHIP_OWNER,
       a.SHIP_CLASS_CODE,
       a.NAVI_AREA,
       a.SHIP_ROUTE_CODE,
       a.DUTY_CAPTAIN_NAME,
       a.DUTY_CAPTAIN_ID,
       a.DUTY_CAPTAIN_PHONE,
       a.SHIP_PASSENGER_NUM,
       a.OFFI_DUTY,
       case when to_char(a.OFFI_DATE, 'yyyy-mm-dd')='1900-01-01' then '--' else to_char(a.OFFI_DATE, 'yyyy/MM/dd') end  as OFFI_DATE,
       a.OFFI_LOCATION,
       a.OFFI_LOCATION_NAME,
       a.OFFI_SOURCES,
      case when  to_char(a.DISMISS_DATE, 'yyyy-mm-dd')='1900-01-01' then '--' else to_char(a.DISMISS_DATE, 'yyyy/MM/dd') end  as DISMISS_DATE,
       a.DISMISS_PLACE,
       a.DISMISS_PLACE_NAME,
       a.DISMISS_SOURCES,
       a.DISM_OGR_ID,
       a.DISM_OPER_ID,
       a.DISM_OPER_NAME,
       case when to_char(a.DISM_OPER_TIME,'yyyy-mm-dd')='1900-01-01' then '--' else to_char(a.DISM_OPER_TIME,'yyyy-mm-dd hh24:mi:ss') end DISM_OPER_TIME,
       a.OFFI_AND_DISM_SIGN,
       a.DEPA_ENTRY_MARK,
       a.OFFI_DAYS,
       a.IFUSE_FLAG,
       a.IS_NORM_DISM,
       a.DISMISS_REAS,
       a.SMALVESS_SIGN,
       a.REMARK,
       a.CHECK_RESULT,
       a.CHECK_CONTENT,
       a.CREATE_DATE,
       a.LAST_UPDATE_DATE,b.ship_reg_no,(CASE WHEN b.SOURCE_CODE='CBDJ' THEN '船舶登记' when b.SOURCE_CODE='AQJD' then '船舶安全监督'
        when  b.SOURCE_CODE='PSC' then 'PSC'  ELSE '' END) AS DATA_SOPURCE,b.ship_imo,c.credi_ryb_flag,c.credi_sx_flag,c.credi_ch_flag
  from bds_biz_data.CREW_SERVICE_EXPE a left join sub_base_data.shp_basic_data b
on (a.ship_id=b.ship_id or a.ship_no=b.ship_no ) and (a.ship_id is not null or a.ship_no is not null)

 left join sub_biz_data.SHIP_DYNAMICS_DATA  c on (a.ship_id=c.ship_id or a.ship_no=c.ship_no ) and (a.ship_id is not null or a.ship_no is not null)
 and  c.cj_active_time is not null
 where a.delete_flag='0'
         and a.id_card_no = #{idCardNo}
         order by a.OFFI_DATE desc,decode(b.STATUS_FLAG,'1',1) desc 
     ) x where rn='1'
"""
//var ret = db.biz_data.camel().page(sql);

var list=db.biz_data.camel().select(pageStart+sql+pageEnd);
var totalCount=0;

    


//if(ret!=null&&ret.list!=null){
for (item in list) {
   var offiDays=item.get("offiDays")==null?"0":item.get("offiDays").asString();
    if("0"==offiDays){
      item.put("offiDays", "--");
    }
   
    totalCount = item.get("totalCount");
    item.put("offiDuty", TagUtils.getTagNameByCode("offiDutyTag", item.get("offiDuty")));
    item.put("offiSources", TagUtils.getTagNameByCode("offiSourcesTag", item.get("offiSources")));
    item.put("dismissSources", TagUtils.getTagNameByCode("offiSourcesTag", item.get("dismissSources")));
    item.put("shipRank", TagUtils.getTagNameByCode("shipRankTag", item.get("shipRank")));
    item.put("shipClassCode", TagUtils.getTagNameByCode("shipClassTag", item.get("shipClassCode")));
    item.put("naviArea", TagUtils.getTagNameByCode("naviAreaTag", item.get("naviArea")));
    item.put("validFlag", TagUtils.getTagNameByCode("validTag", item.get("validFlag")));
    if (null == item.get("offiLocationName") || "".equals(item.get("offiLocationName"))) {
        var LocationName = TagUtils.getTagNameByCode("portListTag", item.get("offiLocation"));
        if (item.get("offiLocation").equals(LocationName)) {
            LocationName = TagUtils.getTagNameByCode("issuOrgTag", item.get("offiLocation"));
        }
        item.put("offiLocationName", LocationName);
    }
    item.put("dismissPlaceName", TagUtils.getTagNameByCode("portListTag", item.get("dismissPlaceName")));
}
//}
var back={
        "list":list,
        "total":Integer.parseInt(totalCount::string)
}

return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: back
    // {
    //    "list":ret.list,
    //    "total":ret.total
    // }
});