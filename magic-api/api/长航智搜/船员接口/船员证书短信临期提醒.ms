{
  "properties" : { },
  "id" : "617048607e35410aa5af6cc5b96bf84a",
  "script" : null,
  "groupId" : "69f9552f682c4f55a2f59d8663909151",
  "name" : "船员证书短信临期提醒",
  "createTime" : 1679883323087,
  "updateTime" : 1693552389382,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/crewCertExpireMessage",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1672912225763,\n    \"executeTime\": 27\n}",
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
      "name" : "code",
      "value" : "-1",
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
      "name" : "message",
      "value" : "系统内部出现错误",
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
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "timestamp",
      "value" : "1672912225763",
      "description" : "",
      "required" : false,
      "dataType" : "Long",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "executeTime",
      "value" : "27",
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
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.springframework.util.DigestUtils' as DigestUtils;
import log;
import response;
import http;
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
      left join bds_BASE_DATA.C_CY_CREW_BASIC b
        on a.id_card_no = b.id_card_no
    where TRUNC(EXPIRY_DATE) = TRUNC(SYSDATE + #{day}) 
      and a.cert_status = '1'
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
  where TRUNC(EXPIRY_DATE) = TRUNC(SYSDATE + 7)
    and a.cert_status = '1'
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
  where TRUNC(EXPIRY_DATE) = TRUNC(SYSDATE + 7)
    and a.cert_status = '1'
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
  where TRUNC(EXPIRY_DATE) = TRUNC(SYSDATE + 7)
    and a.cert_status = '1'
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
  where TRUNC(EXPIRY_DATE) = TRUNC(SYSDATE + 7)
    and a.cert_status = '1'
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
  where TRUNC(EXPIRY_DATE) = TRUNC(SYSDATE + 7)
    and a.cert_status = '1'
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
  where TRUNC(EXPIRY_DATE) = TRUNC(SYSDATE + 7)
    and a.cert_status = '1'
"""
var inlNavQcCert = db.base_data.camel().select(inlNavQcSql);
cert.addAll(inlNavQcCert);

//调用接口平台的签名
var sign = DigestUtils.md5DigestAsHex("username=zymlxt&password=202251&key=l9xAcoS4H".getBytes());
//接口平台调用地址
var url = "";
for(item in cert){
  /////////////短信通知///////////////////
  //船员手机
  var mobile = item.get("mobilePhone");
  var msg = "智搜平台提醒您：船员"+item.get("name")+"["+item.get("idCardNo")+"]的"+item.get("certName")"+即将过期，过期时间："+item.get("expiryDate")+",请及时处理。"
  if(mobile!=null && mobile!=""){
  //对即将过期的证书进行短信提醒  
  url = "http://chj.hn-yg.com:8881/Sms2/cmasoutapi?method=httpSend&username=zymlxt&password=202251&mobile=" + mobile.asString() +
                                "&msg=" + msg + "&needstatus=true&needmo=false&sign=" + sign;
  //调用短信接口平台 post请求
  var result = http.connect(url).post().getBody();
  log.info('result:{}',result)
  }  
  ////////////系统临期通知结果储存///////////////////////
  var selectSql = """
  select count(1) num from catalog.expiry_warning
  where cert_name=#{item.certName}
  and expiry_date = to_date(#{item.expiryDate},'yyyy-mm-dd hh24:mi:ss')
  and object_id=#{item.idCardNo}
  and CERT_PRINT_NO=#{item.certPrintNo}
   """
   var count = db.base_data.camel().selectOne(selectSql);
   if(count.get("num")<1){
      var insertSql ="""
   insert into catalog.expiry_warning(cert_name,expiry_date,object_id,object_name,if_read,import_time,cert_print_no) values(#{item.certName},to_date(#{item.expiryDate},'yyyy-mm-dd hh24:mi:ss'),#{item.idCardNo},#{item.name},'0',sysdate,#{item.certPrintNo})
   """
   db.base_data.insert(insertSql);
   } 
}
/*for(item in cert){
  var selectSql = """
  select count(1) num from catalog.expiry_warning
  where cert_name=#{item.certName}
  and expiry_date = to_date(#{item.expiryDate},'yyyy-mm-dd hh24:mi:ss')
  and object_id=#{item.idCardNo}
  and CERT_PRINT_NO=#{item.certPrintNo}
   """
   var count = db.base_data.camel().selectOne(selectSql);
   if(count.get("num")<1){
      var insertSql ="""
   insert into catalog.expiry_warning(cert_name,expiry_date,object_id,object_name,if_read,import_time,cert_print_no) values(#{item.certName},to_date(#{item.expiryDate},'yyyy-mm-dd hh24:mi:ss'),#{item.idCardNo},#{item.name},'0',sysdate,#{item.certPrintNo})
   """
   db.base_data.insert(insertSql);
   } 
}*/
//db.base_data.table('catalog.expiry_warning').batchInsert(cert);
return response.json({
	resultCode: 200,
	resultMsg: "查询成功",
	result: cert
});