{
  "properties" : { },
  "id" : "3ace2bbb81e544afb06740d0892f9cf6",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "船企证书临期存储",
  "createTime" : null,
  "updateTime" : 1693552389071,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/saveComCertExpireRecoeds",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"操作成功\",\n    \"result\": []\n}",
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
      "value" : "操作成功",
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
import 'org.springframework.util.DigestUtils' as DigestUtils;
import 'org.springblade.core.tool.utils.StringUtil' as StringUtil;
import log;
import response;
import http;
//查询订阅了船企服务且通过认证的信息
var comSql="""
select
	distinct com.company_id ,
	com.remind_phone,
	com.user_id,
	use.mh_userid
from
	blade_user_company com,
	blade_user use
where
	com.user_id = use.id
	and position('company' in com."role" )>0
order by
	com.company_id
"""
var subscriptionSql="""
  select distinct user_id from catalog.subscription_scheduled where  subscription_id='E8DCC83D927A3517E050007F01000D8B'
"""

var comIdList = []
comIdList =select t.* from db.bladex.camel().select(comSql) t  join db.frame.camel().select(subscriptionSql) g on t.mhUserid = g.userId;
var comIdStr="";
for (item in comIdList){
  comIdStr+="'"+item.get("companyId")+"'";
  comIdStr+=",";
}
if(StringUtil.isBlank(comIdStr)){
  return response.json({
        resultCode: 200,
        resultMsg: "操作成功",
        result: docCert
	});
}

comIdStr=comIdStr.substring(0,comIdStr.length()-1);
comIdStr="("+comIdStr;
comIdStr=comIdStr+")";
//船企doc证书  证书编号，截止日期，公司组织结构代码，公司名称
var sql = """
  select '船企doc证书' as cert_Name,
      DOC_NO AS cert_Print_No,
       TO_CHAR(a.EXPIRY_DATE, 'yyyy-MM-dd') as EXPIRY_DATE,
       a.companyid as COMPANY_ID,
       b.COMPANY_NAME,
       b.MOBILE_PHONE
  FROM BDS_BASE_DATA.CMP_DC_NATIONAL a
  left join BDS_BASE_DATA.CMP_SHIPPING_COMPANY b
    on a.companyid = b.companyid
    where TRUNC(EXPIRY_DATE) = TRUNC(SYSDATE+7)--剩余七天有效期
    and a.IS_CANCEL!='1'
    and a.companyid in ${comIdStr}
    order by a.companyid
"""
var docCert = db.base_data.camel().select(sql);
for(item in docCert){
  /////////////短信通知///////////////////
 // var msg = "智搜平台提醒您："+item.get("companyName")+"["+item.get("companyId")+"]的公司符合证明即将过期，过期时间："+item.get("expiryDate")+",请知晓。"
 var msg = "智搜平台提醒您："+item.get("companyName")+"["+item.get("companyId")+"]的公司符合证明即将过期，过期时间："+item.get("expiryDate")+",请以业务数据为准。"
  item.put("message",msg);
  var compId=item.get("companyId");
  for(ie in comIdList){
      if(ie.get("companyId")==compId){
          item.put("userId",ie.get("userId"));
          item.put("remindPhone",ie.get("remindPhone"));
          item.put("mhUserId",ie.get("mhUserid"));
          break;
      }
  }
  ////////////系统临期通知结果储存///////////////////////
  var selectSql = """
  select count(1) num from catalog.expiry_warning
  where cert_name=#{item.certName}
  and expiry_date = to_date(#{item.expiryDate},'yyyy-mm-dd hh24:mi:ss')
  and object_id=#{item.companyId}
  and CERT_PRINT_NO=#{item.certPrintNo}
   """
   var count = db.base_data.camel().selectOne(selectSql);
   if(count.get("num")<1){
      var insertSql ="""
   insert into catalog.expiry_warning(message,type,user_id,REMIND_PHONE,MH_USER_ID,cert_name,expiry_date,object_id,object_name,if_read,import_time,cert_print_no) values(#{item.message},'2',#{item.userId},#{item.remindPhone},#{item.mhUserId},#{item.certName},to_date(#{item.expiryDate},'yyyy-mm-dd hh24:mi:ss'),#{item.companyId},#{item.companyName},'0',sysdate,#{item.certPrintNo})
   """
   db.base_data.insert(insertSql);
   } 
}
return response.json({
        resultCode: 200,
        resultMsg: "操作成功",
        result: []
	});