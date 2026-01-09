{
  "properties" : { },
  "id" : "4b3094ab9af3487cbd9ee58d9ed09ea7",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "船舶证书短信临期提醒",
  "createTime" : null,
  "updateTime" : 1693552390557,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/shipCertExpireMessage",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": {},\n    \"timestamp\": 1672910410645,\n    \"executeTime\": 49\n}",
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
      "value" : "1",
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
      "name" : "message",
      "value" : "success",
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
      "children" : [ ]
    }, {
      "name" : "timestamp",
      "value" : "1672910410645",
      "description" : "",
      "required" : false,
      "dataType" : "Long",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "executeTime",
      "value" : "49",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
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
import log;
import response;
import http;
var cert = [];
var day = 7;
//1、船舶所有权证书 长期有效 不存在临期情况
//*******************************2、船舶国籍证书 *********************************************//
var nationSql = """
    select '船舶国籍证书' as cert_name,
       a.CERT_PRINT_NO,
       TO_CHAR(a.EXPIRE_DATE, 'yyyy-MM-dd') as EXPIRY_DATE,
       a.SHIP_REG_NO,
       b.ship_name_cn,
       a.MANAGER_CONTACT_PHONE,
       a.OPERATOR_CONTACT_PHONE
  from SUB_BASE_DATA.SHP_CERT_NATIONAL a
  left join SUB_BASE_DATA.SHP_BASIC_DATA b
    on a.ship_reg_no = b.ship_reg_no
  where TRUNC(EXPIRE_DATE) = TRUNC(SYSDATE+#{day})--剩余七天有效期
  and a.delete_flag='0'
   and b.delete_flag='0'
"""
var nationCert = db.base_data.camel().select(nationSql);
cert.addAll(nationCert);

//*******************************3、船舶光租证书 *********************************************//
var rentSql = """
    select '船舶光租证书' as cert_name,
         a.CERT_PRINT_NO,
         TO_CHAR(a.EXPIRE_DATE, 'yyyy-MM-dd') as EXPIRY_DATE,
         a.SHIP_REG_NO,
         b.ship_name_cn,
         c.MANAGER_CONTACT_PHONE,
         c.OPERATOR_CONTACT_PHONE
    from SUB_BASE_DATA.SHP_CERT_BC_REG a
    left join SUB_BASE_DATA.SHP_BASIC_DATA b
      on a.ship_reg_no = b.ship_reg_no
    left join SHP_CERT_NATIONAL c
      on a.ship_reg_no = c.ship_reg_no
   where TRUNC(a.EXPIRE_DATE) = TRUNC(SYSDATE + #{day})
    and a.delete_flag='0'
   and b.delete_flag='0'
   and c.delete_flag='0'
"""
var rentCert = db.base_data.camel().select(rentSql);
cert.addAll(rentCert);

//*******************************4、船舶抵押权登记证书 *********************************************//
var mortgageSql = """
      select '船舶抵押权登记证书' as cert_name,
         a.CERT_PRINT_NO,
         TO_CHAR(a.PAYOFF_END_DATE, 'yyyy-MM-dd') as EXPIRY_DATE,
         a.SHIP_REG_NO,
         b.ship_name_cn,
         c.MANAGER_CONTACT_PHONE,
         c.OPERATOR_CONTACT_PHONE
    from SUB_BASE_DATA.SHP_CERT_MORTGAGE a
    left join SUB_BASE_DATA.SHP_BASIC_DATA b
      on a.ship_reg_no = b.ship_reg_no
    left join SHP_CERT_NATIONAL c
      on a.ship_reg_no = c.ship_reg_no
   where TRUNC(a.PAYOFF_END_DATE) = TRUNC(SYSDATE + #{day})
   and a.delete_flag='0'
   and b.delete_flag='0'
   and c.delete_flag='0'
"""
var mortgageCert = db.base_data.camel().select(mortgageSql);
cert.addAll(mortgageCert);

//*******************************5、船舶配员证书 *********************************************//
var mannSql = """
      select '船舶配员证书' as cert_name,
         a.CERT_PRINT_NO,
         TO_CHAR(a.EXPDATE_END, 'yyyy-MM-dd') as EXPIRY_DATE,
         a.SHIP_REG_NO,
         b.ship_name_cn,
         c.MANAGER_CONTACT_PHONE,
         c.OPERATOR_CONTACT_PHONE
    from SUB_BASE_DATA.SHP_MANNING_CERT a
    left join SUB_BASE_DATA.SHP_BASIC_DATA b
      on a.ship_reg_no = b.ship_reg_no
    left join SUB_BASE_DATA.SHP_CERT_NATIONAL c
      on a.ship_reg_no = c.ship_reg_no
   where TRUNC(a.EXPDATE_END) = TRUNC(SYSDATE + #{day})
   and a.delete_flag='0'
   and b.delete_flag='0'
   and c.delete_flag='0'
"""
var mannCert = db.base_data.camel().select(mannSql);
cert.addAll(mannCert);

//*******************************6、船舶安全与环保证书 *********************************************//
var environProtectSql = """
      select CERT_NAME,
         a.CERT_ID as CERT_PRINT_NO,
         TO_CHAR(a.CERT_DUEDATE, 'yyyy-MM-dd') as EXPIRY_DATE,
         a.ship_id SHIP_REG_NO,
         b.ship_name_cn,
         c.MANAGER_CONTACT_PHONE,
         c.OPERATOR_CONTACT_PHONE
    from SUB_BASE_DATA.SHP_SUVERY_CERT_ISSUE a
    left join SUB_BASE_DATA.SHP_BASIC_DATA b
      on a.ship_id = b.ship_id
    left join SUB_BASE_DATA.SHP_CERT_NATIONAL c
      on b.ship_reg_no = c.ship_reg_no
   where TRUNC(a.CERT_DUEDATE) = TRUNC(SYSDATE + #{day})
   and instr(a.CERT_NAME, '船舶安全与环保证书') > 0
   and a.delete_flag='0'
   and b.delete_flag='0'
   and c.delete_flag='0'
"""
var environProtectCert = db.base_data.camel().select(environProtectSql);
cert.addAll(environProtectCert);
//*******************************7、船舶安全管理证书 *********************************************//
var safeManageSql = """
      select CERT_NAME,
         a.CERT_ID as CERT_PRINT_NO,
         TO_CHAR(a.CERT_DUEDATE, 'yyyy-MM-dd') as EXPIRY_DATE,
         a.ship_id SHIP_REG_NO,
         b.ship_name_cn,
         c.MANAGER_CONTACT_PHONE,
         c.OPERATOR_CONTACT_PHONE
    from SUB_BASE_DATA.SHP_SUVERY_CERT_ISSUE a
    left join SUB_BASE_DATA.SHP_BASIC_DATA b
      on a.ship_id = b.ship_id
    left join SUB_BASE_DATA.SHP_CERT_NATIONAL c
      on b.ship_reg_no = c.ship_reg_no
   where TRUNC(a.CERT_DUEDATE) = TRUNC(SYSDATE + #{day})
   and instr(a.CERT_NAME, '船舶安全管理证书') > 0
   and a.delete_flag='0'
   and b.delete_flag='0'
   and c.delete_flag='0'
"""
var safeManageCert = db.base_data.camel().select(safeManageSql);
cert.addAll(safeManageCert);

//8、船舶安全管理证书 长期有效 不存在临期情况

//调用接口平台的签名
var sign = DigestUtils.md5DigestAsHex("username=zymlxt&password=202251&key=l9xAcoS4H".getBytes());
//接口平台调用地址
var url = "";
for(item in cert){
  /////////////短信通知///////////////////
  //联系人手机
  var mobile = item.get("managerContactPhone")!=null&&item.get("managerContactPhone")!=''?item.get("managerContactPhone"):item.get("operatorContactPhone");
  var msg = "智搜平台提醒您："+item.get("shipNameCn")+"["+item.get("shipRegNo")+"]的"+item.get("certName")"+即将过期，过期时间："+item.get("expiryDate")+",请及时处理。"
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
   insert into catalog.expiry_warning(cert_name,expiry_date,object_id,object_name,if_read,import_time,cert_print_no) values(#{item.certName},to_date(#{item.expiryDate},'yyyy-mm-dd hh24:mi:ss'),#{item.shipRegNo},#{item.shipNameCn},'0',sysdate,#{item.certPrintNo})
   """
   db.base_data.insert(insertSql);
   } 
}
/*return response.json({
	resultCode: 200,
	resultMsg: "查询成功",
	result: cert
});*/




