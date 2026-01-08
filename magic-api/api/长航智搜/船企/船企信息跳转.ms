{
  "properties" : { },
  "id" : "6dbdc90df325407eac96253c105c19dc",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "船企信息跳转",
  "createTime" : null,
  "updateTime" : 1740541725927,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getCompBaseInfoTurn",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"uscc\":\"91420100MA4KLLRY4D\",\r\n    \"companyName\":\"长航货运有限公司\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"msg\": \"缺失令牌,鉴权失败\",\n    \"code\": 401,\n    \"data\": null\n}",
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
      "name" : "uscc",
      "value" : "91420100MA4KLLRY4D",
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
      "name" : "companyName",
      "value" : "长航货运有限公司",
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
    "type" : null,
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ {
      "name" : "msg",
      "value" : "缺失令牌,鉴权失败",
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
      "name" : "code",
      "value" : "401",
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
      "name" : "data",
      "value" : "null",
      "description" : "",
      "required" : false,
      "dataType" : "Object",
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
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
import response;


var uscc = body.uscc;
var companyName=body.companyName;



if ((uscc == null || uscc == '') && (companyName == null || companyName == '') ) {
     return response.json({
        resultCode: 400,
        resultMsg: "参数【uscc】、【companyName】不可同时为空",
    });
}
var sql="""
SELECT
	organization_code as COMPANY_ID,
	USCC as credit_code,
	COMPANY_NAME
FROM
	BDS_BASE_DATA.company_info_all  
WHERE  ship_comp_flag='1'
?{body.uscc,and uscc = #{body.uscc} }
?{body.companyName,and COMPANY_NAME = #{body.companyName} }
"""
var data=db.ods_data.camel().selectOne(sql);

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: data
});
