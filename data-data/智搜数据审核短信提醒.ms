{
  "properties" : { },
  "id" : "807bd1a7c1124cd99b68a729f3b4cbd5",
  "script" : null,
  "groupId" : "c02d793d72c844c4b8d76db461f1ddf0",
  "name" : "智搜数据审核短信提醒",
  "createTime" : null,
  "updateTime" : 1697448356155,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getAuditData",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 1,\n    \"message\": \"success\",\n    \"data\": {},\n    \"timestamp\": 1696924653411,\n    \"executeTime\": 10183\n}",
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
      "value" : "1",
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
      "value" : "success",
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
      "value" : "1696924653411",
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
      "value" : "10183",
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
import 'org.springblade.core.secure.BladeUser' as  BladeUser
import 'org.springblade.core.secure.utils.AuthUtil' as AuthUtil
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.springframework.util.DigestUtils' DigestUtils;
import 'java.util.UUID' UUID;
import'org.ssssssss.magic.utils.HttpClientUtil' as HttpClientUtil;
import 'com.alibaba.fastjson.JSONObject' JSONObject;
import 'java.util.HashMap' as HashMap
import 'java.util.Map' as Map
import response;
import log;
import 'org.springblade.common.utils.FishermanUtil' as FishermanUtil //正式环境放开，测试环境注释掉


//查询所有有审核权限的人
var  userSql=""" select a.user_id,b.audit_type as update_ref_ship ,c.audit_type as crew_audit ,d.audit_type as company_audit,e.audit_type as ship_audit  from (
select user_id from frame.permissions_user_role where role_id  
like '%update_ref_ship%' or  role_id  like '%crew_audit%' or role_id  like '%company_audit%'
or  role_id  like '%ship_audit%' ) a left join (

select user_id,20 audit_Type from frame.permissions_user_role where role_id  like '%update_ref_ship%')  b on a.user_id=b.user_id
left join (
select user_id,3 audit_Type from frame.permissions_user_role where role_id  like '%crew_audit%')c on a.user_id=c.user_id
left join (
select user_id,1 audit_Type from frame.permissions_user_role where role_id  like '%company_audit%')d on a.user_id=d.user_id
left join (
select user_id,2 audit_Type from frame.permissions_user_role where role_id  like '%ship_audit%')e on a.user_id=e.user_id """;

var userData=db.frame.camel().select(userSql);

//1船公司信息维护、2船舶信息维护、3船员信息维护、20船舶关系变更)--
var auditNum="""
select audit_org,listagg( concat(concat(apply_type,'-'),Reminder),',')  within group (order by audit_org) as Reminder 
from (select audit_org,APPLY_TYPE,count(*) Reminder from bds_base_data.sc_information_apply_form 
where AUDIT_STATUS='0' and APPLY_TYPE in (1,2,3,20)  and audit_org is not null
group by audit_org,APPLY_TYPE) group by audit_org """;
var auditNumCount=db.base_data.camel().select(auditNum);



for(user in userData){
  var bladeUserId=user.get("userId");
  var update_ref_ship=user.get("updateRefShip");
  var crew_audit=user.get("crewAudit");
  var company_audit=user.get("companyAudit");
  var ship_audit=user.get("shipAudit");
  
  var audNum=0;
     //根据用户id查询审核部门
      var auditNumber="""with recursive c as (
            select c1.deptid ,
                        c1.parentsdeptid 
            from bladex.sys_organ_foreign c1
            where c1.deptid = (select ty_dept_id from blade_user bu  where bu.id= #{bladeUserId} )
            union all
            select c1.deptid ,
                        c1.parentsdeptid
            from c,bladex.sys_organ_foreign c1
            where c1.deptid = c.parentsdeptid
        ) 
        select (case when position('1007588' in string_agg(c.deptid,','))>=1 or 
        position('1330398597790' in string_agg(c.deptid,','))>=1   then '江苏局'
                    when position('root' in string_agg(c.deptid,','))>=1  then '长江局'
                    else '' end) audit_org from c""";

      var auditData=db.bladex.camel().selectOne(auditNumber)  ;  
      if(auditData!=null){//只有长江局和江苏局的才会提醒
      
         auditOrg=  auditData.get("auditOrg") ; //用户所属部门
         for(aud in auditNumCount){
               var audit_org=aud.get("auditOrg");//审核部门
               var Reminder=aud.get("reminder");//审核部门三船审核次数  --江苏局	2-11,3-6,1-8,20-7
               if(auditOrg.equals(audit_org)){
                   //根据这个用户有几种审核权限，统计需要提醒次数
                    //var update_ref_ship=user.get("updateRefShip");
                    //var crew_audit=user.get("crewAudit");
                    //var company_audit=user.get("companyAudit");
                    //var ship_audit=user.get("shipAudit");
                    var reminderArr=Reminder.toString().split(",")
                    for (item in reminderArr){
                      var type=item.toString().split("-")[0];
                      var num=item.toString().split("-")[1];
                      if(type==(update_ref_ship)
                      ||type==(crew_audit)
                      ||type==(company_audit)
                      ||type==(ship_audit)){
                            audNum+=Integer.parseInt(num);
                      }
                    }
               }
         }
      }
     
     if(audNum>0){//只有待审核数大于0才会提醒
        log.info("用户id"+bladeUserId+"有几个提醒"+audNum);
        var userDa="""select phone,name from blade_user bu  where id= #{bladeUserId} and phone is not null 
        and phone <>''""" 
        var usdata=db.bladex.selectOne(userDa)
        if(usdata!=null){//用户不为空才会发送短信
           var phone=usdata.get("phone");
           phone=FishermanUtil.dncSm4(phone);
           //phone="13964161780";
           var name=usdata.get("name")
           //拼装短信
           var msg="长江e%2b：数据审核用户，您当前有"+audNum+"条待审核的工作任务，请尽快完成！";
           var sign = DigestUtils.md5DigestAsHex
           ("username=zymlxt&password=202251&key=l9xAcoS4H".getBytes());
            var url = 
            "http://172.17.192.80:8000/Sms2/cmasoutapi?method=httpSend&username=zymlxt"+
            "&password=202251&key=l9xAcoS4H&mobile=" + phone +
             "&msg=" + msg + "&needstatus=true&needmo=false&sign=" + sign;
             var uuid=UUID.randomUUID().toString().replace("-", "");
             var insert="""insert into frame.SYS_short_message_log(uuid,resourceid,message,source)values(
             #{uuid},#{bladeUserId},#{url},'三船审核'
            )""";
            db.frame.insert(insert);//发送前保存发送信息
            Map map=new HashMap();
            map.put("apikey","yweHJ69IMxOk6xVG3p9cHLAbPWIy6lnj")
                               
            var backmessage= HttpClientUtil.sendResultPostByFormDataDx(url.toString(), {}, map   , 2, "");
            var update="""UPDATE frame.SYS_short_message_log SET backmessage=#{backmessage} WHERE uuid=#{uuid}""";
            db.frame.update(update);

        }
     }
}
 
    


 