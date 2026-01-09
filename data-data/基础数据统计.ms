{
  "properties" : { },
  "id" : "6c26c317c1024818a51116448bb12548",
  "script" : null,
  "groupId" : "32fd6df1028049b98e9c7064eb84bfa1",
  "name" : "基础数据统计",
  "createTime" : null,
  "updateTime" : 1705375106014,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getCompanyBaseCount",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"allNum\": 7807,\n        \"managerNum\": 666,\n        \"operatorNum\": 5090,\n        \"ownerNum\": 7329,\n        \"jhlyNum\": 3290,\n        \"gzlyNum\": 4180,\n        \"punishNum\": 3329,\n        \"operatorNhNum\": 3770,\n        \"operatorYhNum\": 1401\n    }\n}",
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
      "dataType" : "Object",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "allNum",
        "value" : "7807",
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
        "name" : "managerNum",
        "value" : "666",
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
        "name" : "operatorNum",
        "value" : "5090",
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
        "name" : "ownerNum",
        "value" : "7329",
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
        "name" : "jhlyNum",
        "value" : "3290",
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
        "name" : "gzlyNum",
        "value" : "4180",
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
        "name" : "punishNum",
        "value" : "3329",
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
        "name" : "operatorNhNum",
        "value" : "3770",
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
        "name" : "operatorYhNum",
        "value" : "1401",
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
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;


//船公司总数
var allNumSql = """
        select target_val
                from dm_data.sts_basic_info
                where sts_code = '106'
                and sts_date = (select max(sts_date)
                                from dm_data.sts_basic_info
                                where sts_code = '106')
"""
//身份是船舶所有人的船公司数
var ownerNumSql = """
        select target_val
                from dm_data.sts_basic_info
                where sts_code = '92'
                and sts_date = (select max(sts_date)
                                from dm_data.sts_basic_info
                                where sts_code = '92')
"""
//身份是船舶经营人的船公司数
/**
var operatorNumSql = """
        select target_val
                from dm_data.sts_basic_info
                where sts_code = '93'
                and sts_date = (select max(sts_date)
                                from dm_data.sts_basic_info
                                where sts_code = '93'
"""*/
var operatorNumSql = """
        select count(1) target_val from ods_hs_share.trans_mgt_company where st_year = '2023' and company_name  like '%公司%'
"""
//身份是船舶管理人的船公司数
var managerNumSql = """
        select target_val
                from dm_data.sts_basic_info
                where sts_code = '94'
                and sts_date = (select max(sts_date)
                                from dm_data.sts_basic_info
                                where sts_code = '94')
"""
//参与江海联运的船公司数
var jhlyNumSql = """
        select target_val
                from dm_data.sts_basic_info
                where sts_code = '90'
                and sts_date = (select max(sts_date)
                                from dm_data.sts_basic_info
                                where sts_code = '90')
"""
//统计参与干支联运的船公司数
var gzlyNumSql = """
        select target_val
                from dm_data.sts_basic_info
                where sts_code = '91'
                and sts_date = (select max(sts_date)
                                from dm_data.sts_basic_info
                                where sts_code = '91')
"""
//有行政处罚记录的船公司数
var punishNumSql = """
        select target_val
                from dm_data.sts_basic_info
                where sts_code = '96'
                and sts_date = (select max(sts_date)
                                from dm_data.sts_basic_info
                                where sts_code = '96')
"""

//有行政处罚记录的船公司数
var operatorNhNumSql = """
        select sum(all_num)  as num from  ODS_HS_SHARE.sts_company_temp 
"""

var allNum = async db.dm_data.camel().selectInt(allNumSql);
var ownerNum = async db.dm_data.camel().selectInt(ownerNumSql);
var operatorNum = async db.dm_data.camel().selectInt(operatorNumSql);
var managerNum = async db.dm_data.camel().selectInt(managerNumSql);
var jhlyNum = async db.dm_data.camel().selectInt(jhlyNumSql);
var gzlyNum = async db.dm_data.camel().selectInt(gzlyNumSql);
var punishNum = async db.dm_data.camel().selectInt(punishNumSql);

var operatorNhNum = async db.ods_data.camel().selectInt(operatorNhNumSql);
var company = {};

company.put("allNum",allNum.get());
company.put("managerNum",managerNum.get());
company.put("operatorNum",operatorNum.get());
company.put("ownerNum",ownerNum.get());
company.put("jhlyNum", jhlyNum.get());
company.put("gzlyNum", gzlyNum.get());
company.put("punishNum", punishNum.get());
company.put("operatorNhNum", operatorNhNum.get());
company.put("operatorYhNum", 1401);
return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: company
});