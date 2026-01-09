{
  "properties" : { },
  "id" : "40194e30388b4905b7a2bd4111d357f1",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "船舶关系变更维护新需求",
  "createTime" : null,
  "updateTime" : 1743415545489,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/saveRefShipsLast",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"bindFlag\":\"\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1743415491055,\n    \"executeTime\": 18\n}",
  "description" : "",
  "requestBodyDefinition" : {
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
      "name" : "bindFlag",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "String",
      "type" : null,
      "defaultValue" : null,
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
      "value" : "1743415491055",
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
      "value" : "18",
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
import 'org.ssssssss.magic.utils.StringUtil' as StringUtil;
import 'java.lang.String' as String;
import log;
import response;
import 'org.springblade.core.secure.BladeUser' as BladeUser
import 'org.springblade.core.secure.utils.AuthUtil' as AuthUtil
import 'org.ssssssss.magic.utils.TreeUtil' as TreeUtil;
import 'com.alibaba.fastjson.JSON' as JSONA
import 'com.alibaba.fastjson.JSONObject' as JSONObjectA
import 'org.springframework.data.redis.core.StringRedisTemplate' as StringRedisTemplate



var bindFlag = body.bindFlag; //变更是0，解绑是1
var uscc = body.uscc;


BladeUser user = AuthUtil.getUser();
var bladeUserId; //申请人id
var bladeAccount; //申请人账号
var bladeName; //申请人姓名

if (user == null) {

    return response.json({
        resultCode: 500,
        resultMsg: "用户登录后才能维护"
    });
} else {
    bladeUserId = user.getUserId();
    bladeAccount = user.getAccount();
    bladeName = user.getNickName();
    body.bladeUserId = bladeUserId;
    body.bladeAccount = bladeAccount;
    body.bladeName = bladeName;
}

if (bindFlag == null || bindFlag == '') {
    return response.json({
        resultCode: 500,
        resultMsg: "是否解绑标志不能为空"
    });
}

if (bindFlag == '0') { //如果是变更
    var data = body.data;
    for (item in data) {
        var shipRegNo = item.get("shipRegNo"); //船舶登记号
        var type = item.get("type"); //1是船舶所有人，2是船舶经营人，3是船舶管理人，4是船舶承租
        var cardTypeBig = item.get("cardTypeBig"); //证号类型，1是统一社会信用代码，2是身份证号
        //var cardType = item.get("cardType"); //人员类型针对所有人和经营人；1自然人2船公司3其他社会组，4个体工商户，5公司
        var cardNo = item.get("cardNo"); //人员身份证号或者统一社会信用代码
        var cardName = item.get("cardName"); //人员或公司名称
        if (shipRegNo == null || shipRegNo == '') {
            return response.json({
                resultCode: 500,
                resultMsg: "船舶登记号不能为空"
            });
        }
        /** 
        if (cardTypeBig == null || cardTypeBig == '') {
            return response.json({
                resultCode: 500,
                resultMsg: "证件号类型不能为空"
            });
        }

        if (cardNo == null || cardNo == '') {
            return response.json({
                resultCode: 500,
                resultMsg: "证件号不能为空"
            });
        }
        if (cardName == null || cardName == '') {
            return response.json({
                resultCode: 500,
                resultMsg: "证件名称不能为空"
            });
        }*/

    } 
}
var data = body.data;
if (bindFlag == '0') { //如果是变更

    for (item in data) {
        var shipRegNo = item.get("shipRegNo"); //船舶登记号
        var type = item.get("type"); //1是船舶所有人，2是船舶经营人，3是船舶管理人，4是船舶承租
        var cardTypeBig = item.get("cardTypeBig"); //证号类型，1是统一社会信用代码，2是身份证号
        //var cardType = item.get("cardType"); //人员类型针对所有人和经营人；1自然人2船公司3其他社会组，4个体工商户，5公司
        var cardNo = item.get("cardNo"); //人员身份证号或者统一社会信用代码
        var cardName = item.get("cardName"); //人员或公司名称
        if (shipRegNo == null || shipRegNo == '') {
            return response.json({
                resultCode: 500,
                resultMsg: "船舶登记号不能为空"
            });
        }




    }
}







//先维护主表信息
var sqlSeralNo = """select SEQ_SERIAL_NO.nextval from dual""" //生成流水号
var seralNo = db.base_data.selectValue(sqlSeralNo);
body.seralNokey = seralNo;

//审核单位
if (uscc != "" && uscc != null) {

    var sql = """ select a.city , c.item_name_cn,c.belong  as audit_Org from bds_base_data.company_info_all a left join dict_data.d_comm_ad_division c
                        on a.city=c.code where USCC=#{uscc}""";
    var tableData = db.base_data.camel().selectOne(sql); //字段权限控制
    if (tableData != null) {
        body.auditOrg = tableData.get("auditOrg");
        if (tableData.get("auditOrg") == null || tableData.get("auditOrg") == '') {
            //轮询派发给长江局或者江苏局
            var dd = StringRedisTemplate.opsForValue().get("auditShipRefCompany");
            if (dd == null || dd == '') { //先从江苏局开始轮询
                body.auditOrg = '江苏局';
                StringRedisTemplate.opsForValue().set("auditShipRefCompany", '江苏局');
            } else {
                if (dd == '江苏局') { //如果上一个是江苏局，下一个就是长江局来审核
                    body.auditOrg = '长江局';
                    StringRedisTemplate.opsForValue().set("auditShipRefCompany", '长江局');
                } else if (dd == '长江局') { //如果上一个是长江局，下一个就是长江局来审核
                    body.auditOrg = '江苏局';
                    StringRedisTemplate.opsForValue().set("auditShipRefCompany", '长江局');
                }
            }

        } else {

            //轮询派发给长江局或者江苏局
            var dd = StringRedisTemplate.opsForValue().get("auditShipRefCompany");
            if (dd == null || dd == '') { //先从江苏局开始轮询
                body.auditOrg = '江苏局';
                StringRedisTemplate.opsForValue().set("auditShipRefCompany", '江苏局');
            } else {
                if (dd == '江苏局') { //如果上一个是江苏局，下一个就是长江局来审核
                    body.auditOrg = '长江局';
                    StringRedisTemplate.opsForValue().set("auditShipRefCompany", '长江局');
                } else if (dd == '长江局') { //如果上一个是长江局，下一个就是长江局来审核
                    body.auditOrg = '江苏局';
                    StringRedisTemplate.opsForValue().set("auditShipRefCompany", '长江局');
                }
            }
        }
    } else {

        //轮询派发给长江局或者江苏局
        var dd = StringRedisTemplate.opsForValue().get("auditShipRefCompany");
        if (dd == null || dd == '') { //先从江苏局开始轮询
            body.auditOrg = '江苏局';
            StringRedisTemplate.opsForValue().set("auditShipRefCompany", '江苏局');
        } else {
            if (dd == '江苏局') { //如果上一个是江苏局，下一个就是长江局来审核
                body.auditOrg = '长江局';
                StringRedisTemplate.opsForValue().set("auditShipRefCompany", '长江局');
            } else if (dd == '长江局') { //如果上一个是长江局，下一个就是长江局来审核
                body.auditOrg = '江苏局';
                StringRedisTemplate.opsForValue().set("auditShipRefCompany", '长江局');
            }
        }
    }
}else{
    

        //轮询派发给长江局或者江苏局
        var dd = StringRedisTemplate.opsForValue().get("auditShipRefCompany");
        if (dd == null || dd == '') { //先从江苏局开始轮询
            body.auditOrg = '江苏局';
            StringRedisTemplate.opsForValue().set("auditShipRefCompany", '江苏局');
        } else {
            if (dd == '江苏局') { //如果上一个是江苏局，下一个就是长江局来审核
                body.auditOrg = '长江局';
                StringRedisTemplate.opsForValue().set("auditShipRefCompany", '长江局');
            } else if (dd == '长江局') { //如果上一个是长江局，下一个就是长江局来审核
                body.auditOrg = '江苏局';
                StringRedisTemplate.opsForValue().set("auditShipRefCompany", '长江局');
            }
        }
    
}

/**if(bindFlag=='1'){//解绑 

     
}else{//需要审核**/
insertSql = """ insert into SC_INFORMATION_APPLY_FORM (id,APPLY_TYPE,APPLY_USER_ID,APPLY_ACCOUNT,
  APPLY_NAME,APPLY_DATE,CREATE_DATE,audit_status,audit_Org,BIND_FLAG) values(#{body.seralNokey},20,
  #{body.bladeUserId},#{body.bladeAccount},#{body.bladeName},sysdate,sysdate,0,#{body.auditOrg},#{body.bindFlag})"""
db.base_data.insert(insertSql);

for (item in data) {
    if (bindFlag == '1') {
        item.statusFlag = 'del'; //解绑就是删除
    }
    var insert = """insert into  bds_base_data.CHANGE_REF_SHIP_PROD(TYPE,CARD_TYPE_BIG,CARD_TYPE,CARD_NO,CARD_NAME,SHIP_REG_NO,
                                SERIAL_NO,BIND_FLAG,APPLY_STATUS,status_Flag) values(#{item.type},#{item.cardTypeBig},
                                #{item.cardType},
                                #{item.cardNo},
                                #{item.cardName},
                                #{item.shipRegNo},#{body.seralNokey},#{body.bindFlag},0,#{item.statusFlag})""";
    db.base_data.insert(insert);

}


/** */
/** */

//保存文件附表
var files = body.files;


if (files == null || file == "") { //文件为空

} else {
    if (files.size >= 1) {
        //保存附件
        for (item in files) {
            var xx = TreeUtil.StringToJson(item.toString());
            var bbody;
            var ANNEX_NAME = JSONObjectA.parseObject(JSONA.toJSONString(xx)).get("annexName");
            var ANNEX_ID = JSONObjectA.parseObject(JSONA.toJSONString(xx)).get("annexId");
            var ANNEX_TYPE = JSONObjectA.parseObject(JSONA.toJSONString(xx)).get("annexType");
            var saveData = {
                "ANNEX_NAME": ANNEX_NAME,
                "ANNEX_ID": ANNEX_ID,
                "ANNEX_TYPE": ANNEX_TYPE,
                "APPLY_ID": body.seralNokey
            }
            var insertFile = """insert into SC_INFORMATION_ANNEXS 
        (ANNEX_ID,ANNEX_NAME,ANNEX_TYPE,APPLY_ID) values(#{saveData.ANNEX_ID},#{saveData.ANNEX_NAME},#{saveData.ANNEX_TYPE},#{saveData.APPLY_ID})""";
            db.base_data.insert(insertFile);
        }
    }
}


return response.json({
    resultCode: 200,
    resultMsg: "保存成功"
});