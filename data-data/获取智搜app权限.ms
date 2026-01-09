{
  "properties" : { },
  "id" : "00de2ca08dfc4f53b2551bfface88648",
  "script" : null,
  "groupId" : "0700e32d7c4049b9b521694c26cbcb71",
  "name" : "获取智搜app权限",
  "createTime" : null,
  "updateTime" : 1764053332922,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getPowerList",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ {
    "name" : "Blade-Auth",
    "value" : "bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZW5hbnRfaWQiOiIwMDAwMDAiLCJ1c2VyX25hbWUiOiJjZXMyMjIyIiwicmVhbF9uYW1lIjoiY2VzIiwiYXZhdGFyIjoiIiwiYXV0aG9yaXRpZXMiOlsiYWRtaW5pc3RyYXRvciJdLCJjbGllbnRfaWQiOiJzd29yZCIsInJvbGVfbmFtZSI6ImFkbWluaXN0cmF0b3IiLCJsaWNlbnNlIjoicG93ZXJlZCBieSBibGFkZXgiLCJwb3N0X2lkIjoiMTEyMzU5ODgxNzczODY3NTIwMSIsInVzZXJfaWQiOiI4NjA4NDg3MjAiLCJyb2xlX2lkIjoiMTEyMzU5ODgxNjczODY3NTIwMSIsInNjb3BlIjpbImFsbCJdLCJuaWNrX25hbWUiOiJjZXMiLCJvYXV0aF9pZCI6IiIsImRldGFpbCI6eyJ0eXBlIjoid2ViIn0sImV4cCI6MTc1NjM0OTE4NywiZGVwdF9pZCI6IjExMjM1OTg4MTM3Mzg2NzUyMDIiLCJqdGkiOiJkNTIxZmE5Yi1mMWQ5LTRiYjgtOTRkMy0wZjI4YTNmNmM0M2UiLCJhY2NvdW50IjoiY2VzMjIyMiJ9.8Zy43ZY6jomj6i1opLo1Fw7ibi__ap0O6BCU7EI9LZM",
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
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1753757939975,\n    \"executeTime\": 4514\n}",
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
      "value" : "-1",
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
      "value" : "系统内部出现错误",
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
      "dataType" : "Array",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "timestamp",
      "value" : "1753757939975",
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
      "value" : "4514",
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
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;//返回结果
import 'com.success.data.tag.TagUtils' as TagUtils;//导入标签配置类
import 'org.ssssssss.magic.utils.TreeUtil' as TreeUtil;
import 'org.ssssssss.magic.entity.TreeModel' as TreeModel;
import 'com.alibaba.fastjson.JSON' as JSONA
import 'org.springblade.core.secure.utils.AuthUtil' as AuthUtil
import 'org.springblade.core.secure.BladeUser' as  BladeUser
import 'org.springframework.data.redis.core.StringRedisTemplate' as StringRedisTemplate
import 'org.springblade.common.utils.FishermanUtil' as FishermanUtil
//import 'org.springblade.common.utils.FishermanUtil' as FishermanUtil
import org.springblade.common.utils.ZzSecurityHelper


BladeUser user=AuthUtil.getUser();
var userId="";
if(user==null){
   
}else{
   userId=user.getUserId();
}

import request;
import response;
import log;


var ip=request.getHeaders("X-Forwarded-For");//获取客户端ip
var length=request.getHeaders("X-Forwarded-For").getLength();
var data=StringRedisTemplate.boundHashOps("whileIps").get("whileIp");//模拟集成redis 获取白名单ip
var whileiplist=data;

 var roleData;
 var usccData;
 var uscc="";
 //userId="120221198701073031";//-991464874
 var companyId;
 var companyName;
 var idNumber;
 var shipId;
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

   var usccDataSql="""select buc.code  ,bu.idnumber,bu.mh_code as ship_id from bladex.blade_user bu  left join bladex.blade_user_company_mh buc
                on bu.account =buc.login_name  where bu.id='"""+userId+"""'"""   ;//查询你企业uscc编码
    usccData=db.bladex.camel().selectOne(usccDataSql) ;//获取权限      
    if(usccData!=null){
        uscc=usccData.code;
        idNumber=usccData.idnumber;
        shipId=usccData.shipId;
    }  
     if(uscc!=null&&uscc!=""){
        var  companySql="""select organization_code  as code,company_name from BDS_BASE_DATA.company_info_all where uscc='"""+uscc+"""'""" ;
         var comData=db.base_data.camel().selectOne(companySql) ;//获取权限      
        if(comData!=null){
            companyId=comData.code;
            companyName=comData.companyName;
        }     
     }   
     
} else{
    roleData=db.frame.camel().selectOne("""select 'basic' as role_id,'个人基本角色' as role_name from dual""") ;//获取权限
}
//如果访问ip在白名单内，返回所有功能权限
if(length>=1 && data!=null){
    if(data.toString().contains(ip[0].toString().split(",")[0])){
        var sqlWhile="""
        select DISTINCT  b.id,b.title as name,b.parent_id ,
            b.url as path ,b.path as url,b.sort,b.type,b.page_type,b.img_Url
            
            from permissions_menu_dict_new b
                
            where 
                b.id in (select id
                                from permissions_menu_dict_new
                            where 1 = 1  
                            start with id in (select id
                                                from permissions_menu_dict_new
                                                where title = '智搜app权限')
                            connect by prior id = parent_id)
                                                and b.title <>'智搜app权限'
                and ( b.type<>'3'  or b.type is null)

            order by to_number(b.sort)
        """;

        var list=db.frame.camel().select(sqlWhile) ;//获取权限
        var data;//返回值
        if(list!=null){
            data= TreeUtil.sort(TreeUtil.getTreeList("1658676606733725698",JSONA.parseArray(JSONA.toJSONString(list),TreeModel.class)));
            
        }else{
            data=[];
        }

            return response.json({  
                shipId:shipId,
            userId:userId,
             ipSource:ip,
             data:whileiplist,   
            result: data ,
            resultCode: 200,
            resultMsg: "查询成功",
            roleData:roleData,
            whileFlag:1,
            uscc:uscc,
            companyId:companyId,
            companyName:companyName,
            idNumber://FishermanUtil.dncSm4
            ((idNumber!=null?ZzSecurityHelper.encryptAES(FishermanUtil.dncSm4(idNumber.toString())):""))
        }); 
    }
}


//智搜内网
var sql=""" """;
if(userId==""||userId==null){
      sql="""  select DISTINCT  b.id,b.title as name,b.parent_id ,b.url as path ,b.path as url,b.sort,b.type,b.page_type,b.img_Url ,
      (case when b.Gray_Placement  is null then '0' else b.Gray_Placement END ) AS Gray_Placement
      from permissions_role_menu a
      inner join permissions_menu_dict_new b
         on a.menu_id = b.id
      where role_id in ( (select id
                                    from frame.permissions_role_dict
                                    where id = 'unListed'))
         and b.id in (select id
                        from permissions_menu_dict_new
                     where 1 = 1 
                     start with id in (select id
                                          from permissions_menu_dict_new
                                          where title = '智搜app权限')
                     connect by prior id = parent_id)
                                          and b.title <>'智搜app权限'
         and ( b.type<>'3'  or b.type is null)

      order by to_number(b.sort)
      """;
}else{
   sql="""  select DISTINCT b.id,b.title as name,b.parent_id ,b.url as path ,b.path as url,b.sort,b.type,b.page_type,b.img_Url 
      from permissions_role_menu a
      inner join permissions_menu_dict_new b
         on a.menu_id = b.id
      where role_id in (select regexp_substr(role_id, '[^,]+', 1, level) c1
                           from (select *
                                 from frame.permissions_user_role
                                 where user_id = '"""+userId+"""')
                        connect by level <= regexp_count(role_id, '[^,]+')
                        union all (select id
                                    from frame.permissions_role_dict
                                    where id = 'basic'))
         and b.id in (select id
                        from permissions_menu_dict_new
                     where 1 = 1 
                     start with id in (select id
                                          from permissions_menu_dict_new
                                          where title = '智搜app权限')
                     connect by prior id = parent_id)
                       and b.title <>'智搜app权限'
         and ( b.type<>'3'  or b.type is null)
      order by to_number(b.sort)
      """;

}
 
        
 var list=db.frame.camel().select(sql) ;//获取权限
 var data;//返回值
 if(list!=null){
     data= TreeUtil.sort(TreeUtil.getTreeList("1658676606733725698",JSONA.parseArray(JSONA.toJSONString(list),TreeModel.class)));
    
 }else{
    data=[];
 }




     return response.json({
          shipId:shipId,
         userId:userId,   
       result: data ,
       resultCode: 200,
       resultMsg: "查询成功",
       ipSource:ip,
       data:whileiplist,
       roleData:roleData,
       whileFlag:0,
       uscc:uscc,
       companyId:companyId,
       companyName:companyName,
       idNumber://FishermanUtil.dncSm4
       (idNumber!=null?ZzSecurityHelper.encryptAES(FishermanUtil.dncSm4(idNumber.toString())):"")

   });  