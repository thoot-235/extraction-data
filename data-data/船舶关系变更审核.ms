{
  "properties" : { },
  "id" : "1f5813fa8034428283d20f0555883a46",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "船舶关系变更审核",
  "createTime" : null,
  "updateTime" : 1694158314821,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/auditCompanyRefShip",
  "method" : "GET",
  "parameters" : [ {
    "name" : "applyId",
    "value" : "6000038393",
    "description" : "",
    "required" : true,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "applyStatus",
    "value" : "1",
    "description" : "",
    "required" : true,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "auditComments",
    "value" : "434",
    "description" : "",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"审核成功\"\n}",
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
      "value" : "审核成功",
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
import 'org.ssssssss.magic.utils.StringUtil' as StringUtil;
import 'java.lang.String' as String;
import 'org.springblade.core.secure.utils.AuthUtil' as AuthUtil
import 'org.springblade.core.secure.BladeUser' as  BladeUser
import log;
import response;
BladeUser user=AuthUtil.getUser();
var bladeUserId;//登录人id
var bladeAccount;//登录人账号
var bladeName;//登录人姓名
var applyId=applyId;


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
//根据登录人id获取所在部门的id和名称
    var  getDeptSql = """   
  select bu.ty_dept_id, sx.deptname
    from bladex.blade_user bu
    left join bladex.sys_organ_foreign sx
      on bu.ty_dept_id = sx.deptid
   where id = cast(#{bladeUserId} as varchar)"""
   var getDeptSqlRes  = db.bladex.camel().selectOne(getDeptSql);
   //部门id
    var  tyDeptId ; 
   //部门名称
   var  deptName ;
   if(getDeptSqlRes!=null&&getDeptSqlRes!=''){
      tyDeptId =  getDeptSqlRes.get("tyDeptId"); 
      deptName =  getDeptSqlRes.get("deptName");
   }
  
var  updApplySql= """
        update SC_INFORMATION_APPLY_FORM set AUDIT_STATUS='1',AUDIT_DATE=sysdate,AUDIT_COMMENTS=#{auditComments},
        AUDIT_NAME=#{bladeName},AUDIT_ACCOUNT = #{bladeAccount},
        audit_user_id=#{bladeUserId},AUDIT_DEPT=#{tyDeptId},AUDIT_DEPT_NAME=#{deptName}
        where id = #{applyId}
"""
        db.transaction(()=>{
               db.base_data.update(updApplySql);
        });

if(applyStatus=='2'){//审核不通过
      var updateSql="""update bds_base_data.company_ref_ship_prod set apply_status='2' where serial_no=#{applyId}""";
      db.base_data.update(updateSql);
 	return response.json({
        resultCode: 200,
        resultMsg: "审核成功"      
	});
}else if(applyStatus=='1'){//审核通过
   var updateUpdate="""update bds_base_data.company_ref_ship_prod set apply_status=#{applyStatus} where serial_no=#{applyId} """
    db.base_data.update(updateUpdate);
   var selectSql="""select * from bds_base_data.company_ref_ship_prod where serial_no=#{applyId}"""
   var data=db.base_data.camel().selectOne(selectSql);//查询申请单
   if(data.get("insertFlag").equals("1")){//如果是新增关联关系
      var inserSql=""" 
      merge into COMPANY_REF_SHIP mtb using(
                 select  #{data.uscc} uscc ,#{data.companyName} company_name 
                 ,#{data.shipRegNo} ship_reg_no ,#{data.refCode} ref_code ,#{data.refName} ref_name
                 
                 from dual
                 ) mmb on(mmb.ship_reg_no=mtb.ship_reg_no and mmb.uscc=mtb.uscc)
                 when matched then update set mtb.ref_code=mmb.ref_code, mtb.ref_name=mmb.ref_name
                 when not matched then insert (uscc,company_name,ship_reg_no,ref_code,ref_name) values(
                       mmb.uscc,mmb.company_name,mmb.ship_reg_no,mmb.ref_code,mmb.ref_name
                 )""";
      db.base_data.update(inserSql);
      //最终关联关系写入船舶融合表
           var cbGx="""
              merge into bds_base_data.sc_ship_basic_data mtb
                using (select b.ship_reg_no,
                            a.SHIP_OWNER,
                            a.SHIP_OPERATOR,
                            a.SHIP_MANAGER,
                            b.ref_code,
                            (case
                                when instr(ref_code, '1') >= 1 and
                                    instr(a.SHIP_OWNER, b.company_name) <= 0 then
                                concat(concat(a.SHIP_OWNER, ','), b.company_name)
                                when instr(ref_code, '1') >= 1 and
                                    (a.SHIP_OWNER is null or a.SHIP_OWNER = '') then
                                b.company_name
                            
                                else
                                replace(replace(replace(a.SHIP_OWNER,
                                                        concat(b.company_name, ',')),
                                                concat(',', b.company_name)),
                                        b.company_name)
                            end) new_ship_owner,
                            
                            (case
                                when instr(ref_code, '2') >= 1 and
                                    instr(a.SHIP_OPERATOR, b.company_name) <= 0 then
                                concat(concat(a.SHIP_OPERATOR, ','), b.company_name)
                                when instr(ref_code, '2') >= 1 and
                                    (a.SHIP_OPERATOR is null or a.SHIP_OPERATOR = '') then
                                b.company_name
                                else
                                replace(replace(replace(a.SHIP_OPERATOR,
                                                        concat(b.company_name, ',')),
                                                concat(',', b.company_name)),
                                        b.company_name)
                            end) new_SHIP_OPERATOR,
                            
                            (case
                                when instr(ref_code, '3') >= 1 and
                                    instr(a.SHIP_MANAGER, b.company_name) <= 0
                                
                                then
                                concat(concat(a.SHIP_MANAGER, ','), b.company_name)
                                when instr(ref_code, '3') >= 1 and
                                    (a.SHIP_MANAGER is null or a.SHIP_MANAGER = '') then
                                b.company_name
                            
                                else
                                replace(replace(replace(a.SHIP_MANAGER,
                                                        concat(b.company_name, ',')),
                                                concat(',', b.company_name)),
                                        b.company_name)
                            end) new_SHIP_MANAGER
                        from bds_base_data.sc_ship_basic_data a
                        inner join bds_base_data.company_ref_ship_prod b
                        on a.ship_reg_no = b.ship_reg_no
                        where b.serial_no = #{applyId}
                    
                    ) mmb
                on (mtb.ship_reg_no = mmb.ship_reg_no)
                when matched then
                update
                    set mtb.SHIP_OWNER    = mmb.new_SHIP_OWNER,
                        mtb.SHIP_OPERATOR = mmb.new_SHIP_OPERATOR,
                        mtb.SHIP_MANAGER  = mmb.new_SHIP_MANAGER
           """;
           db.base_data.update(cbGx);
      return response.json({
        resultCode: 200,
        resultMsg: "审核成功"      
	});   
   }else{//修改关联关系
      if(data.get("bindFlag").equals("1")){//解绑
          var sql="""merge into COMPANY_REF_SHIP mtb using(
                 select uscc,company_name,ship_reg_no,'' ref_code,'' ref_name 
                 from company_ref_ship_prod where serial_no=#{applyId} 
                 ) mmb on(mmb.ship_reg_no=mtb.ship_reg_no and mmb.uscc=mtb.uscc)
                 when matched then update set mtb.ref_code=mmb.ref_code, mtb.ref_name=mmb.ref_name
                 when not matched then insert (uscc,company_name,ship_reg_no,ref_code,ref_name) values(
                       mmb.uscc,mmb.company_name,mmb.ship_reg_no,mmb.ref_code,mmb.ref_name
                 )""";

           db.base_data.update(sql)  ;
           //最终关联关系写入船舶融合表
           var cbGx="""
              merge into bds_base_data.sc_ship_basic_data mtb
                using (select b.ship_reg_no,
                            a.SHIP_OWNER,
                            a.SHIP_OPERATOR,
                            a.SHIP_MANAGER,
                            b.ref_code,
                            (case
                                when instr(ref_code, '1') >= 1 and
                                    instr(a.SHIP_OWNER, b.company_name) <= 0 then
                                concat(concat(a.SHIP_OWNER, ','), b.company_name)
                                when instr(ref_code, '1') >= 1 and
                                    (a.SHIP_OWNER is null or a.SHIP_OWNER = '') then
                                b.company_name
                            
                                else
                                replace(replace(replace(a.SHIP_OWNER,
                                                        concat(b.company_name, ',')),
                                                concat(',', b.company_name)),
                                        b.company_name)
                            end) new_ship_owner,
                            
                            (case
                                when instr(ref_code, '2') >= 1 and
                                    instr(a.SHIP_OPERATOR, b.company_name) <= 0 then
                                concat(concat(a.SHIP_OPERATOR, ','), b.company_name)
                                when instr(ref_code, '2') >= 1 and
                                    (a.SHIP_OPERATOR is null or a.SHIP_OPERATOR = '') then
                                b.company_name
                                else
                                replace(replace(replace(a.SHIP_OPERATOR,
                                                        concat(b.company_name, ',')),
                                                concat(',', b.company_name)),
                                        b.company_name)
                            end) new_SHIP_OPERATOR,
                            
                            (case
                                when instr(ref_code, '3') >= 1 and
                                    instr(a.SHIP_MANAGER, b.company_name) <= 0
                                
                                then
                                concat(concat(a.SHIP_MANAGER, ','), b.company_name)
                                when instr(ref_code, '3') >= 1 and
                                    (a.SHIP_MANAGER is null or a.SHIP_MANAGER = '') then
                                b.company_name
                            
                                else
                                replace(replace(replace(a.SHIP_MANAGER,
                                                        concat(b.company_name, ',')),
                                                concat(',', b.company_name)),
                                        b.company_name)
                            end) new_SHIP_MANAGER
                        from bds_base_data.sc_ship_basic_data a
                        inner join bds_base_data.company_ref_ship_prod b
                        on a.ship_reg_no = b.ship_reg_no
                        where b.serial_no = #{applyId}
                    
                    ) mmb
                on (mtb.ship_reg_no = mmb.ship_reg_no)
                when matched then
                update
                    set mtb.SHIP_OWNER    = mmb.new_SHIP_OWNER,
                        mtb.SHIP_OPERATOR = mmb.new_SHIP_OPERATOR,
                        mtb.SHIP_MANAGER  = mmb.new_SHIP_MANAGER
           """;
           db.base_data.update(cbGx);
             return response.json({
                  resultCode: 200,
                  resultMsg: "审核成功"      
              });    
      }else{//修改 --原来的出租方、承租方、抵押权人、抵押人 关联关系不变
         if(data.get("refName")!=null){
            var name=data.get("oldRefName").toString().replace("船舶所有人,","").replace(",船舶所有人","").replace("船舶所有人","")
            .replace("船舶经营人,","").replace(",船舶经营人","").replace("船舶经营人","")
            .replace("船舶管理人,","").replace(",船舶管理人","").replace("船舶管理人","");
            if(name==null||name==''){
                  data.refNameNew=data.refName
            }else{
                  data.refNameNew=data.refName+","+data.get("oldRefName").toString().replace("船舶所有人,","").replace(",船舶所有人","").replace("船舶所有人","")
                              .replace("船舶经营人,","").replace(",船舶经营人","").replace("船舶经营人","")
                              .replace("船舶管理人,","").replace(",船舶管理人","").replace("船舶管理人","");
            }
            
           
           var oldRefCode=data.get("oldRefCode").toString().replace("1,","").replace(",1","").replace("1","")
                  .replace("2,","").replace(",2","").replace("2","")
                  .replace("3,","").replace(",3","").replace("3","");
            if(oldRefCode==null||oldRefCode==''){
                  data.refCodeNew=data.refCode;
            }else{
                  data.refCodeNew=data.refCode+","+data.get("oldRefCode").toString().replace("1,","").replace(",1","").replace("1","")
                  .replace("2,","").replace(",2","").replace("2","")
                  .replace("3,","").replace(",3","").replace("3","");
            }
            
           
         }
        
         var sql="""merge into COMPANY_REF_SHIP mtb using(
                 select uscc,company_name,ship_reg_no,#{data.refCodeNew} ref_code,#{data.refNameNew} ref_name 
                 from company_ref_ship_prod where serial_no=#{applyId} 
                 ) mmb on(mmb.ship_reg_no=mtb.ship_reg_no and mmb.uscc=mtb.uscc)
                 when matched then update set mtb.ref_code=mmb.ref_code, mtb.ref_name=mmb.ref_name
                 when not matched then insert (uscc,company_name,ship_reg_no,ref_code,ref_name) values(
                       mmb.uscc,mmb.company_name,mmb.ship_reg_no,mmb.ref_code,mmb.ref_name
                 )""";

           db.base_data.update(sql)  ;

           //最终关联关系写入船舶融合表
           var cbGx="""
              merge into bds_base_data.sc_ship_basic_data mtb
                using (select b.ship_reg_no,
                            a.SHIP_OWNER,
                            a.SHIP_OPERATOR,
                            a.SHIP_MANAGER,
                            b.ref_code,
                            (case
                                when instr(ref_code, '1') >= 1 and
                                    instr(a.SHIP_OWNER, b.company_name) <= 0 then
                                concat(concat(a.SHIP_OWNER, ','), b.company_name)
                                when instr(ref_code, '1') >= 1 and
                                    (a.SHIP_OWNER is null or a.SHIP_OWNER = '') then
                                b.company_name
                            
                                else
                                replace(replace(replace(a.SHIP_OWNER,
                                                        concat(b.company_name, ',')),
                                                concat(',', b.company_name)),
                                        b.company_name)
                            end) new_ship_owner,
                            
                            (case
                                when instr(ref_code, '2') >= 1 and
                                    instr(a.SHIP_OPERATOR, b.company_name) <= 0 then
                                concat(concat(a.SHIP_OPERATOR, ','), b.company_name)
                                when instr(ref_code, '2') >= 1 and
                                    (a.SHIP_OPERATOR is null or a.SHIP_OPERATOR = '') then
                                b.company_name
                                else
                                replace(replace(replace(a.SHIP_OPERATOR,
                                                        concat(b.company_name, ',')),
                                                concat(',', b.company_name)),
                                        b.company_name)
                            end) new_SHIP_OPERATOR,
                            
                            (case
                                when instr(ref_code, '3') >= 1 and
                                    instr(a.SHIP_MANAGER, b.company_name) <= 0
                                
                                then
                                concat(concat(a.SHIP_MANAGER, ','), b.company_name)
                                when instr(ref_code, '3') >= 1 and
                                    (a.SHIP_MANAGER is null or a.SHIP_MANAGER = '') then
                                b.company_name
                            
                                else
                                replace(replace(replace(a.SHIP_MANAGER,
                                                        concat(b.company_name, ',')),
                                                concat(',', b.company_name)),
                                        b.company_name)
                            end) new_SHIP_MANAGER
                        from bds_base_data.sc_ship_basic_data a
                        inner join bds_base_data.company_ref_ship_prod b
                        on a.ship_reg_no = b.ship_reg_no
                        where b.serial_no = #{applyId}
                    
                    ) mmb
                on (mtb.ship_reg_no = mmb.ship_reg_no)
                when matched then
                update
                    set mtb.SHIP_OWNER    = mmb.new_SHIP_OWNER,
                        mtb.SHIP_OPERATOR = mmb.new_SHIP_OPERATOR,
                        mtb.SHIP_MANAGER  = mmb.new_SHIP_MANAGER
           """;
           db.base_data.update(cbGx);
             return response.json({
                  resultCode: 200,
                  resultMsg: "审核成功"      
              }); 

      }

   }

}


