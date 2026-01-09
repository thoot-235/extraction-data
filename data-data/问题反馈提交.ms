{
  "properties" : { },
  "id" : "76e82713f0a44f93aa054bd77ddfc4fd",
  "script" : null,
  "groupId" : "c02d793d72c844c4b8d76db461f1ddf0",
  "name" : "问题反馈提交",
  "createTime" : null,
  "updateTime" : 1694505854978,
  "lock" : null,
  "createBy" : null,
  "updateBy" : "admin",
  "path" : "/freebackSubmit",
  "method" : "GET",
  "parameters" : [ {
    "name" : "problemHandRemark",
    "value" : "测四意见",
    "description" : "问题处理意见",
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }, {
    "name" : "id",
    "value" : "6000037594",
    "description" : "流水号",
    "required" : false,
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"执行成功\"\n}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : {
    "name" : "",
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "Object",
    "type" : null,
    "defaultValue" : null,
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
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "resultMsg",
      "value" : "执行成功",
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
import 'org.springblade.core.secure.utils.AuthUtil' as AuthUtil
import 'com.success.data.tag.TagUtils' as TagUtils;
import response;
import log;


BladeUser user=AuthUtil.getUser();
var bladeUserId;//登录人id
var bladeAccount;//登录人账号
var bladeName;//登录人姓名
 
if(user==null){
    return response.json({
    resultCode: 500,
    resultMsg: "用户登录后才能获取"
    
   });
}else{
      bladeUserId=user.getUserId();
      bladeAccount=user.getAccount();
      bladeName=user.getNickName();
} 
 
var  updSql= """update SC_PROBLEM_APPLY_FORM set PROBLEM_NAME=#{bladeName},PROBLEM_ACCOUNT=#{bladeAccount},PROBLEM_HAND_STATUS = '2',feedback_id = #{bladeUserId},PROBLEM_HAND_REMARK=#{problemHandRemark},PROBLEM_HAND_DATE = sysdate 
        where ID = #{id}""";
        
        db.base_data.update(updSql);
return response.json({
        resultCode: 200,
        resultMsg: "执行成功",
         
	});