{
  "properties" : { },
  "id" : "copy1722215880375d10244",
  "script" : null,
  "groupId" : "c02d793d72c844c4b8d76db461f1ddf0",
  "name" : "三船数据修改保存接口(复制)",
  "createTime" : 1722215677277,
  "updateTime" : null,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : null,
  "path" : "/saveScPublic_copy",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"applyType\": \"1\",\r\n    \"pkPrimaryValue\": \"91310000717857482U\",\r\n    \"files\": [\r\n        {\r\n            \"annexId\": \"669f752b53b1f2292400cb05\",\r\n            \"annexName\": \"GEM (335).jpg\",\r\n            \"annexType\": \"1\"\r\n        }\r\n    ],\r\n    \"ORGANIZATION_CODE\": \"717857482\",\r\n    \"COMPANY_NAME\": \"上海中船重工万邦航运有限公司\",\r\n    \"LEGAL_REPRESENTATIVE\": \"蔡洙一\",\r\n    \"REGCODE\": \"310000400438107\",\r\n    \"QUALIFICATION\": \"增值税一般纳税人\",\r\n    \"REGCAPITAL\": \"30,500万(元)\",\r\n    \"PAIDINCAPITAL\": \"30,500万(元)\",\r\n    \"START_TIME\": \"2005-09-02\",\r\n    \"DISTRICT\": \"上海市虹口区\",\r\n    \"COMPANY_REG_ADDR\": \"\",\r\n    \"COMPANY_OPERATE_ADDR\": \"上海市虹口区汶水东路351号1号楼319室\",\r\n    \"COMPANY_OPERATE_SCOP\": \"从事国际海上船舶运输业务，国内沿海及长江中下游化学品运输，海事及海运信息咨询服务，国际船舶管理。 【依法须经批准的项目，经相关部门批准后方可开展经营活动】货运\",\r\n    \"OPEN_STATUS\": \"2005-09-02 至 2055-09-01\",\r\n    \"COMPANY_TYPE_CODE_TRANSLATE\": \"个人独资企业\",\r\n    \"COMPANY_TYPE_CODE\": \"3\",\r\n    \"COMPANY_NATURE_TRANSLATE\": \"其他\",\r\n    \"COMPANY_NATURE\": \"其他\",\r\n    \"INDUSTRY\": \"水上运输业\",\r\n    \"OPENTIME\": \"2005-09-02 至 2055-09-01\",\r\n    \"ANNUALDATE\": \"2022-08-25\",\r\n    \"AUTHORITY\": \"上海市市场监督管理局\",\r\n    \"DOC_CODE\": \"\",\r\n    \"TRANS_ISSUE_DATE\": \"\",\r\n    \"TRANS_END_DATE\": \"\",\r\n    \"TRANS_ISSUE_ORG\": \"\",\r\n    \"TRANS_LIC_NO\": \"交沪X02451\",\r\n    \"IF_GET_SAFETY_CERT_TRANSLATE\": \"否\",\r\n    \"IF_GET_SAFETY_CERT\": \"否\",\r\n    \"SAFETY_LEVEL\": \"\",\r\n    \"IF_GET_DOC_TRANSLATE\": \"\",\r\n    \"IF_GET_DOC\": \"\",\r\n    \"OFFICE_TELEPHONE\": \"027-1234567\",\r\n    \"WE_CHAT\": \"\",\r\n    \"CONTACT_PERSON\": \"\",\r\n    \"CONTACT_PERSON_DUTY\": \"\",\r\n    \"MOBILE_PHONE\": \"\",\r\n    \"CONTACT_ADDRESS\": \"\",\r\n    \"EMAIL\": \"\",\r\n    \"FAX\": \"021-58592156\",\r\n    \"WEB_SITE\": \"\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1721728214662,\n    \"executeTime\": 225\n}",
  "description" : "",
  "requestBodyDefinition" : {
    "name" : "root",
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
      "name" : "applyType",
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
      "name" : "pkPrimaryValue",
      "value" : "91310000717857482U",
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
      "name" : "files",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Array",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
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
          "name" : "annexId",
          "value" : "669f752b53b1f2292400cb05",
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
          "name" : "annexName",
          "value" : "GEM (335).jpg",
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
          "name" : "annexType",
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
        } ]
      } ]
    }, {
      "name" : "ORGANIZATION_CODE",
      "value" : "717857482",
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
      "name" : "COMPANY_NAME",
      "value" : "上海中船重工万邦航运有限公司",
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
      "name" : "LEGAL_REPRESENTATIVE",
      "value" : "蔡洙一",
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
      "name" : "REGCODE",
      "value" : "310000400438107",
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
      "name" : "QUALIFICATION",
      "value" : "增值税一般纳税人",
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
      "name" : "REGCAPITAL",
      "value" : "30,500万(元)",
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
      "name" : "PAIDINCAPITAL",
      "value" : "30,500万(元)",
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
      "name" : "START_TIME",
      "value" : "2005-09-02",
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
      "name" : "DISTRICT",
      "value" : "上海市虹口区",
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
      "name" : "COMPANY_REG_ADDR",
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
      "name" : "COMPANY_OPERATE_ADDR",
      "value" : "上海市虹口区汶水东路351号1号楼319室",
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
      "name" : "COMPANY_OPERATE_SCOP",
      "value" : "从事国际海上船舶运输业务，国内沿海及长江中下游化学品运输，海事及海运信息咨询服务，国际船舶管理。 【依法须经批准的项目，经相关部门批准后方可开展经营活动】货运",
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
      "name" : "OPEN_STATUS",
      "value" : "2005-09-02 至 2055-09-01",
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
      "name" : "COMPANY_TYPE_CODE_TRANSLATE",
      "value" : "个人独资企业",
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
      "name" : "COMPANY_TYPE_CODE",
      "value" : "3",
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
      "name" : "COMPANY_NATURE_TRANSLATE",
      "value" : "其他",
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
      "name" : "COMPANY_NATURE",
      "value" : "其他",
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
      "name" : "INDUSTRY",
      "value" : "水上运输业",
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
      "name" : "OPENTIME",
      "value" : "2005-09-02 至 2055-09-01",
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
      "name" : "ANNUALDATE",
      "value" : "2022-08-25",
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
      "name" : "AUTHORITY",
      "value" : "上海市市场监督管理局",
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
      "name" : "DOC_CODE",
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
      "name" : "TRANS_ISSUE_DATE",
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
      "name" : "TRANS_END_DATE",
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
      "name" : "TRANS_ISSUE_ORG",
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
      "name" : "TRANS_LIC_NO",
      "value" : "交沪X02451",
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
      "name" : "IF_GET_SAFETY_CERT_TRANSLATE",
      "value" : "否",
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
      "name" : "IF_GET_SAFETY_CERT",
      "value" : "否",
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
      "name" : "SAFETY_LEVEL",
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
      "name" : "IF_GET_DOC_TRANSLATE",
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
      "name" : "IF_GET_DOC",
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
      "name" : "OFFICE_TELEPHONE",
      "value" : "027-1234567",
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
      "name" : "WE_CHAT",
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
      "name" : "CONTACT_PERSON",
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
      "name" : "CONTACT_PERSON_DUTY",
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
      "name" : "MOBILE_PHONE",
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
      "name" : "CONTACT_ADDRESS",
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
      "name" : "EMAIL",
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
      "name" : "FAX",
      "value" : "021-58592156",
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
      "name" : "WEB_SITE",
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
      "value" : "-1",
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
      "value" : "系统内部出现错误",
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
      "value" : "1721728214662",
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
      "value" : "225",
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
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO; //返回结果
import 'com.success.data.tag.TagUtils' as TagUtils; //导入标签配置类
import 'org.ssssssss.magic.utils.TreeUtil' as TreeUtil;
import 'org.ssssssss.magic.entity.TreeModel' as TreeModel;
import 'com.alibaba.fastjson.JSON' as JSONA
import 'org.springblade.core.secure.utils.AuthUtil' as AuthUtil
import 'org.springblade.core.secure.BladeUser' as BladeUser
import 'org.springframework.data.redis.core.StringRedisTemplate' as StringRedisTemplate
import 'com.alibaba.fastjson.JSONObject' as JSONObjectA
import response;
import log;
import 'org.springblade.core.secure.BladeUser' as BladeUser
BladeUser user = AuthUtil.getUser();
var bladeUserId; //申请人id
var bladeAccount; //申请人账号
var bladeName; //申请人姓名
var applyType = body.applyType; //类型(1船公司信息维护、2船舶信息维护、3船员信息维护)
var pkPrimaryValue = body.pkPrimaryValue; //pkPrimaryValue 如果为空是要新增整条数据，有值是要修改


if (user == null) {
    /*
    return response.json({
        resultCode: 500,
        resultMsg: "用户登录后才能维护"
    });*/
} else {
    bladeUserId = user.getUserId();
    bladeAccount = user.getAccount();
    bladeName = user.getNickName();
    body.bladeUserId = bladeUserId;
    body.bladeAccount = bladeAccount;
    body.bladeName = bladeName;
}
var files = body.files;
if (files == null || files == "" ) { //文件为空
    return response.json({
        resultCode: 500,
        resultMsg: "附件不能为空！"
    });
}


/**
 bladeUserId="111";
      bladeAccount="222";
      bladeName="张三";
*/

//根据参数内部applyType字段查询是哪一个表的数据提交修改
var sql = """ 
            select  column_cn  as column_cn,column_en as column_en,a.table_name_en,a.table_name_Cn,pk_primary 
            from  sc_table_fields  a
            left join   sc_table_types b on a.table_name_en = b.table_name_en 
            where b.id=#{body.applyType}  and (IS_AUDITY_FLAG ='1' or NOT_AUDITY_FLAG='1')
"""
var res = db.base_data.camel().select(sql);
var tableNameEn = "";
var pkPrimary = "";
var columns = "";
if (res.size() > 0) {
    var i = 1;
    for (item in res) {
        tableNameEn = item.get("tableNameEn");
        pkPrimary = item.get("pkPrimary");
        if (i != res.size()) {
            columns = columns + item.get("columnEn") + ","
        } else {
            columns = columns + item.get("columnEn")
        }
        i++;
    }
}
log.info("tableNameEntableNameEn" + tableNameEn);

log.info("columnscolumns" + columns);

if (pkPrimary.contains("&")) {
    pkPrimary = pkPrimary.replace("&", "||")
}
log.info("pkPrimarypkPrimary" + pkPrimary);

if (body.pkPrimaryValue.contains("&amp;&amp;")) {
    body.pkPrimaryValue = body.pkPrimaryValue.replace("&amp;&amp;", "")
}

if(body.pkPrimaryValue == null || body.pkPrimaryValue == ""){
    return response.json({
        resultCode: 500,
        resultMsg: "主键数据未查询到，请退出刷新后重试！"
    });
}

if (applyType == null || applyType == "") {
    return response.json({
        resultCode: 500,
        resultMsg: "修改数据类型不能为空"

    });
}

//先维护主表信息
var sqlSeralNo = """select SEQ_SERIAL_NO.nextval from dual""" //生成流水号
var seralNo = db.base_data.selectValue(sqlSeralNo);
body.seralNokey = seralNo;
var insertSql = "";
//循环该表内需要审核字段的字段名
var sqlIfCol = """select  column_en,colum_type,type from sc_table_fields  a  
left join sc_table_types b on a.table_name_en = b.table_name_en where b.id= #{applyType}
    and  is_audity_flag ='1'
"""

var sqlIfColRes = db.base_data.camel().select(sqlIfCol);
var ifNeedReview = "0";

if (sqlIfColRes.size() > 0) {
    for (item in sqlIfColRes) {
        var columnEn1 = item.get("columnEn");
        var columType = item.get("type");
        //根据主键查询循环字段的值
        var detailSql = "";
        if (columType.toString().contains('DATE')) {
            detailSql = """ select to_char(${columnEn1},'yyyy-mm-dd hh24:mi:ss') from ${tableNameEn}   where ${pkPrimary} = #{body.pkPrimaryValue}"""
        } else {
            detailSql = """ select ${columnEn1} from ${tableNameEn}   where ${pkPrimary} = #{body.pkPrimaryValue}"""
        }


        var valueOld = db.base_data.camel().selectValue(detailSql);

        //循环body下的值与对应字段值是否相等，若不相等则是修改
        var value = body.get(columnEn1);
        var flagHave = body.containsKey(columnEn1);

        log.info("valuevaluevaluevaluevaluevalue" + value)
        value = value == null ? "" : value;
        valueOld = valueOld == null ? "" : valueOld;
        //log.info("审核字段=="+columnEn1+"原始值=="+valueOld+"修改值=="+value+"是否包含该字段"+flagHave)
        if (flagHave && value != '' && value != null && value != valueOld) {
            //   log.info("valuevaluevaluevalue"+value);
            log.info("需要审核字段==" + columnEn1 + "原始值==" + valueOld + "修改值==" + value)
            if (columType == "date") {
                if (valueOld.toString().contains(value.toString())) { //没改变

                } else {
                    ifNeedReview = "1";
                    break;
                }
            } else {
                ifNeedReview = "1";
                break;
            }

        }
    }

}

//判断是否需要审核 0无需审核，1需要审核
if (ifNeedReview == '0') {

} else {
    var sqlAleary = """select * from bds_base_data.SC_INFORMATION_APPLY_FORM where data_id=#{body.pkPrimaryValue} and
    apply_type=#{body.applyType} and audit_status='0' and apply_account ='""" + bladeAccount + """' """;
    var dataAlery = db.base_data.select(sqlAleary);
    if (dataAlery.size() >= 1) {
        var str = "存在未办结流程，不允许再次提交申请。";
        if (applyType == "3") { //船员
            str = "船员信息修改存在未办结流程，不允许再次提交申请。";
        } else if (applyType == "2") { //船舶
            str = "船舶信息修改存在未办结流程，不允许再次提交申请。";
        } else if (applyType == "1") { //船企
            str = "船企信息修改存在未办结流程，不允许再次提交申请。";
        }
        return response.json({
            resultCode: 500,
            resultMsg: str
        });
    }
}
if (applyType == "3") { //修改船员--根据注册机构划分
    //轮询派发给长江局或者江苏局
    //判断是否需要审核 0无需审核，1需要审核
    if (ifNeedReview == '0') {
        body.auditOrg = ""
    } else {
        var dd = StringRedisTemplate.opsForValue().get("auditCrew");
        if (dd == null || dd == '') { //先从江苏局开始轮询
            body.auditOrg = '江苏局';
            StringRedisTemplate.opsForValue().set("auditCrew", '江苏局');
        } else {
            if (dd == '江苏局') { //如果上一个是江苏局，下一个就是长江局来审核
                body.auditOrg = '长江局';
                StringRedisTemplate.opsForValue().set("auditCrew", '长江局');
            } else if (dd == '长江局') { //如果上一个是长江局，下一个就是长江局来审核
                body.auditOrg = '江苏局';
                StringRedisTemplate.opsForValue().set("auditCrew", '江苏局');
            }
        }
    }
    //--审核单位
    /**
    if(pkPrimaryValue!=""&&pkPrimaryValue!=null){//主键不为空是要修改
      var sql=""" select REG_ORG,(case when substr(REG_ORG,0,2)='06' then '江苏局'
                     when substr(REG_ORG,0,2)='12' then '长江局' else '' end) audit_org from 
                     bds_base_data.crew_basic_data  where id_card_no=#{body.pkPrimaryValue}""";
      var tableData=db.base_data.camel().selectOne(sql);//字段权限控制     
      if(tableData!=null){
         body.auditOrg=tableData.get("auditOrg");
         if(tableData.get("auditOrg")==null||tableData.get("auditOrg")==''){
                //轮询派发给长江局或者江苏局
                var dd=StringRedisTemplate.opsForValue().get("auditCrew");
                if(dd==null||dd==''){//先从江苏局开始轮询
                     body.auditOrg='江苏局';
                     StringRedisTemplate.opsForValue().set("auditCrew",'江苏局');
                }else{
                     if(dd=='江苏局'){//如果上一个是江苏局，下一个就是长江局来审核
                         body.auditOrg='长江局';
                         StringRedisTemplate.opsForValue().set("auditCrew",'长江局');
                     }else if(dd=='长江局'){//如果上一个是长江局，下一个就是长江局来审核
                         body.auditOrg='江苏局';
                         StringRedisTemplate.opsForValue().set("auditCrew",'江苏局');
                     }
                }

         }
      }
     } */
} else if (applyType == "2") { //修改船舶--根据船籍港所在地方
    //轮询派发给长江局或者江苏局
    if (ifNeedReview == '0') {
        body.auditOrg = ""
    } else {
        var dd = StringRedisTemplate.opsForValue().get("auditShip");
        if (dd == null || dd == '') { //先从江苏局开始轮询
            body.auditOrg = '江苏局';
            StringRedisTemplate.opsForValue().set("auditShip", '江苏局');
        } else {
            if (dd == '江苏局') { //如果上一个是江苏局，下一个就是长江局来审核
                body.auditOrg = '长江局';
                StringRedisTemplate.opsForValue().set("auditShip", '长江局');
            } else if (dd == '长江局') { //如果上一个是长江局，下一个就是长江局来审核
                body.auditOrg = '江苏局';
                StringRedisTemplate.opsForValue().set("auditShip", '江苏局');
            }
        }
    }

    /** 
        //--审核单位
       if(pkPrimaryValue!=""&&pkPrimaryValue!=null){//主键不为空是要修改
         var sql="""select REGPORT_CODE ,b.item_name_cn,c.item_name_cn,c.belong  as audit_Org 
         from bds_base_data.SC_SHIP_BASIC_DATA  a left join  dict_data.D_CB_HOME_PORT b
                        left join dict_data.d_comm_ad_division c on c.item_name_cn=b.city_name
                            on a.regport_code=b.code where a.ship_no=#{body.pkPrimaryValue}""";
         var tableData=db.base_data.camel().selectOne(sql);//字段权限控制
         if(tableData!=null){
            body.auditOrg=tableData.get("auditOrg");
            if(tableData.get("auditOrg")==null||tableData.get("auditOrg")==''){
                   //轮询派发给长江局或者江苏局
                   var dd=StringRedisTemplate.opsForValue().get("auditShip");
                   if(dd==null||dd==''){//先从江苏局开始轮询
                        body.auditOrg='江苏局';
                        StringRedisTemplate.opsForValue().set("auditShip",'江苏局');
                   }else{
                        if(dd=='江苏局'){//如果上一个是江苏局，下一个就是长江局来审核
                            body.auditOrg='长江局';
                            StringRedisTemplate.opsForValue().set("auditShip",'长江局');
                        }else if(dd=='长江局'){//如果上一个是长江局，下一个就是长江局来审核
                            body.auditOrg='江苏局';
                            StringRedisTemplate.opsForValue().set("auditShip",'江苏局');
                        }
                   }

            }
         }
        } */
} else if (applyType == "1") {

    //轮询派发给长江局或者江苏局
    if (ifNeedReview == '0') {
        body.auditOrg = ""
    } else {
        var dd = StringRedisTemplate.opsForValue().get("auditCompany");
        if (dd == null || dd == '') { //先从江苏局开始轮询
            body.auditOrg = '江苏局';
            StringRedisTemplate.opsForValue().set("auditCompany", '江苏局');
        } else {
            if (dd == '江苏局') { //如果上一个是江苏局，下一个就是长江局来审核
                body.auditOrg = '长江局';
                StringRedisTemplate.opsForValue().set("auditCompany", '长江局');
            } else if (dd == '长江局') { //如果上一个是长江局，下一个就是长江局来审核
                body.auditOrg = '江苏局';
                StringRedisTemplate.opsForValue().set("auditCompany", '江苏局');
            }
        }
    }
    /** 
  //修改船公司--注册地
   if(pkPrimaryValue!=""&&pkPrimaryValue!=null){//主键不为空是要修改
     
      var sql="""  select A.COMPANY_REG_ADDR  as audit_Org from bds_base_data.company_info_all a 
                         where USCC=#{body.pkPrimaryValue}
                       """;                   
     var tableData=db.base_data.selectOne(sql);//字段权限控制
     if(tableData!=null){
        var add=tableData.get("COMPANY_REG_ADDR");
        if(add==null||add==''){
                //轮询派发给长江局或者江苏局
                        var dd=StringRedisTemplate.opsForValue().get("auditCompany");
                        if(dd==null||dd==''){//先从江苏局开始轮询
                                body.auditOrg='江苏局';
                                StringRedisTemplate.opsForValue().set("auditCompany",'江苏局');
                        }else{
                                if(dd=='江苏局'){//如果上一个是江苏局，下一个就是长江局来审核
                                        body.auditOrg='长江局';
                                        StringRedisTemplate.opsForValue().set("auditCompany",'长江局');
                                }else if(dd=='长江局'){//如果上一个是长江局，下一个就是长江局来审核
                                        body.auditOrg='江苏局';
                                        StringRedisTemplate.opsForValue().set("auditCompany",'江苏局');
                                }
                        }
        }else{
 
               var sels=""" select belong as audit_org from  dict_data.d_comm_ad_division c where instr('"""+add+""")',c.item_name_cn)>=1
                                and belong is not null""";
               var addData=db.base_data.camel().selectOne(sels);
               if(addData!=null&&addData!=''){
                        if(addData.get("auditOrg")==null||addData.get("auditOrg")==''){
                                
                                //轮询派发给长江局或者江苏局
                                        var dd=StringRedisTemplate.opsForValue().get("auditCompany");
                                        if(dd==null||dd==''){//先从江苏局开始轮询
                                                body.auditOrg='江苏局';
                                                StringRedisTemplate.opsForValue().set("auditCompany",'江苏局');
                                        }else{
                                                if(dd=='江苏局'){//如果上一个是江苏局，下一个就是长江局来审核
                                                        body.auditOrg='长江局';
                                                        StringRedisTemplate.opsForValue().set("auditCompany",'长江局');
                                                }else if(dd=='长江局'){//如果上一个是长江局，下一个就是长江局来审核
                                                        body.auditOrg='江苏局';
                                                        StringRedisTemplate.opsForValue().set("auditCompany",'江苏局');
                                                }
                                        }

                         }else{
                              body.auditOrg=addData.get("auditOrg");   
                         }
               }else{
                //轮询派发给长江局或者江苏局
                        var dd=StringRedisTemplate.opsForValue().get("auditCompany");
                        if(dd==null||dd==''){//先从江苏局开始轮询
                                body.auditOrg='江苏局';
                                StringRedisTemplate.opsForValue().set("auditCompany",'江苏局');
                        }else{
                                if(dd=='江苏局'){//如果上一个是江苏局，下一个就是长江局来审核
                                        body.auditOrg='长江局';
                                        StringRedisTemplate.opsForValue().set("auditCompany",'长江局');
                                }else if(dd=='长江局'){//如果上一个是长江局，下一个就是长江局来审核
                                        body.auditOrg='江苏局';
                                        StringRedisTemplate.opsForValue().set("auditCompany",'江苏局');
                                }
                        }
               }
               
        }
       
     }
    }*/
}

//判断是否需要审核 0无需审核，1需要审核
if (ifNeedReview == '0') {
    insertSql = """ insert into SC_INFORMATION_APPLY_FORM (id,APPLY_TYPE,APPLY_USER_ID,APPLY_ACCOUNT,
  APPLY_NAME,APPLY_DATE,CREATE_DATE,data_id,audit_status,AUDIT_ORG) values(#{body.seralNokey},#{body.applyType},
  #{body.bladeUserId},#{body.bladeAccount},#{body.bladeName},sysdate,sysdate,#{body.pkPrimaryValue},2,#{body.auditOrg})"""
} else {
    insertSql = """ insert into SC_INFORMATION_APPLY_FORM (id,APPLY_TYPE,APPLY_USER_ID,APPLY_ACCOUNT,
  APPLY_NAME,APPLY_DATE,CREATE_DATE,data_id,audit_status,AUDIT_ORG) values(#{body.seralNokey},#{body.applyType},
  #{body.bladeUserId},#{body.bladeAccount},#{body.bladeName},sysdate,sysdate,#{body.pkPrimaryValue},0,#{body.auditOrg})"""
}



//db.base_data.insert(insertSql);//申请主表信息保存
var LastData;
var fieldsPower;
//对信息维护字段表 进行维护
if (applyType == "3") { //修改船员

    if (pkPrimaryValue != "" && pkPrimaryValue != null) { //主键不为空是要修改

        var sql = """ select * from bds_base_data.crew_basic_data where id_card_no=#{body.pkPrimaryValue}""";

        var crewData = db.base_data.selectOne(sql); //船员基本信息表

        var fieldsPowerSql = """ select * from bds_base_data.sc_table_fields where table_name_en='BDS_BASE_DATA.CREW_BASIC_DATA'""";

        fieldsPower = db.base_data.select(fieldsPowerSql); //字段权限控制

        //代码组装保存数据
        LastData = TreeUtil.ScZzSaveMap(body, crewData, fieldsPower); //代码组装返回值
        if (LastData.size() == 0) {
            return response.json({
                resultCode: 200,
                resultMsg: "未修改数据不能保存"

            });
        };
    } else { //新增数据
        //代码组装保存数据
        var fieldsPowerSql = """ select * from bds_base_data.sc_table_fields where table_name_en='BDS_BASE_DATA.CREW_BASIC_DATA'""";

        fieldsPower = db.base_data.select(fieldsPowerSql); //字段权限控制
        LastData = TreeUtil.ScZzSaveMap(body, null, fieldsPower); //代码组装返回值

    }

} else if (applyType == "2") { //修改船舶

    if (pkPrimaryValue != "" && pkPrimaryValue != null) { //主键不为空是要修改

        var sql = """ select * from bds_base_data.SC_SHIP_BASIC_DATA where ship_no=#{body.pkPrimaryValue}""";

        var crewData = db.base_data.selectOne(sql); //船员基本信息表

        var fieldsPowerSql = """ select * from bds_base_data.sc_table_fields where table_name_en='BDS_BASE_DATA.SC_SHIP_BASIC_DATA'""";

        fieldsPower = db.base_data.select(fieldsPowerSql); //字段权限控制

        //代码组装保存数据
        LastData = TreeUtil.ScZzSaveMap(body, crewData, fieldsPower); //代码组装返回值
        if (LastData.size() == 0) {
            return response.json({
                resultCode: 200,
                resultMsg: "未修改数据不能保存"

            });
        };

    } else { //新增数据
        //代码组装保存数据
        var fieldsPowerSql = """ select * from bds_base_data.sc_table_fields where table_name_en='BDS_BASE_DATA.SC_SHIP_BASIC_DATA'""";

        fieldsPower = db.base_data.select(fieldsPowerSql); //字段权限控制
        LastData = TreeUtil.ScZzSaveMap(body, null, fieldsPower); //代码组装返回值

    }

} else if (applyType == "1") { //修改船公司

    if (pkPrimaryValue != "" && pkPrimaryValue != null) { //主键不为空是要修改

        var sql = """ select * from bds_base_data.COMPANY_INFO_ALL where USCC=#{body.pkPrimaryValue}""";

        var crewData = db.base_data.selectOne(sql); //船员基本信息表

        var fieldsPowerSql = """ select * from bds_base_data.sc_table_fields where table_name_en='BDS_BASE_DATA.COMPANY_INFO_ALL'""";

        fieldsPower = db.base_data.select(fieldsPowerSql); //字段权限控制

        //代码组装保存数据
        LastData = TreeUtil.ScZzSaveMap(body, crewData, fieldsPower); //代码组装返回值
        if (LastData.size() == 0) {
            return response.json({
                resultCode: 200,
                resultMsg: "未修改数据不能保存"

            });
        };


    } else { //新增数据
        //代码组装保存数据
        var fieldsPowerSql = """ select * from bds_base_data.sc_table_fields where table_name_en='BDS_BASE_DATA.SC_SHIP_BASIC_DATA'""";

        fieldsPower = db.base_data.select(fieldsPowerSql); //字段权限控制
        LastData = TreeUtil.ScZzSaveMap(body, null, fieldsPower); //代码组装返回值
    }

} else if (applyType == "14") { //内河船员适任证

    if (pkPrimaryValue != "" && pkPrimaryValue != null) { //主键不为空是要修改

        var sql = """ select * from bds_base_data.CREW_CERT_INL_CMPT where ?{body.pkPrimaryValue,  SERIAL_NO=#{body.pkPrimaryValue}}""";

        var crewData = db.base_data.selectOne(sql); //内河船员适任证

        var fieldsPowerSql = """ select * from bds_base_data.sc_table_fields where table_name_en='BDS_BASE_DATA.CREW_CERT_INL_CMPT'""";

        fieldsPower = db.base_data.select(fieldsPowerSql); //字段权限控制

        //代码组装保存数据
        LastData = TreeUtil.ScZzSaveMap(body, crewData, fieldsPower); //代码组装返回值
        if (LastData.size() == 0) {
            return response.json({
                resultCode: 200,
                resultMsg: "未修改数据不能保存"

            });
        };


    } else { //新增数据
        return response.json({
            resultCode: 202,
            resultMsg: "暂不支持证书新增"

        });
        //代码组装保存数据
        //var fieldsPowerSql=""" select * from bds_base_data.sc_table_fields where table_name_en='BDS_BASE_DATA.SC_SHIP_BASIC_DATA'""";

        //fieldsPower=db.base_data.select(fieldsPowerSql);//字段权限控制
        //LastData=TreeUtil.ScZzSaveMap(body,null, fieldsPower);//代码组装返回值
    }

} else if (applyType == "6") { //船检证书
    var pkPrimaryValue2 = body.pkPrimaryValue2;
    if (pkPrimaryValue != "" && pkPrimaryValue != null && pkPrimaryValue2 != null && pkPrimaryValue2 != "") { //主键不为空是要修改

        var sql = """ select * from bds_base_data.SHP_SUVERY_CERT_ISSUE where SHIP_SURVEY_NO=#{body.pkPrimaryValue} and cert_Name=#{body.pkPrimaryValue2} """;

        var crewData = db.base_data.selectOne(sql); //船检证书

        var fieldsPowerSql = """ select * from bds_base_data.sc_table_fields where table_name_en='BDS_BASE_DATA.SHP_SUVERY_CERT_ISSUE'""";

        fieldsPower = db.base_data.select(fieldsPowerSql); //字段权限控制

        //代码组装保存数据
        LastData = TreeUtil.ScZzSaveMap(body, crewData, fieldsPower); //代码组装返回值
        if (LastData.size() == 0) {
            return response.json({
                resultCode: 200,
                resultMsg: "未修改数据不能保存"

            });
        };


    } else { //新增数据
        return response.json({
            resultCode: 202,
            resultMsg: "暂不支持证书新增"

        });
        //代码组装保存数据
        // var fieldsPowerSql=""" select * from bds_base_data.sc_table_fields where table_name_en='BDS_BASE_DATA.SC_SHIP_BASIC_DATA'""";

        // fieldsPower=db.base_data.select(fieldsPowerSql);//字段权限控制
        // LastData=TreeUtil.ScZzSaveMap(body,null, fieldsPower);//代码组装返回值
    }

} else if (applyType == "4") { //公司符合证明信息

    if (pkPrimaryValue != "" && pkPrimaryValue != null) { //主键不为空是要修改

        var sql = """ select * from bds_base_data.CMP_DC_NATIONAL where doc_id=#{body.pkPrimaryValue}""";

        var crewData = db.base_data.selectOne(sql); //船员基本信息表

        var fieldsPowerSql = """ select * from bds_base_data.sc_table_fields where table_name_en='BDS_BASE_DATA.CMP_DC_NATIONAL'""";

        fieldsPower = db.base_data.select(fieldsPowerSql); //字段权限控制

        //代码组装保存数据
        LastData = TreeUtil.ScZzSaveMap(body, crewData, fieldsPower); //代码组装返回值
        if (LastData.size() == 0) {
            return response.json({
                resultCode: 200,
                resultMsg: "未修改数据不能保存"

            });
        };


    } else { //新增数据
        //代码组装保存数据
        //var fieldsPowerSql=""" select * from bds_base_data.sc_table_fields where table_name_en='BDS_BASE_DATA.SC_SHIP_BASIC_DATA'""";

        //fieldsPower=db.base_data.select(fieldsPowerSql);//字段权限控制
        //LastData=TreeUtil.ScZzSaveMap(body,null, fieldsPower);//代码组装返回值
        return response.json({
            resultCode: 202,
            resultMsg: "暂不支持证书新增"

        });
    }

}

db.base_data.insert(insertSql); //申请主表信息保存


for (item in LastData) {

    item.APPLY_ID = seralNo;
    var insertSql = """insert into SC_INFORMATION_COLUMNS (APPLY_ID,TABLE_NAME_CN,
  TABLE_NAME_EN,COLUMN_CN,COLUMN_EN,DATAS,UPDATE_DATA,INSERT_FLAG,AUDIT_STATUS,
  AUDIT_COMMENTS,CREATE_DATE,LAST_UPDATE_DATE,PK_PRIMARY,PK_PRIMARY_VALUE,
  FIELD_TYPE,TRANSLATE_COLUMN_EN,TRANSLATE_DATA,dict,NOT_AUDITY_FLAG,AUDIT_REFERENCE_UNIT)
  values(#{item.APPLY_ID},#{item.TABLE_NAME_CN},#{item.TABLE_NAME_EN},
  #{item.COLUMN_CN},#{item.COLUMN_EN},#{item.DATAS},#{item.UPDATE_DATA},
  #{item.INSERT_FLAG},#{item.AUDIT_STATUS},#{item.AUDIT_COMMENTS},
  sysdate,#{item.LAST_UPDATE_DATE},#{item.PK_PRIMARY},#{item.PK_PRIMARY_VALUE},
  #{item.FIELD_TYPE},#{item.TRANSLATE_COLUMN_EN},#{item.TRANSLATE_DATA},#{item.DICT},#{item.NOT_AUDITY_FLAG},#{item.AUDIT_REFERENCE_UNIT}) """;
    db.base_data.insert(insertSql);
}




if (files == null || files == "") { //文件为空

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



//数据同步
var sql = """
        
         select 
         a.TABLE_NAME_EN,a.COLUMN_EN,a.DATAS,
        (case when AUDIT_UPDATE is not null and AUDIT_UPDATE <>'' then AUDIT_UPDATE else UPDATE_DATA end) UPDATE_DATA,
        a.AUDIT_STATUS,a.pk_primary,a.pk_primary_value,lower(a.field_type) field_type,translate_column_en,
        (case when AUDIT_UPDATE_TRANSLATE is not null and AUDIT_UPDATE_TRANSLATE <>'' 
        then AUDIT_UPDATE_TRANSLATE else translate_data end)  translate_data ,         
         (case when AUDIT_UPDATE is not null and AUDIT_UPDATE <>'' then #{bladeName}
          else b.apply_name end) operator_code,
            (case when AUDIT_UPDATE is not null and AUDIT_UPDATE <>'' then '审核人员修正'
          else '用户自主更新' end) update_by
           from SC_INFORMATION_COLUMNS a left join bds_base_data.sc_information_apply_form b on a.apply_id=b.id
           where a.APPLY_ID =#{body.seralNokey}  and a.audit_status in ('1','3')
"""
var resList = db.base_data.camel().select(sql);
var field = "";
var value = "";
var k = 1;


if (resList.size() > 0) {
    var add = false;
    var addTable;
    var i = 0;
    for (item in resList) {
        var updSql = """""";
        var updateData = item.get("updateData");
        var tableName = item.get("tableNameEn");
        var columnEn = item.get("columnEn");
        var pkPrimary = item.get("pkPrimary");
        var pkPrimaryValue = item.get("pkPrimaryValue");
        var fieldType = item.get("fieldType");
        var translateColumnEn = item.get("translateColumnEn");
        var translateData = item.get("translateData");
        var updateBy = item.get("updateBy");
        var operatorCode = item.get("operatorCode");
        var pkPrimaryArr = [];
        if (pkPrimary != null && pkPrimary != "") {
            pkPrimaryArr = pkPrimary.split("&&");
        }
        var pkPrimaryValueArr = [];
        if (pkPrimaryValue != null && pkPrimaryValue != "") {
            pkPrimaryValueArr = pkPrimaryValue.split("&&");
        }
        var where = "";
        var i = 0;
        for (item2 in pkPrimaryArr) {
            where = where + " and " + pkPrimaryArr[i] + " = '" + pkPrimaryValueArr[i] + "'";
            i++;
        }
        //log.info("pkPrimaryArrpkPrimaryArr=="+pkPrimaryArr);

        //如果是船企，单独处理标志位问题
        if (tableName.equals("BDS_BASE_DATA.COMPANY_INFO_ALL")) {
            var upSql = """update BDS_BASE_DATA.COMPANY_INFO_ALL set source_dept='1' where  1=1 ${where}  """
            db.base_data.update(updSql);
        }

        //判断当前数据存在主键并且‘转换字段名’字段不为空的情况下（说明有字段更新），进行表字段更新
        if (!"".equals(translateColumnEn) && translateColumnEn != null && pkPrimaryValue != null && !"".equals(pkPrimaryValue)) {
            updSql = """
                                update  ${tableName}  set ${translateColumnEn} = #{translateData}  where   1=1 ${where}
                        """
            db.base_data.update(updSql);
        }
        //判断当前数据存在主键并且‘修改后字段值’字段不为空的情况下（说明有字段更新），进行表字段更新，时间和非时间类型两种更新方法
        if (!"".equals(updateData) && updateData != null && fieldType != 'date' && pkPrimaryValue != null && !"".equals(pkPrimaryValue)) {
            updSql = """
                                update  ${tableName}  set ${columnEn} = #{updateData} ,LAST_UPDATE_DATE=sysdate,
                                 update_by=#{item.updateBy},operator_Code=#{item.operatorCode}    where   1=1 ${where}
                        """
            db.base_data.update(updSql);
        } else if (!"".equals(updateData) && updateData != null && 'date'.equals(fieldType) &&
            pkPrimaryValue != null && !"".equals(pkPrimaryValue)) {
            updSql = """
                                update ${tableName}  set ${columnEn} = to_date(#{updateData},'yyyy-mm-dd hh24:mi:ss'),LAST_UPDATE_DATE=sysdate
                                update_by=#{item.updateBy},operator_Code=#{item.operatorCode}  
                                 where   1=1 ${where}
                        """
            db.base_data.update(updSql);
            //判断主键为空并且有数据的情况下为新增数据，进行新增操作
        } else if ("".equals(pkPrimaryValue) || pkPrimaryValue == null) {
            addTable = tableName;
            add = true;
            if (i != resList.size() - 1) {
                field = field + columnEn + ","
                if ('date'.equals(fieldType)) {
                    value = value + "to_date('" + updateData + "','yyyy-mm-dd hh24:mi:ss'),"
                } else {
                    value = value + "'" + updateData + "',"
                }
                //如果‘转换字段名’字段不为空，则拼接到插入语句中
                if (!"".equals(translateColumnEn) && translateColumnEn != null) {
                    field = field + translateColumnEn + ","
                    value = value + "'" + translateData + "',"
                }
            } else {
                field = field + columnEn
                if ('date'.equals(fieldType)) {
                    value = value + "to_date('" + updateData + "','yyyy-mm-dd hh24:mi:ss')"
                } else {
                    value = value + "'" + updateData + "'"
                }
                //如果‘转换字段名’字段不为空，则拼接到插入语句中
                if (!"".equals(translateColumnEn) && translateColumnEn != null) {
                    field = field + translateColumnEn
                    value = value + "'" + translateData
                }
            }
            i++;
        }
    }
    var sqlSert = """ insert into ${addTable}(${field}) values(${value})""";
    if (add) {
        db.base_data.insert(sqlSert)
    }


}

//后续加附件维护

return response.json({
    resultCode: 200,
    resultMsg: "保存成功"

});