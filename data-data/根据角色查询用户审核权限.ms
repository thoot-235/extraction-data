{
  "properties" : { },
  "id" : "5b2fbb2ff0854e44aa1bf3e8ada7491f",
  "script" : null,
  "groupId" : "c02d793d72c844c4b8d76db461f1ddf0",
  "name" : "根据角色查询用户审核权限",
  "createTime" : null,
  "updateTime" : 1694505854752,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getAuditDataList",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"result\": {\n        \"roleId\": \"1658718335541260289;Audit_User;Problem_Feedback;basic;company_audit;crew_audit;ship_audit\",\n        \"roleName\": \"长航局级;审核用户角色;问题反馈角色;个人基本角色;船公司数据审核角色;船员数据审核角色;船舶数据审核角色\"\n    },\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\"\n}",
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
      "name" : "result",
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
        "name" : "roleId",
        "value" : "1658718335541260289;Audit_User;Problem_Feedback;basic;company_audit;crew_audit;ship_audit",
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
        "name" : "roleName",
        "value" : "长航局级;审核用户角色;问题反馈角色;个人基本角色;船公司数据审核角色;船员数据审核角色;船舶数据审核角色",
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
    }, {
      "name" : "resultCode",
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
      "name" : "resultMsg",
      "value" : "查询成功",
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
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;//返回结果
import 'com.success.data.tag.TagUtils' as TagUtils;//导入标签配置类
import 'org.ssssssss.magic.utils.TreeUtil' as TreeUtil;
import 'org.ssssssss.magic.entity.TreeModel' as TreeModel;
import 'com.alibaba.fastjson.JSON' as JSONA
import 'org.springblade.core.secure.utils.AuthUtil' as AuthUtil
import 'org.springblade.core.secure.BladeUser' as  BladeUser
import 'org.springframework.data.redis.core.StringRedisTemplate' as StringRedisTemplate

BladeUser user=AuthUtil.getUser();
var userId;
var roleData="";
if(user==null){
   
}else{
   userId=user.getUserId();
}

if(userId!=null&&userId!=""){
    var roleSql="""
   select listagg(b.id,';') within group (order by b.id)  as role_Id,listagg(b.role_name,';') within group (order by b.id) as role_name  from (
            SELECT DISTINCT a.id,A.update_flag, REGEXP_SUBSTR(A.role_id, '[^,]+', 1, Level, 'i') role_id
              FROM (SELECT *
                      FROM frame.permissions_user_role T
                    WHERE T.user_id = '"""+userId+"""') A
            CONNECT BY Level  <= LENGTH(A.role_id) -
                       LENGTH(REGEXP_REPLACE(A.role_id, ',', '')) + 1
                       ) a  inner join frame.permissions_role_dict b  on a.role_id=b.id
                       where 1=1""";
       roleData=db.frame.camel().selectOne(roleSql) ;//获取权限

       }

//组装参数字典
var back=[];
if(roleData==null||roleData==''){
   back=""
}else{
    if(roleData.get("roleId")!=null){
        if(roleData.get("roleId").toString().contains("company_audit")){
                var map={
                    key:"1",
                    value:"船公司基本信息"
                }
                back.add(map);
            }
         if(roleData.get("roleId").toString().contains("ship_audit")){
                var map={
                    key:"2",
                    value:"船舶基本信息"
                }
                back.add(map);
            }   

        if(roleData.get("roleId").toString().contains("crew_audit")){
                var map={
                    key:"3",
                    value:"船员基本信息"
                }
                back.add(map);
            }  

         if(roleData.get("roleId").toString().contains("update_ref_ship")){
                var map={
                    key:"20",
                    value:"船舶关系变更"
                }
                back.add(map);
            }       
    }
}

import response;
return response.json({   
       result: back ,
       resultCode: 200,
       resultMsg: "查询成功"
   });  
