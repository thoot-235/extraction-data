{
  "properties" : { },
  "id" : "485ea5ad5232457ab559144630163a16",
  "script" : null,
  "groupId" : "c02d793d72c844c4b8d76db461f1ddf0",
  "name" : "查询任务列表",
  "createTime" : null,
  "updateTime" : 1721802958819,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getTaskMess",
  "method" : "GET",
  "parameters" : [ {
    "name" : "applyType",
    "value" : "",
    "description" : "类型",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "applyName",
    "value" : { },
    "description" : "申请人姓名",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "applyAccount",
    "value" : { },
    "description" : "申请人账号",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "applyStartDate",
    "value" : { },
    "description" : "申请开始时间",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "auditStatus",
    "value" : "",
    "description" : "状态",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "applyEndDate",
    "value" : { },
    "description" : "申请结束时间",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "page",
    "value" : "1",
    "description" : "",
    "required" : true,
    "dataType" : "Integer",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "size",
    "value" : "1",
    "description" : "",
    "required" : true,
    "dataType" : "Integer",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "id",
    "value" : "",
    "description" : "流水号",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"list\": [{\n            \"rowno\": \"1\",\n            \"id\": \"6000038643\",\n            \"applyType\": \"船员基础信息\",\n            \"applyAccount\": \"JSMSA849121\",\n            \"applyName\": \"张传成\",\n            \"auditDept\": \"\",\n            \"applyDate\": \"2023-10-20 08:54:45\",\n            \"auditStatus\": \"无需审核\",\n            \"auditDate\": \"\",\n            \"totalCount\": \"221\",\n            \"auditComments\": \"\"\n        }],\n        \"total\": 221\n    }\n}",
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
        "name" : "list",
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
            "name" : "rowno",
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
            "name" : "id",
            "value" : "6000038643",
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
            "name" : "applyType",
            "value" : "船员基础信息",
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
            "name" : "applyAccount",
            "value" : "JSMSA849121",
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
            "name" : "applyName",
            "value" : "张传成",
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
            "name" : "auditDept",
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
            "name" : "applyDate",
            "value" : "2023-10-20 08:54:45",
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
            "name" : "auditStatus",
            "value" : "无需审核",
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
            "name" : "auditDate",
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
            "name" : "totalCount",
            "value" : "221",
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
            "name" : "auditComments",
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
        } ]
      }, {
        "name" : "total",
        "value" : "221",
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
    } ]
  }
}
================================
import 'org.springblade.core.secure.BladeUser' as  BladeUser
import 'org.springblade.core.secure.utils.AuthUtil' as AuthUtil
import 'com.success.data.tag.TagUtils' as TagUtils;
import response;
import log;




BladeUser user=AuthUtil.getUser();
log.info("BladeUserBladeUser",BladeUser)

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
log.info("bladeAccountbladeAccount",user.getAccount())

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
         auditOrg=  auditData.get("auditOrg") ; 
      } 
     if(applyAccount=="myselfsaccount"){
      auditOrg=null;
}
         
}  
 

 
 
//移动端我的申请只查询自己的
var account = applyAccount;
if(account=="myselfsaccount"){
    applyAccount=bladeAccount;
}

log.info("applyType"+applyType)

 var  sql="""select *
        from (select rownum rowno, b.*
              from (
        select AUDIT_ORG,AUDIT_NAME,AUDIT_ACCOUNT,id,
        (case when b.apply_type='20' then '船舶关系变更' else
         (select  table_name_cn FROM  sc_table_types a where a.id=trim(b.apply_type)) end)apply_type ,
       apply_account,
       apply_name,
       audit_dept_name as audit_dept,
       to_char(apply_date,'yyyy-mm-dd hh24:mi:ss')apply_date,
       (case audit_status when  '0' then '待审核' when '1' then '已审核' when '2' then '无需审核' else '' end) audit_status,
       to_char(audit_date,'yyyy-mm-dd hh24:mi:ss')audit_date,count(*) over() total_count,AUDIT_COMMENTS
  from SC_INFORMATION_APPLY_FORM b
    where  1=1 
  ?{id,and id  = #{id}}
  ?{applyType,and apply_type  in (${applyType})}
  ?{applyName,and apply_name  = #{applyName}}
  ?{applyAccount,and apply_account  = #{applyAccount}}
  ?{auditStatus,and audit_status  = #{auditStatus}}
  ?{auditOrg,and (AUDIT_ORG  = #{auditOrg} or AUDIT_ORG is null or AUDIT_ORG='')}
  
  ?{applyStartDate,and apply_date >= to_date(#{applyStartDate},'yyyy-mm-dd hh24:mi:ss')}
  ?{applyEndDate,and apply_date < to_date(#{applyEndDate},'yyyy-mm-dd hh24:mi:ss')}
 order by audit_date desc,apply_date desc
 ) b
        where rownum <= (#{page}*#{size}))
        a where a.rowno >((#{page}-1)*#{size})

"""
var res=db.base_data.camel().select(sql);
var totalCount=0;
 var back={};
if(res.size()>0){
        for(item in res){
                totalCount = item.get("totalCount");
        }  
        back.put("list",res) ;
        back.put("total",Integer.parseInt(totalCount::string))     
}else{
        back.put("list",[]) ;
        back.put("total",0) ;
}
 


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        data: back
	});