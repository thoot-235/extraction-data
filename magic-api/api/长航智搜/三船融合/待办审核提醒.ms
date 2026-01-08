{
  "properties" : { },
  "id" : "756e2532289845b79a638384e7145f61",
  "script" : null,
  "groupId" : "c02d793d72c844c4b8d76db461f1ddf0",
  "name" : "待办审核提醒",
  "createTime" : null,
  "updateTime" : 1721791519618,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getAuditRemind",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"num\": \"0\"\n    }\n}",
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
      "children" : [ {
        "name" : "num",
        "value" : "0",
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
  }
}
================================
import 'org.springblade.core.secure.BladeUser' as  BladeUser;
import 'org.springblade.core.secure.utils.AuthUtil' as AuthUtil;
import 'com.success.data.tag.TagUtils' as TagUtils;
import response;
import log;




BladeUser user=AuthUtil.getUser();
log.info("BladeUserBladeUser",user)

var bladeUserId;//登录人id
var bladeAccount;//登录人账号
var bladeName;//登录人姓名
var auditOrg;//审核部门

 
if(user==null){
    return response.json({
    resultCode: 500,
    resultMsg: "用户登录后才能获取"
    
   });
}else{
      bladeUserId=user.getUserId();
      bladeAccount=user.getAccount();

      bladeName=user.getNickName();
//根据用户id查询审核部门
      var auditNumber="""with recursive c as (
            select c1.deptid ,
                        c1.parentsdeptid 
            from bladex.sys_organ_foreign c1
            where c1.deptid = (select ty_dept_id from blade_user bu  where bu.id= cast(#{bladeUserId} as varchar) )
            union all
            select c1.deptid ,
                        c1.parentsdeptid
            from c,bladex.sys_organ_foreign c1
            where c1.deptid = c.parentsdeptid
        ) 
        select (case when position('1007588' in string_agg(c.deptid,','))>=1 or position('1330398597790' in string_agg(c.deptid,','))>=1   then '江苏局'
                    when position('root' in string_agg(c.deptid,','))>=1  then '长江局'
                    else '' end) audit_org from c""";

      var auditData=db.bladex.camel().selectOne(auditNumber)  ;  
      if(auditData!=null){
         auditOrg=   auditData.get("auditOrg") ; 
      } 
     
         
} 
 

 
 
//移动端我的申请只查询自己的
var account = applyAccount;
if(account=="myselfsaccount"){
    applyAccount=bladeAccount;
}


 var  sql="""
        select count(*) num
  from SC_INFORMATION_APPLY_FORM b
    where  1=1 
     ?{auditOrg,and AUDIT_ORG  = #{auditOrg}}
     and b.audit_status ='0'
     and b.apply_type in ('1','2','3','20')
     
 

"""
var res=db.base_data.camel().selectOne(sql);



return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        data: res
	});