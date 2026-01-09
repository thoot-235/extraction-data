{
  "properties" : { },
  "id" : "cbd74a040056471ab481b3ea6fe6a395",
  "script" : null,
  "groupId" : "69f9552f682c4f55a2f59d8663909151",
  "name" : "船员证书临期存储",
  "createTime" : 1679883323077,
  "updateTime" : 1693552389369,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/saveCrewCertExpireRecoeds",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"操作成功\",\n    \"result\": \"\"\n}",
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
      "value" : "操作成功",
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
      "dataType" : "String",
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
import 'org.springframework.util.DigestUtils' as DigestUtils;
import 'org.springblade.core.tool.utils.StringUtil' as StringUtil;
import log;
import response;
import http;
//查询系统认证船员的用户列表
var crewIdCardNoListSql="""
  select
	buc.id_card_no,
	buc.user_id ,
	buc.remind_phone ,
	ue.mh_userid
from
	blade_user_certification buc,
	blade_user ue
where
	buc.user_id = ue.id
	and position('crew' in buc.role )>0
    order by id_card_no 
"""
var subscriptionSql="""
select distinct user_id from catalog.subscription_scheduled where  subscription_id='E800B3CCFB7B2314E053E20BA8C0D52D'
"""
//var crewIdCardNoList=db.bladex.camel().select(crewIdCardNoListSql);var 

var cardList = []
cardList =select t.* from db.bladex.camel().select(crewIdCardNoListSql) t  join db.frame.camel().select(subscriptionSql) g on t.mhUserid = g.userId;
var cardStr="";
for (item in cardList){
  cardStr+="'"+item.get("idCardNo")+"'";
  cardStr+=",";
}
if(StringUtil.isBlank(cardStr)){
   return response.json({
        resultCode: 200,
        resultMsg: "操作成功",
        result: docCert
	});
}
cardStr=cardStr.substring(0,cardStr.length()-1);
cardStr="("+cardStr;
cardStr=cardStr+")";
//查询船员证书
var cert = [];
//提前多少天通知
var day = 7;
//*******************************1、海员证 *********************************************//
var seaManSql ="""
    select '海员证' as cert_name,
          a.CERT_PRINT_NO,
          TO_CHAR(a.EXPIRY_DATE, 'yyyy-MM-dd') as EXPIRY_DATE,
          a.id_card_no,
          a.name,
          b.MOBILE_PHONE
      from bds_base_data.CREW_CERT_SEAMAN a
      left join bds_base_data.CREW_BASIC_DATA b
        on a.id_card_no = b.id_card_no
    where TRUNC(EXPIRY_DATE) =TRUNC(SYSDATE +#{day}) 
      and a.cert_status = '1'
     and a.id_card_no in ${cardStr} 
      order by a.id_card_no 
"""
var seaManCert = db.base_data.camel().select(seaManSql);
cert.addAll(seaManCert);
//*******************************2、内河适任证 *********************************************//
var inlCmptSql ="""
    select '内河适任证' as cert_name,
       a.CERT_PRINT_NO,
       TO_CHAR(a.EXPIRY_DATE, 'yyyy-MM-dd') as EXPIRY_DATE,
       a.id_card_no,
       a.name,
       b.MOBILE_PHONE
  from bds_base_data.CREW_CERT_INL_CMPT a
  left join bds_base_data.CREW_BASIC_DATA b
    on a.id_card_no = b.id_card_no
 where TRUNC(EXPIRY_DATE) = TRUNC(SYSDATE + #{day}) 
   and a.cert_status = '1'
    and a.id_card_no in ${cardStr} 
      order by a.id_card_no 
"""
var inlCmptCert = db.base_data.camel().select(inlCmptSql);
cert.addAll(inlCmptCert);
//*******************************3、海船适任证 *********************************************//
var seaManCmptSql ="""
    select '海船适任证' as cert_name,
       a.CERT_PRINT_NO,
       TO_CHAR(a.EXPIRY_DATE, 'yyyy-MM-dd') as EXPIRY_DATE,
       a.id_card_no,
       a.name,
       b.MOBILE_PHONE
  from bds_base_data.CREW_CERT_SEAMAN_CMPT a
  left join bds_base_data.CREW_BASIC_DATA b
    on a.id_card_no = b.id_card_no
 where TRUNC(EXPIRY_DATE) = TRUNC(SYSDATE + #{day}) 
   and a.cert_status = '1'
    and a.id_card_no in ${cardStr} 
    order by a.id_card_no 
"""
var seaManCmptCert = db.base_data.camel().select(seaManCmptSql);
cert.addAll(seaManCmptCert);
//*******************************4、小型海船适任证 *********************************************//
var smallSeaManSql ="""
    select '小型海船适任证' as cert_name,
       a.CERT_PRINT_NO,
       TO_CHAR(a.EXPIRY_DATE, 'yyyy-MM-dd') as EXPIRY_DATE,
       a.id_card_no,
       a.name,
       b.MOBILE_PHONE
  from bds_base_data.CREW_CERT_SMALL_SEAMAN a
  left join bds_base_data.CREW_BASIC_DATA b
    on a.id_card_no = b.id_card_no
 where TRUNC(EXPIRY_DATE) = TRUNC(SYSDATE + #{day}) 
   and a.cert_status = '1'
   and a.id_card_no in ${cardStr} 
    order by a.id_card_no 
"""
var smallSeaManCert = db.base_data.camel().select(smallSeaManSql);
cert.addAll(smallSeaManCert);
//*******************************5、引航员适任证 *********************************************//
var pilotCmptSql ="""
    select '引航员适任证' as cert_name,
       a.CERT_PRINT_NO,
       TO_CHAR(a.EXPIRY_DATE, 'yyyy-MM-dd') as EXPIRY_DATE,
       a.id_card_no,
       a.name,
       b.MOBILE_PHONE
  from bds_base_data.CREW_CERT_PILOT_CMPT a
  left join bds_base_data.CREW_BASIC_DATA b
    on a.id_card_no = b.id_card_no
 where TRUNC(EXPIRY_DATE) = TRUNC(SYSDATE + #{day}) 
   and a.cert_status = '1'
     and a.id_card_no in ${cardStr} 
    order by a.id_card_no 
"""
var pilotCmptCert = db.base_data.camel().select(pilotCmptSql);
cert.addAll(pilotCmptCert);
//服务簿 长期有效  不存在临期情况
//*******************************6、内河培训合格证 *********************************************//
var inlTrainQuliSql ="""
     select '内河培训合格证' as cert_name,
        a.QUALCERT_PRINT_NO CERT_PRINT_NO,
        TO_CHAR(a.EXPIRY_DATE, 'yyyy-MM-dd') as EXPIRY_DATE,
        a.id_card_no,
        a.name,
        b.MOBILE_PHONE
   from bds_base_data.CREW_CERT_INL_TRAIN_QULI a
   left join bds_base_data.CREW_BASIC_DATA b
     on a.id_card_no = b.id_card_no
  where TRUNC(EXPIRY_DATE) = TRUNC(SYSDATE + #{day})
    and a.cert_status = '1'
    and a.id_card_no in ${cardStr} 
    order by a.id_card_no 
"""
var inlTrainQuliCert = db.base_data.camel().select(inlTrainQuliSql);
cert.addAll(inlTrainQuliCert);
//*******************************7、内河培训合格证 *********************************************//
var inlTrainQuliSql ="""
     select '内河培训合格证' as cert_name,
        a.QUALCERT_PRINT_NO CERT_PRINT_NO,
        TO_CHAR(a.EXPIRY_DATE, 'yyyy-MM-dd') as EXPIRY_DATE,
        a.id_card_no,
        a.name,
        b.MOBILE_PHONE
   from bds_base_data.CREW_CERT_INL_TRAIN_QULI a
   left join bds_base_data.CREW_BASIC_DATA b
     on a.id_card_no = b.id_card_no
  where TRUNC(EXPIRY_DATE) = TRUNC(SYSDATE +#{day})
    and a.cert_status = '1'
     and a.id_card_no in ${cardStr} 
    order by a.id_card_no 
"""
var inlTrainQuliCert = db.base_data.camel().select(inlTrainQuliSql);
cert.addAll(inlTrainQuliCert);
//*******************************8、海船培训合格证 *********************************************//
var seaTrainQuliSql ="""
      select '['||TRAIN_ITEM_NAME||']海船培训合格证项目' as cert_name,
        a.CERT_PRINT_NO,
        TO_CHAR(a.EXPIRY_DATE, 'yyyy-MM-dd') as EXPIRY_DATE,
        a.id_card_no,
        a.name,
        b.MOBILE_PHONE
   from bds_base_data.CREW_SEA_CERT_TRAIN_ITEM a
   left join bds_base_data.CREW_BASIC_DATA b
     on a.id_card_no = b.id_card_no
  where TRUNC(EXPIRY_DATE) = TRUNC(SYSDATE + #{day})
    and a.cert_status = '1'
     and a.id_card_no in ${cardStr} 
    order by a.id_card_no 
"""
var seaTrainQuliCert = db.base_data.camel().select(seaTrainQuliSql);
cert.addAll(seaTrainQuliCert);
//*******************************9、健康证 *********************************************//
var fitSql ="""
       select '健康证' as cert_name,
        a.CERT_PRINT_NO,
        TO_CHAR(a.EXPIRY_DATE, 'yyyy-MM-dd') as EXPIRY_DATE,
        a.id_card_no,
        a.name,
        b.MOBILE_PHONE
   from bds_base_data.CREW_CERT_SEAMAN_FIT a
   left join bds_base_data.CREW_BASIC_DATA b
     on a.id_card_no = b.id_card_no
  where TRUNC(EXPIRY_DATE) = TRUNC(SYSDATE + #{day})
    and a.cert_status = '1'
     and a.id_card_no in ${cardStr} 
    order by a.id_card_no 

"""
var fitCert = db.base_data.camel().select(fitSql);
cert.addAll(fitCert);
//*******************************10、游艇驾驶证 *********************************************//
var yachtDriveSql ="""
        select '游艇驾驶证' as cert_name,
        a.CERT_PRINT_NO,
        TO_CHAR(a.EXPIRY_DATE, 'yyyy-MM-dd') as EXPIRY_DATE,
        a.id_card_no,
        a.name,
        b.MOBILE_PHONE
   from bds_base_data.CREW_CERT_YACHT_DRIVE_LIC a
   left join bds_base_data.CREW_BASIC_DATA b
     on a.id_card_no = b.id_card_no
  where TRUNC(EXPIRY_DATE) = TRUNC(SYSDATE + #{day})
    and a.cert_status = '1'
      and a.id_card_no in ${cardStr} 
    order by a.id_card_no 
"""
var yachtDriveCert = db.base_data.camel().select(yachtDriveSql);
cert.addAll(yachtDriveCert);
//*******************************11、海进江（内河行驶资格证明） *********************************************//
var inlNavQcSql ="""
        select '内河行驶资格证明' as cert_name,
        a.CERT_PRINT_NO,
        TO_CHAR(a.EXPIRY_DATE, 'yyyy-MM-dd') as EXPIRY_DATE,
        a.id_card_no,
        a.name,
        b.MOBILE_PHONE
   from bds_base_data.CREW_CERT_INL_NAV_QC a
   left join bds_base_data.CREW_BASIC_DATA b
     on a.id_card_no = b.id_card_no
  where TRUNC(EXPIRY_DATE) = TRUNC(SYSDATE + #{day})
    and a.cert_status = '1'
      and a.id_card_no in ${cardStr} 
    order by a.id_card_no 
"""
var inlNavQcCert = db.base_data.camel().select(inlNavQcSql);
cert.addAll(inlNavQcCert);
///**************************** */
for(item in cert){
  //船员手机
  var mobile = item.get("mobilePhone");
  var idCardNo = item.get("idCardNo");
  //var msg = "智搜平台提醒您：船员"+item.get("name")+"["+item.get("idCardNo")+"]的"+item.get("certName")+"即将过期，过期时间："+item.get("expiryDate")+",请及时处理。"
  var msg = "智搜平台提醒您：船员"+item.get("name")+"["+item.get("idCardNo")+"]的"+item.get("certName")+"即将过期，过期时间："+item.get("expiryDate")+",请以业务数据为准。"
  item.put("message",msg);
  for(ie in cardList){
      if(ie.get("idCardNo")==idCardNo){
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
  and object_id=#{item.idCardNo}
  and type='0'
  and CERT_PRINT_NO=#{item.certPrintNo}
   """
   var count = db.base_data.camel().selectOne(selectSql);
   if(count.get("num")<1){
      var insertSql ="""
   insert into catalog.expiry_warning(message,type,user_id,REMIND_PHONE,MH_USER_ID,cert_name,expiry_date,object_id,object_name,if_read,import_time,cert_print_no) 
   values(#{item.message},'0',#{item.userId},#{item.remindPhone},#{item.mhUserId},#{item.certName},to_date(#{item.expiryDate},'yyyy-mm-dd hh24:mi:ss'),#{item.idCardNo},#{item.name},'0',sysdate,#{item.certPrintNo})
   """
   db.base_data.insert(insertSql);
   } 
    
}
return response.json({
        resultCode: 200,
        resultMsg: "操作成功",
        result: docCert
	});
