{
  "properties" : { },
  "id" : "92a764d0b7fc4fe6b4663e4ef3316195",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "船企用户注册验证",
  "createTime" : null,
  "updateTime" : 1693552389056,
  "lock" : null,
  "createBy" : null,
  "updateBy" : "admin",
  "path" : "/checkCompanyUser",
  "method" : "GET",
  "parameters" : [ {
    "name" : "uscc",
    "value" : "9144030019244115XX",
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
    "name" : "shipNo",
    "value" : "A350909000136",
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
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1689907760709,\n    \"executeTime\": 254\n}",
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
      "name" : "code",
      "value" : "-1",
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
      "name" : "message",
      "value" : "系统内部出现错误",
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
      "name" : "data",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Object",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "timestamp",
      "value" : "1689907760709",
      "description" : "",
      "required" : false,
      "dataType" : "Long",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "executeTime",
      "value" : "254",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
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
import log;
import response;


uscc=(uscc==null?"":uscc).replace("<em>","").replace("</em>","");


 var sqlUser=""" select * from blade_user_company_mh where code=#{uscc} """
     //判断用户表是否存在该用户，存在不允许，不存在允许
     var userData=db.bladex.camel().select(sqlUser);
      if(userData.size()>=1){
          return response.json({
                  resultCode: 300,
                  resultMsg: "统一社会信用代码已被其他用户绑定，请联系管理员；",
                  result: ship
            });
      }

var sql1 = """
  SELECT ORGANIZATION_CODE COMPANYID,
       COMPANY_NAME,
       ORGANIZATION_CODE,
       case  when TO_CHAR(REG_DATE, 'yyyy-MM-dd')='1900-01-01' then '--'  else TO_CHAR(REG_DATE, 'yyyy-MM-dd') end  REG_DATE,
       LEGAL_REPRESENTATIVE,
       REGCAPITAL,
       COMPANY_REG_ADDR ADDRESS,
       CONTACT_PERSON,
       MOBILE_PHONE,
       MAILING_ADDRESS,
       FAX,
       USCC,
       WEB_SITE,
       COMPANY_TYPE NATURE_CODE,
       TRANS_LIC_NO BUSINESS_NO,      
       TRANS_SERV_LIC_NO LICENSE_NO,
       MANAGE_NO,
       PORT_LICENSE_NO,
       IF_OBTAIN,
       case when to_char(OBTAIN_DATE,'yyyy-MM-dd')='1900-01-01' then '--' else to_char(OBTAIN_DATE,'yyyy-MM-dd') end  OBTAIN_DATE,
       INTER_CERT_NO,
       INTER_LICENSE_CODE,
       INTER_SHIP_LICENSE_CODE,
       COMPANY_OPERATE_SCOP,
       AUTHORITY,
       OPENTIME
  from BDS_BASE_DATA.company_info_all_update
  where 1=1  ?{uscc,and uscc = #{uscc}}
  union all 
  SELECT ORGANIZATION_CODE COMPANYID,
       COMPANY_NAME,
       ORGANIZATION_CODE,
       case  when TO_CHAR(REG_DATE, 'yyyy-MM-dd')='1900-01-01' then '--'  else TO_CHAR(REG_DATE, 'yyyy-MM-dd') end  REG_DATE,
       LEGAL_REPRESENTATIVE,
       REGCAPITAL,
       COMPANY_REG_ADDR ADDRESS,
       CONTACT_PERSON,
       MOBILE_PHONE,
       MAILING_ADDRESS,
       FAX,
       USCC,
       WEB_SITE,
       COMPANY_TYPE NATURE_CODE,
       TRANS_LIC_NO BUSINESS_NO,      
       TRANS_SERV_LIC_NO LICENSE_NO,
       MANAGE_NO,
       PORT_LICENSE_NO,
       IF_OBTAIN,
       case when to_char(OBTAIN_DATE,'yyyy-MM-dd')='1900-01-01' then '--' else to_char(OBTAIN_DATE,'yyyy-MM-dd') end  OBTAIN_DATE,
       INTER_CERT_NO,
       INTER_LICENSE_CODE,
       INTER_SHIP_LICENSE_CODE,
       COMPANY_OPERATE_SCOP,
       AUTHORITY,
       OPENTIME
  from BDS_BASE_DATA.company_info_all
  where 1=1  ?{uscc,and uscc = #{uscc}}
  and ORGANIZATION_CODE not in (select ORGANIZATION_CODE from BDS_BASE_DATA.company_info_all_update)
"""

var basic = db.base_data.camel().selectOne(sql1);//查询船舶基本信息

if(basic!=null&&basic!=""){//用户不存在可以注册
 var companyName=basic.get("companyName")
    var sql = """
    select '船舶登记' as data_source,
                          -- r.ref_code,
                          -- ref_name,
                          s.ship_reg_no,
                          s.ship_id,
                          s.ship_imo,
                           s.ship_firstreg_no as ship_no,
                          s.mmsi,
                          s.status_flag,
                          s.ship_name_cn,
                          s.ship_type_code,
                          s.regport_code,
                          case
                            when to_char(s.ship_built_date, 'yyyy-mm-dd') =
                                  '1900-01-01' then
                              '--'
                            else
                              to_char(s.ship_built_date, 'yyyy-mm-dd')
                          end ship_built_date,
                          s.sailingarea_code,
                          s.create_time
                      from (select ship_reg_no,
                                  listagg(ref_code, ',') within group(order by ref_code) as ref_code,
                                  listagg(ref_name, ',') within group(order by ref_code) as ref_name
                              from (select distinct ship_reg_no,
                                                            '1' ref_code,
                                                            '所有人' ref_name
                                              from bds_base_data.shp_cert_ownership
                                            where status_flag = '1'
                                              and delete_flag = '0'
                                              and ship_owner_cn like  #{companyName}|| '%'
                                            union 
                                            select distinct ship_reg_no,
                                                            '1' ref_code,
                                                            '所有人' ref_name
                                              from bds_base_data.shp_cert_ownership
                                            where status_flag = '1'
                                              and delete_flag = '0'
                                              and reverse(ship_owner_cn) like  #{companyName}|| '%'
                                            union
                                            --船舶国籍证书表，按照经营人、管理人、所有人查询，只查状态为有效的。
                                            select distinct ship_reg_no,
                                                            '1' ref_code,
                                                            '所有人' ref_name
                                              from bds_base_data.shp_cert_national
                                            where status_flag = '1'
                                              and delete_flag = '0'
                                              and ship_owner_en like  #{companyName}|| '%'
                                            union  
                                            select distinct ship_reg_no,
                                                            '1' ref_code,
                                                            '所有人' ref_name
                                              from bds_base_data.shp_cert_national
                                            where status_flag = '1'
                                              and delete_flag = '0'
                                              and reverse(ship_owner_en) like  #{companyName}|| '%'
                                            union
                                            select distinct ship_reg_no,
                                                            '2' ref_code,
                                                            '经营人' ref_name
                                              from bds_base_data.shp_cert_national
                                            where status_flag = '1'
                                              and delete_flag = '0'
                                              and ship_operator_cn =
                                                  #{companyName}
                                            union
                                            select distinct ship_reg_no,
                                                            '3' ref_code,
                                                            '管理人' ref_name
                                              from bds_base_data.shp_cert_national
                                            where status_flag = '1'
                                              and delete_flag = '0'
                                              and ship_manager_cn = #{companyName}
                                          
                                          
                                            union 
                                            --岸电系统
                                            select ship_reg_no,
                                                  '2' ref_code,
                                                  '经营人' ref_name
                                              from shore_power_ship_info a
                                              left join shore_power_company_info b
                                                on a.company_uscc = b.company_uscc
                                            where b.sh_status = 2
                                              and b.del_flag = 0
                                              and a.del_flag = 0
                                              and b.company_name = #{companyName}
                                            union 
                                            --运政系统
                                            select t1.ship_reg_no,
                                                  '2' ref_code,
                                                  '经营人' ref_name
                                              from bds_base_data.trans_mgt_company_ship t,
                                                  bds_base_data.shp_basic_data         t1
                                            where t1.delete_flag = '0'
                                              and t1.status_flag = '1'
                                              and t.ship_id = t1.ship_id
                                              and company_name = #{companyName})
                            group by ship_reg_no) r
                      left join bds_base_data.shp_basic_data s
                        on r.ship_reg_no = s.ship_reg_no  where s.ship_firstreg_no=  substr(#{shipNo},2,length(#{shipNo})) 
      """
      
     shipList= db.base_data.camel().select( sql );
    //校验uscc和选择船舶是否可以挂钩
   if(shipList.size()>=1){
      //允许注册
      return response.json({
                  resultCode: 200,
                  resultMsg: "允许注册"
                 
            });
   }else{
      //uscc和勾选船舶不匹配，不允许注册
      return response.json({
                  resultCode: 301,
                  resultMsg: "统一社会信用代码与船舶不匹配"
                 
            });
   }
}else{//业务表不存在，用户表也不存在
     //允许注册
      return response.json({
                  resultCode: 200,
                  resultMsg: "允许注册"
                  
            });
    
}