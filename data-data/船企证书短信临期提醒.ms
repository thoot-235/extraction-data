{
  "properties" : { },
  "id" : "ed88cb6749134c3e84aba1f8df0966c4",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "船企证书短信临期提醒",
  "createTime" : null,
  "updateTime" : 1693552389086,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/compCertExpireMessage",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": {},\n    \"timestamp\": 1662466189915,\n    \"executeTime\": 39\n}",
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
      "value" : "1",
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
      "value" : "success",
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
      "value" : "1662466189915",
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
      "value" : "39",
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
import 'org.springframework.util.DigestUtils' as DigestUtils;
import log;
import response;
import http;
//船企doc证书  证书编号，截止日期，公司组织结构代码，公司名称
var sql = """
  select DOC_NO AS cert_Print_No,
       TO_CHAR(a.EXPIRY_DATE, 'yyyy-MM-dd') as EXPIRY_DATE,
       a.companyid as COMPANY_ID,
       b.COMPANY_NAME,
       b.MOBILE_PHONE
  FROM BDS_BASE_DATA.CMP_DC_NATIONAL a
  left join BDS_BASE_DATA.CMP_SHIPPING_COMPANY b
    on a.companyid = b.companyid
    where TRUNC(EXPIRY_DATE) = TRUNC(SYSDATE+7)--剩余七天有效期
    and a.IS_CANCEL!='1'
    --and a.companyid='913101090558848271'
"""
var docCert = db.base_data.camel().select(sql);
//调用接口平台的签名
var sign = "";
//接口平台调用地址
var url = "";
for(item in docCert){
  /////////////短信通知///////////////////
  //公司联系人手机
  var mobile = item.get("mobilePhone");
  var msg = "智搜平台提醒您："+item.get("companyName")+"["+item.get("companyId")+"]的公司符合证明即将过期，过期时间："+item.get("expiryDate")+",请知晓。"
  if(mobile!=null && mobile!=""){
  //对即将过期的证书进行短信提醒
  sign = DigestUtils.md5DigestAsHex("username=zymlxt&password=202251&key=l9xAcoS4H".getBytes());
  url = "http://chj.hn-yg.com:8881/Sms2/cmasoutapi?method=httpSend&username=zymlxt&password=202251&mobile=" + mobile::string +
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
   insert into catalog.expiry_warning(cert_name,expiry_date,object_id,object_name,if_read,import_time,cert_print_no) values(#{item.certName},to_date(#{item.expiryDate},'yyyy-mm-dd hh24:mi:ss'),#{item.companyId},#{item.companyName},'0',sysdate,#{item.certPrintNo})
   """
   db.base_data.insert(insertSql);
   } 
}
/*return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: docCert
	});*/