{
  "properties" : { },
  "id" : "caeaefc5c7884006b4d6dfeb04ca17fb",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "修改岸基管理人员信息",
  "createTime" : null,
  "updateTime" : 1693552388857,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/updShoreBaseMangerMess",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{  \r\n    \"idCardNo\": \"370125199603149999\",\r\n    \"name\": \"333\",\r\n    \"sex\": \"2\",\r\n    \"belongCompany\":\"9133092132993795801\",\r\n    \"shoreBasedManageClass\": \"33\",\r\n    \"duty\": \"33\",\r\n    \"phone\": \"33\",\r\n    \"address\": \"33\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 200,\n    \"msg\": \"人员添加成功\"\n}",
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
      "name" : "idCardNo",
      "value" : "370125199603149999",
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
      "name" : "name",
      "value" : "333",
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
      "name" : "sex",
      "value" : "2",
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
      "name" : "belongCompany",
      "value" : "9133092132993795801",
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
      "name" : "shoreBasedManageClass",
      "value" : "33",
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
      "name" : "duty",
      "value" : "33",
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
      "name" : "phone",
      "value" : "33",
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
      "name" : "address",
      "value" : "33",
      "description" : "",
      "required" : false,
      "dataType" : "String",
      "type" : null,
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
      "name" : "msg",
      "value" : "人员添加成功",
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
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
import log;
import response;

var sql = """
    update  COMPANY_SHORE_BASED_MANAGE_PER 
       set  
       name =#{body.name},
       sex=#{body.sex},
       shore_based_manage_class=#{body.shoreBasedManageClass},
       duty=#{body.duty},
       phone=#{body.phone},
       address = #{body.address},
       last_update_date =sysdate
       where id_card_no =#{body.idCardNo} and belong_company= #{body.belongCompany}
"""
var basic = db.base_data.update(sql)

return response.json({
        code: 200,
        msg: "信息修改成功",
	});