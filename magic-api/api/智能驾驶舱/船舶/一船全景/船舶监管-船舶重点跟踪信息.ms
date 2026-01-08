{
  "properties" : { },
  "id" : "copy1704858849280d89293",
  "script" : null,
  "groupId" : "a2f8b128e2c64d9eba631714dd3787a1",
  "name" : "船舶监管-船舶重点跟踪信息",
  "createTime" : null,
  "updateTime" : 1742811441449,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getShipTrackingInfo",
  "method" : "GET",
  "parameters" : [ {
    "name" : "mmsi",
    "value" : "413401430",
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
  }, {
    "name" : "size",
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
  }, {
    "name" : "code",
    "value" : "list",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"total\": 0,\n    \"result\": []\n}",
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
    }, {
      "name" : "result",
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
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;



var mmsiSql="""

select  SHIP_REG_NO,SHIP_FIRSTREG_NO  from  bds_base_data.sc_ship_basic_data  where  mmsi=#{mmsi} and  rownum=1
"""
var shipDetail=db.base_data.camel().selectOne(mmsiSql);


if(shipDetail==null){
    return response.json({
    resultCode: 200,
    resultMsg: "未查询到船舶基本信息",
    total: 0,
    result: []
    });   
}
var shipRegNo=shipDetail.get("shipRegNo");
var shipFirstRegNo=shipDetail.get("shipFirstregNo");

if((shipRegNo==null||shipRegNo=="")&&(shipFirstRegNo==null||shipFirstRegNo=="")){
return response.json({
    resultCode: 200,
    resultMsg: "未查询到船舶基本信息",
    total: 0,
    result: []
    });
}

var pageNum = page;
pageNum = pageNum != null & pageNum != '' ? pageNum : 1

var pageSize = size;
pageSize = pageSize != null & pageSize != '' ? pageSize : 10
if(shipFirstRegNo!=null&&shipFirstRegNo!=''){
    selectSql="""
    and(    
     ?{shipFirstRegNo,  trim(SHIP_FIRSTREG_NO)=#{shipFirstRegNo}} 
     ?{shipRegNo, or trim(ship_reg_no)=#{shipRegNo}} 
    )
    """
}else if(shipRegNo!=null&&shipRegNo!=''){
     selectSql="""
    and(
     ?{shipRegNo, trim(ship_reg_no)=#{shipRegNo}} 
     ?{shipFirstRegNo, or trim(SHIP_FIRSTREG_NO)=#{shipFirstRegNo}} 
    )
    """
}else{
    return response.json({
    resultCode: 200,
    resultMsg: "船舶登记号或者首次船舶登记号必须传其中一个值！！！",
    total: 0,
    result: data
    });
}


 //重点跟踪信息
 var shipTrackListSql="""
 select rowno,  total_count, NATION_CERT_ISSUE_ORG,
        TRACKING_NO,SHIP_NO,SHIP_NAME_CN,SHIP_NAME_EN,NATION_CODE,REGPORT_CODE,SHIP_REG_NO,SHIP_FIRSTREG_NO,SHIP_ID,SHIP_IMO,
        SHIP_CARD_NO,MMSI,SHIP_TYPE_CODE,SHIP_GROSSTON,SHIP_ENGINE_POWER,SHIP_BUILT_DATE,SHIP_INSPECT_ORG,SHIP_OWNER,SHIP_OPERATOR_CN,
        SHIP_MANAGER_CN,REGPORT_ORG_CODE,REGPORT_ORG_NAME,
        INSPECT_DATE,PORT_CODE,CREAT_ORG,CREAT_DATE,TRACKING_REASON,TRACKING_RANGE,
        NATION_CERT_NO,SHIP_INSPECT_ISSUE_ORG,SHIP_INSPECT_CERT_NO,EQPT1_NAME,EQPT1_NO,EQPT2_NAME,EQPT2_NO,REMARK,
        DECLARE_ORG,DECLARE_DATE,RELEASE_MARK,
         RELEASE_DATE,
        RELEASE_REASON, rownumber
    from (select rownum rowno,   total_count, NATION_CERT_ISSUE_ORG,
        TRACKING_NO,SHIP_NO,SHIP_NAME_CN,SHIP_NAME_EN,NATION_CODE,REGPORT_CODE,SHIP_REG_NO,SHIP_FIRSTREG_NO,SHIP_ID,SHIP_IMO,
        SHIP_CARD_NO,MMSI,SHIP_TYPE_CODE,SHIP_GROSSTON,SHIP_ENGINE_POWER,SHIP_BUILT_DATE,SHIP_INSPECT_ORG,SHIP_OWNER,SHIP_OPERATOR_CN,
        SHIP_MANAGER_CN,REGPORT_ORG_CODE,REGPORT_ORG_NAME,
        INSPECT_DATE,PORT_CODE,CREAT_ORG,CREAT_DATE,TRACKING_REASON,TRACKING_RANGE,
        NATION_CERT_NO,SHIP_INSPECT_ISSUE_ORG,SHIP_INSPECT_CERT_NO,EQPT1_NAME,EQPT1_NO,EQPT2_NAME,EQPT2_NO,REMARK,
        DECLARE_ORG,DECLARE_DATE,RELEASE_MARK,
         RELEASE_DATE,
        RELEASE_REASON, rownumber
          from (      
     select count(TRACKING_NO) over() total_count,
        e.TRACKING_RANGE,e.TRACKING_NO,e.SHIP_NO,e.SHIP_NAME_CN,e.SHIP_NAME_EN,e.NATION_CODE,e.REGPORT_CODE,e.SHIP_REG_NO,e.SHIP_FIRSTREG_NO,e.SHIP_ID,e.SHIP_IMO,
        e.SHIP_CARD_NO,e.MMSI,e.SHIP_TYPE_CODE,e.SHIP_GROSSTON,e.SHIP_ENGINE_POWER,e.SHIP_BUILT_DATE,e.SHIP_INSPECT_ORG,e.SHIP_OWNER,e.SHIP_OPERATOR_CN,
        e.SHIP_MANAGER_CN,e.REGPORT_ORG_CODE,e.REGPORT_ORG_NAME,to_char(e.INSPECT_DATE,'yyyy-MM-dd')
        INSPECT_DATE,e.PORT_CODE,e.CREAT_ORG,e.CREAT_DATE,e.TRACKING_REASON,
        e.NATION_CERT_ISSUE_ORG,e.NATION_CERT_NO,e.SHIP_INSPECT_ISSUE_ORG,e.SHIP_INSPECT_CERT_NO,e.EQPT1_NAME,e.EQPT1_NO,e.EQPT2_NAME,e.EQPT2_NO,e.REMARK,
        e.DECLARE_ORG,to_char(e.DECLARE_DATE,'yyyy-MM-dd') DECLARE_DATE,
        case when e.RELEASE_MARK is null  and e.RELEASE_DATE<sysdate then '1'
         when e.RELEASE_MARK is null  and e.RELEASE_DATE>sysdate then '0'   
         else e.RELEASE_MARK
        end 
        RELEASE_MARK,
        case when to_char(e.RELEASE_DATE,'yyyy-MM-dd')='1900-01-01' then '' when
        to_char(e.RELEASE_DATE,'yyyy-MM-dd')!='1900-01-01' then to_char(e.RELEASE_DATE,'yyyy-MM-dd') end RELEASE_DATE,
        e.RELEASE_REASON,row_number() over(order by TRACKING_NO DESC) as rownumber from SHP_KEY_TRACK_SHIP e where 1=1 
                   and delete_flag='0'
                   and e.RELEASE_MARK<>'9'
                     """+selectSql+""" 
                     ) b
              where rownum <= (#{pageNum}*#{pageSize})) a
              where a.rowno >((#{pageNum}-1)* #{pageSize})  
              order by RELEASE_MARK,release_Date desc
 """

var data = db.biz_data.camel().select(shipTrackListSql);
var totalCount = 0;
for (item in data) {
    item.put("invsgtType", TagUtils.getTagNameByCode("releaseMark", item.get("invsgtType")))
    item.put("nationCode", TagUtils.getTagNameByCode("nationalityTag", item.get("nationCode")))
    item.put("shipTypeCode", TagUtils.getTagNameByCode("shipClassTag", item.get("shipTypeCode")))
    item.put("portCode", TagUtils.getTagNameByCode("portListTag", item.get("portCode")))
    item.put("nationCertIssueOrg", TagUtils.getTagNameByCode("issuOrgTag", item.get("nationCertIssueOrg")))
    item.put("shipInspectIssueOrg", TagUtils.getTagNameByCode("issuOrgTag", item.get("shipInspectIssueOrg")))
    item.put("declareOrg", TagUtils.getTagNameByCode("issuOrgTag", item.get("declareOrg")))
    item.put("trackingReason", TagUtils.getTagNameByCode("trackingReason", item.get("trackingReason")))
    item.put("releaseMark", TagUtils.getTagNameByCode("releaseMark", item.get("releaseMark")))
    item.put("trackingRange", TagUtils.getTagNameByCode("trackingRange", item.get("trackingRange")))
    totalCount = item.get("totalCount");
}

if (data == null) {
    data = [];
}
if(code=="nums"){
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: {"nums":Integer.parseInt(totalCount::string)}
});
}else if (code=="list"){
    
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    total: Integer.parseInt(totalCount::string),
    result: data
});
}else{
  return response.json({
    resultCode: 200,
    resultMsg: "请输入正确请求参数【code】",
    total: 0,
    result: []
    });
}
