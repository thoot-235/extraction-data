{
  "properties" : { },
  "id" : "228e2504f4c34405b567fce75e0073a7",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "船舶关联关系维护",
  "createTime" : null,
  "updateTime" : 1743415449665,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/saveRefShips",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n  \"companyName\": \"上海中船重工万邦航运有限公司\",\r\n  \"insertFlag\": \"2\",\r\n  \"shipRegNo\": \"270412000033\",\r\n  \"uscc\": \"91310000717857482U\",\r\n  \"bindFlag\": \"1\",\r\n  \"refName\": \"\",\r\n  \"refCode\": \"\",\r\n  \"files\": []\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"保存成功\"\n}",
  "description" : "",
  "requestBodyDefinition" : {
    "name" : "root",
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
      "name" : "companyName",
      "value" : "上海中船重工万邦航运有限公司",
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
      "name" : "insertFlag",
      "value" : "2",
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
      "name" : "shipRegNo",
      "value" : "270412000033",
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
      "name" : "uscc",
      "value" : "91310000717857482U",
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
      "name" : "bindFlag",
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
      "name" : "refName",
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
      "name" : "refCode",
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
      "name" : "files",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Array",
      "type" : "",
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
      "value" : "保存成功",
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
import log;
import response;
import 'org.springblade.core.secure.BladeUser' as  BladeUser
import 'org.springblade.core.secure.utils.AuthUtil' as AuthUtil
import 'org.ssssssss.magic.utils.TreeUtil' as TreeUtil;
import 'com.alibaba.fastjson.JSON' as JSONA
import 'com.alibaba.fastjson.JSONObject' as JSONObjectA
import 'org.springframework.data.redis.core.StringRedisTemplate' as StringRedisTemplate


var uscc = body.uscc;
var shipRegNo = body.shipRegNo;
var refCode = body.refCode;
var refName = body.refName;
var bindFlag = body.bindFlag;
var insertFlag=body.insertFlag;


BladeUser user=AuthUtil.getUser();
var bladeUserId;//申请人id
var bladeAccount;//申请人账号
var bladeName;//申请人姓名

if(user==null){
    
   return response.json({
    resultCode: 500,
    resultMsg: "用户登录后才能维护"
   });  
}else{
      bladeUserId=user.getUserId();
      bladeAccount=user.getAccount();
      bladeName=user.getNickName();
      body.bladeUserId=bladeUserId;
      body.bladeAccount=bladeAccount;
      body.bladeName=bladeName;
}  

if(uscc==null||uscc==''){
 	return response.json({
        resultCode: 500,
        resultMsg: "统一社会信用代码不能为空"      
	});
}

if(shipRegNo==null||shipRegNo==''){
 	return response.json({
        resultCode: 500,
        resultMsg: "shipRegNo不能为空"      
	});
}





if(insertFlag==null||insertFlag==''){
 	return response.json({
        resultCode: 500,
        resultMsg: "变更标志不能为空"      
	});
}
//先维护主表信息
var sqlSeralNo="""select SEQ_SERIAL_NO.nextval from dual"""//生成流水号
var seralNo=db.base_data.selectValue(sqlSeralNo);
body.seralNokey=seralNo;

//审核单位
if(uscc!=""&&uscc!=null){//主键不为空是要修改
     
      var sql=""" select a.city , c.item_name_cn,c.belong  as audit_Org from bds_base_data.company_info_all a left join dict_data.d_comm_ad_division c
                        on a.city=c.code where USCC=#{body.uscc}""";                   
     var tableData=db.base_data.camel().selectOne(sql);//字段权限控制
     if(tableData!=null){
        body.auditOrg=tableData.get("auditOrg");
        if(tableData.get("auditOrg")==null||tableData.get("auditOrg")==''){
               //轮询派发给长江局或者江苏局
               var dd=StringRedisTemplate.opsForValue().get("auditRefCompany");
               if(dd==null||dd==''){//先从江苏局开始轮询
                    body.auditOrg='江苏局';
                    StringRedisTemplate.opsForValue().set("auditRefCompany",'江苏局');
               }else{
                    if(dd=='江苏局'){//如果上一个是江苏局，下一个就是长江局来审核
                        body.auditOrg='长江局';
                        StringRedisTemplate.opsForValue().set("auditRefCompany",'长江局');
                    }else if(dd=='长江局'){//如果上一个是长江局，下一个就是长江局来审核
                        body.auditOrg='江苏局';
                        StringRedisTemplate.opsForValue().set("auditRefCompany",'长江局');
                    }
               }

        }else{
            //轮询派发给长江局或者江苏局
               var dd=StringRedisTemplate.opsForValue().get("auditRefCompany");
               if(dd==null||dd==''){//先从江苏局开始轮询
                    body.auditOrg='江苏局';
                    StringRedisTemplate.opsForValue().set("auditRefCompany",'江苏局');
               }else{
                    if(dd=='江苏局'){//如果上一个是江苏局，下一个就是长江局来审核
                        body.auditOrg='长江局';
                        StringRedisTemplate.opsForValue().set("auditRefCompany",'长江局');
                    }else if(dd=='长江局'){//如果上一个是长江局，下一个就是长江局来审核
                        body.auditOrg='江苏局';
                        StringRedisTemplate.opsForValue().set("auditRefCompany",'长江局');
                    }
               }
        }
     }else{
         //轮询派发给长江局或者江苏局
               var dd=StringRedisTemplate.opsForValue().get("auditRefCompany");
               if(dd==null||dd==''){//先从江苏局开始轮询
                    body.auditOrg='江苏局';
                    StringRedisTemplate.opsForValue().set("auditRefCompany",'江苏局');
               }else{
                    if(dd=='江苏局'){//如果上一个是江苏局，下一个就是长江局来审核
                        body.auditOrg='长江局';
                        StringRedisTemplate.opsForValue().set("auditRefCompany",'长江局');
                    }else if(dd=='长江局'){//如果上一个是长江局，下一个就是长江局来审核
                        body.auditOrg='江苏局';
                        StringRedisTemplate.opsForValue().set("auditRefCompany",'长江局');
                    }
               }
     }
    }else{
        //轮询派发给长江局或者江苏局
               var dd=StringRedisTemplate.opsForValue().get("auditRefCompany");
               if(dd==null||dd==''){//先从江苏局开始轮询
                    body.auditOrg='江苏局';
                    StringRedisTemplate.opsForValue().set("auditRefCompany",'江苏局');
               }else{
                    if(dd=='江苏局'){//如果上一个是江苏局，下一个就是长江局来审核
                        body.auditOrg='长江局';
                        StringRedisTemplate.opsForValue().set("auditRefCompany",'长江局');
                    }else if(dd=='长江局'){//如果上一个是长江局，下一个就是长江局来审核
                        body.auditOrg='江苏局';
                        StringRedisTemplate.opsForValue().set("auditRefCompany",'长江局');
                    }
               }
    }

//判断是否需要审核 1需审核，2不需要审核  （库表存applys_status 0 待审核，1是已审核，2是无需审核）
if(bindFlag=='1'){//解绑 对应无需审核
    insertSql = """ insert into SC_INFORMATION_APPLY_FORM (id,APPLY_TYPE,APPLY_USER_ID,APPLY_ACCOUNT,
  APPLY_NAME,APPLY_DATE,CREATE_DATE,audit_status,audit_Org) values(#{body.seralNokey},20,
  #{body.bladeUserId},#{body.bladeAccount},#{body.bladeName},sysdate,sysdate,2,#{body.auditOrg})"""
  db.base_data.insert(insertSql);  
  var insert =""" insert into bds_base_data.company_ref_ship_prod  (uscc,ship_reg_no,ref_code,ref_name,
                        bind_flag,company_name,insert_flag,old_ref_code,old_ref_name,serial_no,APPLY_STATUS) 
                        values(#{body.uscc},#{body.shipRegNo},
                   #{body.refCode},#{body.refName},#{body.bindFlag},#{body.companyName},
                   #{body.insertFlag},#{body.oldRefCode},#{body.oldRefName},#{body.seralNokey},1 )"""
  db.base_data.insert(insert);  

  //数据直接变更

  //审核通过
   var selectSql="""select * from bds_base_data.company_ref_ship_prod where serial_no=#{body.seralNokey}"""
   var data=db.base_data.camel().selectOne(selectSql);//查询申请单
   if(data.get("insertFlag").equals("1")){//如果是新增关联关系
      var inserSql=""" insert into COMPANY_REF_SHIP(uscc,company_name,ship_reg_no,ref_code,ref_name)
         values(#{data.uscc},#{data.companyName},#{data.shipRegNo},#{data.refCode},#{data.refName}) """
      db.base_data.insert(inserSql);
       
   }else{//修改关联关系
      if(data.get("bindFlag").equals("1")){//解绑
          var sql="""merge into COMPANY_REF_SHIP mtb using(
                 select uscc,company_name,ship_reg_no,'' ref_code,'' ref_name 
                 from company_ref_ship_prod where serial_no=#{body.seralNokey}  
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
                                instr(a.SHIP_OWNER, b.company_name) >= 1 then
                            a.SHIP_OWNER
                        
                            when instr(ref_code, '1') >= 1 and
                                (a.SHIP_OWNER is null or a.SHIP_OWNER = '') then
                            b.company_name
                        
                            else
                            replace(replace(replace(a.SHIP_OWNER, concat(b.company_name, ',')),
                                            concat(',', b.company_name)),
                                    b.company_name)
                        end) new_ship_owner,
                        
                        (case
                            when instr(ref_code, '2') >= 1 and
                                instr(a.SHIP_OPERATOR, b.company_name) <= 0 then
                            concat(concat(a.SHIP_OPERATOR, ','), b.company_name)
							     when instr(ref_code, '2') >= 1 and
                                instr(a.SHIP_OPERATOR, b.company_name) >= 1 then
                            a.SHIP_OPERATOR
                        
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
                                instr(a.SHIP_MANAGER, b.company_name) >= 1 then
                            a.SHIP_MANAGER
                        
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
                        where b.serial_no = #{body.seralNokey} 
                    
                    ) mmb
                on (mtb.ship_reg_no = mmb.ship_reg_no)
                when matched then
                update
                    set mtb.SHIP_OWNER    = mmb.new_SHIP_OWNER,
                        mtb.SHIP_OPERATOR = mmb.new_SHIP_OPERATOR,
                        mtb.SHIP_MANAGER  = mmb.new_SHIP_MANAGER
           """;
		   db.base_data.update(cbGx);
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
                 from company_ref_ship_prod where serial_no=#{body.seralNokey}  
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
                                instr(a.SHIP_OWNER, b.company_name) >= 1 then
                            a.SHIP_OWNER
                        
                            when instr(ref_code, '1') >= 1 and
                                (a.SHIP_OWNER is null or a.SHIP_OWNER = '') then
                            b.company_name
                        
                            else
                            replace(replace(replace(a.SHIP_OWNER, concat(b.company_name, ',')),
                                            concat(',', b.company_name)),
                                    b.company_name)
                        end) new_ship_owner,
						   (case
                            when instr(ref_code, '2') >= 1 and
                                instr(a.SHIP_OPERATOR, b.company_name) <= 0 then
                            concat(concat(a.SHIP_OPERATOR, ','), b.company_name)
                        
                            when instr(ref_code, '2') >= 1 and
                                instr(a.SHIP_OPERATOR, b.company_name) >= 1 then
                            a.SHIP_OPERATOR
                        
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
                                instr(a.SHIP_MANAGER, b.company_name) >= 1 then
                            a.SHIP_MANAGER
                        
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
                        where b.serial_no = #{body.seralNokey} 
						 ) mmb
                on (mtb.ship_reg_no = mmb.ship_reg_no)
                when matched then
                update
                    set mtb.SHIP_OWNER    = mmb.new_SHIP_OWNER,
                        mtb.SHIP_OPERATOR = mmb.new_SHIP_OPERATOR,
                        mtb.SHIP_MANAGER  = mmb.new_SHIP_MANAGER
           """;
           db.base_data.update(cbGx);  

      }

   }
}else{//需要审核
    insertSql = """ insert into SC_INFORMATION_APPLY_FORM (id,APPLY_TYPE,APPLY_USER_ID,APPLY_ACCOUNT,
  APPLY_NAME,APPLY_DATE,CREATE_DATE,audit_status,audit_Org) values(#{body.seralNokey},20,
  #{body.bladeUserId},#{body.bladeAccount},#{body.bladeName},sysdate,sysdate,0,#{body.auditOrg})"""
  db.base_data.insert(insertSql);  

  var insert =""" insert into bds_base_data.company_ref_ship_prod  (uscc,ship_reg_no,ref_code,ref_name,
                        bind_flag,company_name,insert_flag,old_ref_code,old_ref_name,serial_no,APPLY_STATUS) values(#{body.uscc},#{body.shipRegNo},
                   #{body.refCode},#{body.refName},#{body.bindFlag},#{body.companyName},
                   #{body.insertFlag},#{body.oldRefCode},#{body.oldRefName},#{body.seralNokey},0 )"""
  db.base_data.insert(insert);  
}
//保存文件附表
var files=body.files;
 

if(files==null||file==""){//文件为空

}else{
  if(files.size>=1){
    //保存附件
    for (item in files){      
      var xx=TreeUtil.StringToJson(item.toString());     
      var bbody;    
      var ANNEX_NAME= JSONObjectA.parseObject(JSONA.toJSONString(xx)).get("annexName");
      var ANNEX_ID=JSONObjectA.parseObject(JSONA.toJSONString(xx)).get("annexId");
      var ANNEX_TYPE= JSONObjectA.parseObject(JSONA.toJSONString(xx)).get("annexType");
      var saveData={
        "ANNEX_NAME":ANNEX_NAME,
        "ANNEX_ID":ANNEX_ID,
        "ANNEX_TYPE":ANNEX_TYPE,
        "APPLY_ID":body.seralNokey
      }
     var insertFile="""insert into SC_INFORMATION_ANNEXS 
        (ANNEX_ID,ANNEX_NAME,ANNEX_TYPE,APPLY_ID) values(#{saveData.ANNEX_ID},#{saveData.ANNEX_NAME},#{saveData.ANNEX_TYPE},#{saveData.APPLY_ID})""";
          db.base_data.insert(insertFile);
    }   
  }
}


	return response.json({
        resultCode: 200,
        resultMsg: "保存成功"      
	});