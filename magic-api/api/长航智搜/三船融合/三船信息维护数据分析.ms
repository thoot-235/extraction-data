{
  "properties" : { },
  "id" : "0969ef4a4756425ca990d1932011ac90",
  "script" : null,
  "groupId" : "c02d793d72c844c4b8d76db461f1ddf0",
  "name" : "三船信息维护数据分析",
  "createTime" : null,
  "updateTime" : 1734571959888,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getThreeShipDataAnalysis",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1712458348233,\n    \"executeTime\": 357\n}",
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
      "value" : "1712458348233",
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
      "value" : "357",
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
import lombok.experimental.var
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;

//用户注册数
var userRegisterSql = """
  SELECT count(1) FROM bladex.blade_user where create_time > to_date('2023-10-01','yyyy-MM-dd') and usertypes in('1','6','5')
"""
//用户注册数
var userRegisterIdSql = """
  SELECT id FROM bladex.blade_user where create_time > to_date('2023-10-01','yyyy-MM-dd') and usertypes in('1','6','5')
"""
//系统认证为船员的用户数
var crewUserSql = """
  select count(1) from permissions_user_role where role_id like '%crew%'
  and user_id in 
  <foreach item= "item"  collection="ids" open="(" separator = "," close = ")">
    #{item}
  </foreach>
"""
//系统认证为船公司的用户数
var companyUserSql = """
  select count(1) company_nums from permissions_user_role where role_id like '%company%'
  and user_id in 
  <foreach item= "item"  collection="ids" open="(" separator = "," close = ")">
    #{item}
  </foreach>
"""
//用户维护申请单记录数
var applyNumsSql = """
  select count(1) from bds_base_data.sc_information_apply_form
"""
//需要审核的申请单数
var auditNumsSql = """
  select count(1) from bds_base_data.sc_information_apply_form where audit_status != 2
"""
//需要审核的申请单数（长江局的总工作量）
var cjAuditNumsSql = """
  select count(1) from bds_base_data.sc_information_apply_form where audit_status != 2 and audit_org = '长江局'
"""
//需要审核的申请单数（江苏局的总工作量）
var jsAuditNumsSql = """
  select count(1) from bds_base_data.sc_information_apply_form where audit_status != 2 and audit_org = '江苏局'
"""
//已审核的申请单数
var auditedNumsSql = """
  select count(1) from bds_base_data.sc_information_apply_form where audit_status = 1
"""
//已审核的申请单数(长江局已完成工作量)
var cjAuditedNumsSql = """
  select count(1) from bds_base_data.sc_information_apply_form where audit_status = 1 and audit_org = '长江局'
"""
//已审核的申请单数（江苏局已完成工作量）
var jsAuditedNumsSql = """
  select count(1) from bds_base_data.sc_information_apply_form where audit_status = 1 and audit_org = '江苏局'
"""
//待审核的申请单数
var beAuditedNumsSql = """
  select count(1) from bds_base_data.sc_information_apply_form where audit_status = 0
"""
//待审核的申请单数(长江局待完成工作量)
var cjBeAuditedNumsSql = """
  select count(1) from bds_base_data.sc_information_apply_form where audit_status = 0 and audit_org = '长江局'
"""
//待审核的申请单数（江苏局待完成工作量）
var jsBeAuditedNumsSql = """
  select count(1) from bds_base_data.sc_information_apply_form where audit_status = 0 and audit_org = '江苏局'
"""
//船员维护字段类型
var crewColumnsSql = """
  select distinct column_cn,column_en,count(1) nums
    from bds_base_data.sc_information_columns 
    where table_name_en = 'BDS_BASE_DATA.CREW_BASIC_DATA'
    group by column_cn,column_en
    order by nums desc
"""
//船舶维护字段类型
var shipColumnsSql = """
  select distinct column_cn,column_en,count(1) nums
    from bds_base_data.sc_information_columns 
    where table_name_en = 'BDS_BASE_DATA.SC_SHIP_BASIC_DATA'
    group by column_cn,column_en
"""
//船公司维护字段类型
var companyColumnsSql = """
  select distinct column_cn,column_en,count(1) nums
    from bds_base_data.sc_information_columns 
    where table_name_en = 'BDS_BASE_DATA.COMPANY_INFO_ALL'
    group by column_cn,column_en
"""

var userRegister = async db.bladex.camel().selectInt(userRegisterSql);
var applyNums = async db.base_data.camel().selectInt(applyNumsSql);
var auditNums = async db.base_data.camel().selectInt(auditNumsSql);
var cjAuditNums = async db.base_data.camel().selectInt(cjAuditNumsSql);
var jsAuditNums = async db.base_data.camel().selectInt(jsAuditNumsSql);
var auditedNums = async db.base_data.camel().selectInt(auditedNumsSql);
var cjAuditedNums = async db.base_data.camel().selectInt(cjAuditedNumsSql);
var jsAuditedNums = async db.base_data.camel().selectInt(jsAuditedNumsSql);
var beAuditedNums = async db.base_data.camel().selectInt(beAuditedNumsSql);
var cjBeAuditedNums = async db.base_data.camel().selectInt(cjBeAuditedNumsSql);
var jsBeAuditedNums = async db.base_data.camel().selectInt(jsBeAuditedNumsSql);
var crewColumns = async db.base_data.camel().select(crewColumnsSql);
var shipColumns = async db.base_data.camel().select(shipColumnsSql);
var companyColumns = async db.base_data.camel().select(companyColumnsSql);

var userRegisterId = db.bladex.camel().select(userRegisterIdSql);
var ids = []
for(item in userRegisterId){
  var id = item.get("id");
  ids.add(id)
}
var crewUser = db.frame.camel().selectInt(crewUserSql);
var companyUser = db.frame.camel().selectInt(companyUserSql);

for(item in crewColumns.get()){
  item.put("nums",item.get("nums")::int);
}
for(item in shipColumns.get()){
  item.put("nums",item.get("nums")::int);
}
for(item in companyColumns.get()){
  item.put("nums",item.get("nums")::int);
}

var res = {};
res.put("userRegister",userRegister.get());
res.put("crewUser",crewUser);
res.put("companyUser",companyUser);
res.put("applyNums",applyNums.get());
res.put("auditNums",auditNums.get());
res.put("cjAuditNums",cjAuditNums.get());
res.put("jsAuditNums",jsAuditNums.get());
res.put("auditedNums",auditedNums.get());
res.put("cjAuditedNums",cjAuditedNums.get());
res.put("jsAuditedNums",jsAuditedNums.get());
res.put("beAuditedNums",beAuditedNums.get());
res.put("cjBeAuditedNums",cjBeAuditedNums.get());
res.put("jsBeAuditedNums",jsBeAuditedNums.get());
res.put("crewColumns",crewColumns.get());
res.put("shipColumns",shipColumns.get());
res.put("companyColumns",companyColumns.get());


return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: res
});