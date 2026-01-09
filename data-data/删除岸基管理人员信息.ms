{
  "properties" : { },
  "id" : "copy1692174253895d67725",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "删除岸基管理人员信息",
  "createTime" : null,
  "updateTime" : 1693552388953,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/delShoreBaseMangerMess",
  "method" : "GET",
  "parameters" : [ {
    "name" : "belongCompany",
    "value" : "91310107774328851K",
    "description" : null,
    "required" : true,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }, {
    "name" : "idCardNo",
    "value" : "370125199603142222",
    "description" : null,
    "required" : true,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 200,\n    \"msg\": \"人员删除成功\"\n}",
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
      "name" : "msg",
      "value" : "人员删除成功",
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
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
import log;
import response;

var sql = """
  delete from COMPANY_SHORE_BASED_MANAGE_PER where belong_company=#{belongCompany} and id_card_no=#{idCardNo}
"""
var res = db.base_data.update(sql);
 	return response.json({
        code: 200,
        msg: "人员删除成功",
       
	});
