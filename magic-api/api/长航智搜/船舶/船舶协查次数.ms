{
  "properties" : { },
  "id" : "ab7f9d5dece84951a1ec073feea67a83",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "船舶协查次数",
  "createTime" : null,
  "updateTime" : 1727405738567,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/queryShipCooperation",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipRegNo",
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
  }, {
    "name" : "shipFirstRegNo",
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
    "name" : "shipRegNo",
    "value" : "280823000035",
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
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
      "name" : "total",
      "value" : "0",
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
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;
var pageNum = page;
pageNum= pageNum!=null&pageNum!=''? pageNum :1

var pageSize = size;
pageSize= pageSize!=null&pageSize!=''? pageSize :10

var selectSql="""""";
if(shipFirstRegNo!=null&&shipFirstRegNo!=''){
    selectSql="""
    and(    
     ?{shipFirstRegNo,  trim(SHIP_FIRSTREG_NO)=#{shipFirstRegNo}} 
     ?{shipRegNo, or trim(ship_reg_no)=#{shipRegNo}} 
    )
    """
}else if(shipRegNo!=null&&shipRegNo!=''){
  var shipFirstRegNoSql = """select ship_firstreg_no from c_cb_ship_data where ship_reg_no = #{shipRegNo}"""
  shipFirstRegNo = db.ods_data.camel().selectValue(shipFirstRegNoSql);
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
var cbSql = """

select rowno, total_count, APPLY_NO,SHIP_NO,SHIP_NAME_CN,SHIP_NAME_EN,NATION_CODE,REGPORT_CODE,SHIP_REG_NO,SHIP_FIRSTREG_NO,SHIP_ID,SHIP_IMO,
        SHIP_CARD_NO,SHIP_TYPE_CODE,SHIP_GROSSTON,SHIP_BUILT_DATE,SHIP_OWNER,SHIP_OPERATOR_CN,REGPORT_ORG_CODE,REGPORT_ORG_NAME,SUBMIT_UNIT,
        TRUSTEE_UNIT,INVSGT_TYPE,INVSGT_PERIOD,INVSGT_REASON,INVSGT_DEMAND,STATUS_FLAG,AUDIT_COMMENT,SUBMIT_UNIT_CONTACT,SUBMIT_UNIT_TEL, REPLY_DATE,
        REPLY_ORG,REPLY_CONTACT,REPLY_CONTACT_TEL,REPLY_CONTENT,RELEASE_DATE,RELEASE_DESC,REMARK,rownumber ,flag
    from (select rownum rowno, total_count, APPLY_NO,SHIP_NO,SHIP_NAME_CN,SHIP_NAME_EN,NATION_CODE,REGPORT_CODE,SHIP_REG_NO,SHIP_FIRSTREG_NO,SHIP_ID,SHIP_IMO,
        SHIP_CARD_NO,SHIP_TYPE_CODE,SHIP_GROSSTON,SHIP_BUILT_DATE,SHIP_OWNER,SHIP_OPERATOR_CN,REGPORT_ORG_CODE,REGPORT_ORG_NAME,SUBMIT_UNIT,
        TRUSTEE_UNIT,INVSGT_TYPE,INVSGT_PERIOD,INVSGT_REASON,INVSGT_DEMAND,STATUS_FLAG,AUDIT_COMMENT,SUBMIT_UNIT_CONTACT,SUBMIT_UNIT_TEL, REPLY_DATE,
        REPLY_ORG,REPLY_CONTACT,REPLY_CONTACT_TEL,REPLY_CONTENT,RELEASE_DATE,RELEASE_DESC,REMARK,rownumber,flag 
          from (
              
     select count(APPLY_NO) over() total_count,
        e.APPLY_NO,e.SHIP_NO,e.SHIP_NAME_CN,e.SHIP_NAME_EN,e.NATION_CODE,e.REGPORT_CODE,e.SHIP_REG_NO,e.SHIP_FIRSTREG_NO,e.SHIP_ID,e.SHIP_IMO,
        e.SHIP_CARD_NO,e.SHIP_TYPE_CODE,e.SHIP_GROSSTON,e.SHIP_BUILT_DATE,e.SHIP_OWNER,e.SHIP_OPERATOR_CN,e.REGPORT_ORG_CODE,e.REGPORT_ORG_NAME,e.SUBMIT_UNIT,
        e.TRUSTEE_UNIT,e.INVSGT_TYPE,e.INVSGT_PERIOD,e.INVSGT_REASON,e.INVSGT_DEMAND,e.STATUS_FLAG,e.AUDIT_COMMENT,e.SUBMIT_UNIT_CONTACT,e.SUBMIT_UNIT_TEL,
        e.SUBMIT_UNIT_FAX,to_char(e.ISSUE_DATE,'yyyy-MM-dd') ISSUE_DATE,to_char(e.EXPIRE_DATE,'yyyy-MM-dd') EXPIRE_DATE,
        case when to_char(e.REPLY_DATE,'yyyy-MM-dd')='1900-01-01' then '' when
        to_char(e.REPLY_DATE,'yyyy-MM-dd')!='1900-01-01' then to_char(e.REPLY_DATE,'yyyy-MM-dd HH:mm:ss') end
        REPLY_DATE,
        e.REPLY_ORG,e.REPLY_CONTACT,e.REPLY_CONTACT_TEL,e.REPLY_CONTENT,
        case when to_char(e.RELEASE_DATE,'yyyy-MM-dd')='1900-01-01' then '' when
        to_char(e.RELEASE_DATE,'yyyy-MM-dd')!='1900-01-01' then to_char(e.RELEASE_DATE,'yyyy-MM-dd') end RELEASE_DATE,
        e.RELEASE_DESC,e.REMARK
        ,row_number() over(order by APPLY_NO DESC) as rownumber,
          case  when 
           release_desc is not null then '1'
         else
           case  when  RELEASE_DATE is   null or RELEASE_DATE ='' or to_char(RELEASE_DATE,'yyyy')='1990' then '0'
          else '1' end 
       end flag
        
         from SHP_ASSIST_INVESTIGATION e where 1=1 and delete_flag='0' 
                     """+selectSql+"""

                     ) b
              where rownum <= (#{pageNum}*#{pageSize})) a
              where a.rowno >((#{pageNum}-1)* #{pageSize})  
              order by flag asc ,RELEASE_DATE desc  
                     """



var data =  db.biz_data.camel().select(cbSql);
var totalCount=0;
 for(item in data){
             item.put("invsgtType",TagUtils.getTagNameByCode("invsgtType",item.get("invsgtType")))
             item.put("invsgtPeriod",TagUtils.getTagNameByCode("invsgtPeriod",item.get("invsgtPeriod")))  
             item.put("nationCode",TagUtils.getTagNameByCode("nationalityTag",item.get("nationCode"))) 
             item.put("shipTypeCode",TagUtils.getTagNameByCode("shipClassTag",item.get("shipTypeCode"))) 
             item.put("regportCode",TagUtils.getTagNameByCode("shipRegportTag",item.get("regportCode"))) 
             item.put("replyOrg",TagUtils.getTagNameByCode("issuOrgTag",item.get("replyOrg")))  
             item.put("submitUnit",TagUtils.getTagNameByCode("issuOrgTag",item.get("submitUnit")))  
             item.put("releaseMark",TagUtils.getTagNameByCode("releaseMark",item.get("flag")))  
              item.put("invsgtDemand",TagUtils.getTagNameByCode("invsgtDemandTag",item.get("invsgtDemand")))
             totalCount = item.get("totalCount");

        }  

if(data==null){
    data=[];
   }
return response.json({
      
        resultCode: 200,
        resultMsg: "查询成功",
        total:Integer.parseInt(totalCount::string) ,
        result: data
	});