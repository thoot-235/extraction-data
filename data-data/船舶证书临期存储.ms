{
  "properties" : { },
  "id" : "889e117a0dfc425bb4b6693d55414380",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "船舶证书临期存储",
  "createTime" : null,
  "updateTime" : 1693552390547,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/saveShipCertExpireRecoeds",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": []\n}",
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
var cert = [];
var day = 7;
//查询订阅了船舶服务且通过认证的信息
var shipSql = """
       select
       distinct 
              use.mh_userid ,
              buc.remind_phone ,
              buc.user_id ,
              bus.ship_id 
       from
              blade_user use,
              blade_user_certification buc ,
              blade_user_ship bus
       where
              use.id = buc.user_id
              and buc.user_id = bus.user_id
              and use.is_deleted = '0'
"""
var subscriptionSql = """
  select *  from catalog.subscription_scheduled where  subscription_id='E8DCC83D92793517E050007F01000D8B' 
"""

var shipIdList = []
shipIdList = select t.*from db.bladex.camel().select(shipSql) t join db.frame.camel().select(subscriptionSql) g on t.mhUserid = g.userId;
var shipIdStr = "";
for (item in shipIdList) {
    shipIdStr += "'" + item.get("shipId") + "'";
    shipIdStr += ",";
}
if (StringUtil.isBlank(shipIdStr)) {
    return response.json({
        resultCode: 200,
        resultMsg: "操作成功",
        result: []
    });
}

shipIdStr = shipIdStr.substring(0, shipIdStr.length() - 1);
shipIdStr = "(" + shipIdStr;
shipIdStr = shipIdStr + ")";
//1、船舶所有权证书 长期有效 不存在临期情况
//*******************************2、船舶国籍证书 *********************************************//
var nationSql = """
    select '船舶国籍证书' as cert_name,
       a.CERT_PRINT_NO,
       TO_CHAR(a.EXPIRE_DATE, 'yyyy-MM-dd') as EXPIRY_DATE,
       a.SHIP_REG_NO,
       b.ship_name_cn,
       b.ship_name_en,
       b.ship_id,
       a.MANAGER_CONTACT_PHONE,
       a.OPERATOR_CONTACT_PHONE
  from bds_base_data.SHP_CERT_NATIONAL a
  left join bds_base_data.SHP_BASIC_DATA b
    on a.ship_reg_no = b.ship_reg_no
  where TRUNC(EXPIRE_DATE) = TRUNC(SYSDATE+#{day})--剩余七天有效期
   and b.ship_id in ${shipIdStr}
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
         b.ship_name_en,
         b.ship_id,
         c.MANAGER_CONTACT_PHONE,
         c.OPERATOR_CONTACT_PHONE
    from bds_base_data.SHP_CERT_BC_REG a
    left join bds_base_data.SHP_BASIC_DATA b
      on a.ship_reg_no = b.ship_reg_no
    left join bds_base_data.SHP_CERT_NATIONAL c
      on a.ship_reg_no = c.ship_reg_no
   where TRUNC(a.EXPIRE_DATE) = TRUNC(SYSDATE + #{day})
   and b.ship_id in ${shipIdStr}
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
         b.ship_name_en,
         b.ship_id,
         c.MANAGER_CONTACT_PHONE,
         c.OPERATOR_CONTACT_PHONE
    from bds_base_data.SHP_CERT_MORTGAGE a
    left join bds_base_data.SHP_BASIC_DATA b
      on a.ship_reg_no = b.ship_reg_no
    left join bds_base_data.SHP_CERT_NATIONAL c
      on a.ship_reg_no = c.ship_reg_no
   where TRUNC(a.PAYOFF_END_DATE) = TRUNC(SYSDATE + #{day})
   and b.ship_id in ${shipIdStr}
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
         b.ship_name_en,
         b.ship_id,
         c.MANAGER_CONTACT_PHONE,
         c.OPERATOR_CONTACT_PHONE
    from bds_base_data.SHP_MANNING_CERT a
    left join bds_base_data.SHP_BASIC_DATA b
      on a.ship_reg_no = b.ship_reg_no
    left join bds_base_data.SHP_CERT_NATIONAL c
      on a.ship_reg_no = c.ship_reg_no
   where TRUNC(a.EXPDATE_END) = TRUNC(SYSDATE + #{day})
    and b.ship_id in ${shipIdStr}
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
         b.ship_name_en,
         b.ship_id,
         c.MANAGER_CONTACT_PHONE,
         c.OPERATOR_CONTACT_PHONE
    from bds_base_data.SHP_SUVERY_CERT_ISSUE a
    left join bds_base_data.SHP_BASIC_DATA b
      on a.ship_id = b.ship_id
    left join bds_base_data.SHP_CERT_NATIONAL c
      on b.ship_reg_no = c.ship_reg_no
   where TRUNC(a.CERT_DUEDATE) = TRUNC(SYSDATE + #{day})
   and instr(a.CERT_NAME, '船舶安全与环保证书') > 0
    and b.ship_id in ${shipIdStr}
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
         b.ship_name_en,
         b.ship_id,
         c.MANAGER_CONTACT_PHONE,
         c.OPERATOR_CONTACT_PHONE
    from bds_base_data.SHP_SUVERY_CERT_ISSUE a
    left join bds_base_data.SHP_BASIC_DATA b
      on a.ship_id = b.ship_id
    left join bds_base_data.SHP_CERT_NATIONAL c
      on b.ship_reg_no = c.ship_reg_no
   where TRUNC(a.CERT_DUEDATE) = TRUNC(SYSDATE + #{day})
   and instr(a.CERT_NAME, '船舶安全管理证书') > 0
   and b.ship_id in ${shipIdStr}
   and a.delete_flag='0'
   and b.delete_flag='0'
   and c.delete_flag='0'
"""
var safeManageCert = db.base_data.camel().select(safeManageSql);
cert.addAll(safeManageCert);

//8、船舶安全管理证书 长期有效 不存在临期情况
for (item in cert) {
    //var msg = "智搜平台提醒您："+item.get("shipNameCn")+"["+item.get("shipId")+"]的"+item.get("certName")+"即将过期，过期时间："+item.get("expiryDate")+",请及时处理。"
    var msg = "智搜平台提醒您：" + item.get("shipNameCn") + "[" + item.get("shipId") + "]的" + item.get("certName") + "即将过期，过期时间：" + item.get("expiryDate") + ",请以业务数据为准。"
    item.put("message", msg);

    var shipId = item.get("shipId");
    for (ie in shipIdList) {
        if (ie.get("shipId") == shipId) {
            item.put("userId", ie.get("userId"));
            item.put("remindPhone", ie.get("remindPhone"));
            item.put("mhUserId", ie.get("mhUserid"));
            break;
        }
    }
    ////////////系统临期通知结果储存///////////////////////
    var selectSql = """
  select count(1) num from catalog.expiry_warning
  where cert_name=#{item.certName}
  and expiry_date = to_date(#{item.expiryDate},'yyyy-mm-dd hh24:mi:ss')
  and object_id=#{item.shipId}
  and type='1'
  and CERT_PRINT_NO=#{item.certPrintNo}
   """
    var count = db.base_data.camel().selectOne(selectSql);
    if (count.get("num") < 1) {
        var insertSql = """
   insert into catalog.expiry_warning(message,type,user_id,REMIND_PHONE,MH_USER_ID,cert_name,expiry_date,object_id,object_name,if_read,import_time,cert_print_no) values(#{item.message},'1',#{item.userId},#{item.remindPhone},#{item.mhUserId},#{item.certName},to_date(#{item.expiryDate},'yyyy-mm-dd hh24:mi:ss'),#{item.shipId},#{item.shipNameEn},'0',sysdate,#{item.certPrintNo})
   """
        db.base_data.insert(insertSql);
    }
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: []
});