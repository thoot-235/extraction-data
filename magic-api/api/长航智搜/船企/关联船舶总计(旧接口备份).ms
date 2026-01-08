{
  "properties" : { },
  "id" : "copy1721629187945d76313",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "关联船舶总计(旧接口备份)",
  "createTime" : 1721629112643,
  "updateTime" : null,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : null,
  "path" : "/getRefShipsTotal_bak",
  "method" : "GET",
  "parameters" : [ {
    "name" : "companyName",
    "value" : "上海中船重工万邦航运有限公司",
    "description" : "",
    "required" : true,
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"shipTotal\": \"6\",\n        \"crewTotal\": \"69\"\n    }\n}",
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
        "name" : "shipTotal",
        "value" : "6",
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
        "name" : "crewTotal",
        "value" : "69",
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
import 'com.success.data.tag.TagUtils' as TagUtils;
import log;
import response;
import 'java.util.stream.Collectors' as Collectors;
import 'com.alibaba.fastjson.JSON' as JSON;
import 'com.alibaba.fastjson.JSONObject' as JSONObject;
companyName=(companyName==null?"":companyName).replace("<em>","").replace("</em>","");





var totalCount=0;

 var shipList = [];

   var sql = """
      select count(*) as ship_num,ship_type_name as type,total_count,to_char(round(count(*) / total_count, 4) * 100,
               'fm99990.00')  radio  from (
      select m.*,count(*) over() total_count
        from (select row_number() over(partition by ship_id order by t.flag,t.create_time desc) rn,
                    t.*
                from (select '船舶登记' as data_source,
                r.flag,
                            r.ref_code,
                            ref_name,
                            s.ship_reg_no,
                            s.ship_id,
                            s.ship_imo,
                            'A' || s.ship_firstreg_no as ship_no,
                            s.mmsi,
                            s.status_flag,
                            s.ship_name_cn,
                            s.ship_type_code,
                            cc.item_name_cn  as ship_type_name,
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
                               listagg(ref_name, ',') within group(order by ref_code) as ref_name,
                               1 as flag
                          from (select distinct ship_reg_no,
                                                        '1' ref_code,
                                                        '船舶所有人' ref_name
                                          from bds_base_data.shp_cert_ownership
                                         where status_flag = '1'
                                           and delete_flag = '0'
                                           and ship_owner_cn like  #{companyName}|| '%'
                                        union 
                                        select distinct ship_reg_no,
                                                        '1' ref_code,
                                                        '船舶所有人' ref_name
                                          from bds_base_data.shp_cert_ownership
                                         where status_flag = '1'
                                           and delete_flag = '0'
                                           and reverse(ship_owner_cn) like  #{companyName}|| '%'
                                        union
                                        --船舶国籍证书表，按照经营人、管理人、所有人查询，只查状态为有效的。
                                        select distinct ship_reg_no,
                                                        '1' ref_code,
                                                        '船舶所有人' ref_name
                                          from bds_base_data.shp_cert_national
                                         where status_flag = '1'
                                           and delete_flag = '0'
                                           and ship_owner_en like  #{companyName}|| '%'
                                        union  
                                         select distinct ship_reg_no,
                                                        '1' ref_code,
                                                        '船舶所有人' ref_name
                                          from bds_base_data.shp_cert_national
                                         where status_flag = '1'
                                           and delete_flag = '0'
                                           and reverse(ship_owner_en) like  #{companyName}|| '%'
                                        union
                                        select distinct ship_reg_no,
                                                        '2' ref_code,
                                                        '船舶经营人' ref_name
                                          from bds_base_data.shp_cert_national
                                         where status_flag = '1'
                                           and delete_flag = '0'
                                           and ship_operator_cn =
                                               #{companyName}
                                        union
                                        select distinct ship_reg_no,
                                                        '3' ref_code,
                                                        '船舶管理人' ref_name
                                          from bds_base_data.shp_cert_national
                                         where status_flag = '1'
                                           and delete_flag = '0'
                                           and ship_manager_cn = #{companyName}
                                        --光租
                                        union
                                        select distinct ship_reg_no,
                                                        '4' ref_code,
                                                        '出租方' ref_name
                                          from bds_base_data.shp_cert_bc_reg
                                         where status_flag = '1'
                                           and delete_flag = '0'
                                           and ship_lender_cn = #{companyName}
                                        union 
                                        select distinct ship_reg_no,
                                                        '5' ref_code,
                                                        '承租方' ref_name
                                          from bds_base_data.shp_cert_bc_reg
                                         where status_flag = '1'
                                           and delete_flag = '0'
                                           and ship_charterer_cn =
                                               #{companyName}
                                        --抵押
                                        union 
                                        select distinct ship_reg_no,
                                                        '6' ref_code,
                                                        '抵押权人' ref_name
                                          from bds_base_data.shp_cert_mortgage
                                         where status_flag = '1'
                                           and delete_flag = '0'
                                           and ship_mortgagee_cn =
                                               #{companyName}
                                        union 
                                        select distinct ship_reg_no,
                                                        '7' ref_code,
                                                        '抵押人' ref_name
                                          from bds_base_data.shp_cert_mortgage
                                         where status_flag = '1'
                                           and delete_flag = '0'
                                           and ship_mortgagor_cn =
                                               #{companyName}
                                        union 
                                        --岸电系统
                                        select ship_reg_no,
                                               '2' ref_code,
                                               '船舶经营人' ref_name
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
                                               '船舶经营人' ref_name
                                          from bds_base_data.trans_mgt_company_ship t,
                                               bds_base_data.shp_basic_data         t1
                                         where t1.delete_flag = '0'
                                           and t1.status_flag = '1'
                                           and t.ship_id = t1.ship_id
                                           and company_name = #{companyName})
                         group by ship_reg_no,1
                         
                         union all

                         (select ship_reg_no,
                                ref_code,
                                ref_name,
                               2 as flag from  bds_base_data.company_ref_ship where company_name =#{companyName})
                         ) r
                        inner join bds_base_data.shp_basic_data s
                        
                          on r.ship_reg_no = s.ship_reg_no
                          left join dict_data.D_CB_SHIP_TYPE cc  on s.ship_type_code =cc.code where s.status_flag='1') t) m
      where rn = 1 and ref_name is not null) group by ship_type_name  ,total_count order by count(*)  desc
        """
     shipList= db.base_data.camel().select(sql);
 
var totalCount=0;      
for(item in shipList){
  totalCount = item.get("totalCount");
}



var crewList = [];

   var crewsql = """
     
      select sum(nvl(crew_on_ship,0)) total_count
        from (select row_number() over(partition by ship_reg_no order by t.flag,t.OPERATE_TIME desc) rn,
                    t.*
                from (select '船舶登记' as data_source,
                            r.ref_code,
                            ref_name,
                            s.crew_on_ship,
                            r.flag,
                            r.ship_reg_no,
                            s.OPERATE_TIME
                        from (select ship_reg_no,
                               listagg(ref_code, ',') within group(order by ref_code) as ref_code,
                               listagg(ref_name, ',') within group(order by ref_code) as ref_name,
                               1 as flag
                          from (select distinct ship_reg_no,
                                                        '1' ref_code,
                                                        '船舶所有人' ref_name
                                          from bds_base_data.shp_cert_ownership
                                         where status_flag = '1'
                                           and delete_flag = '0'
                                           and ship_owner_cn like  #{companyName}|| '%'
                                        union 
                                        select distinct ship_reg_no,
                                                        '1' ref_code,
                                                        '船舶所有人' ref_name
                                          from bds_base_data.shp_cert_ownership
                                         where status_flag = '1'
                                           and delete_flag = '0'
                                           and reverse(ship_owner_cn) like  #{companyName}|| '%'
                                        union
                                        --船舶国籍证书表，按照经营人、管理人、所有人查询，只查状态为有效的。
                                        select distinct ship_reg_no,
                                                        '1' ref_code,
                                                        '船舶所有人' ref_name
                                          from bds_base_data.shp_cert_national
                                         where status_flag = '1'
                                           and delete_flag = '0'
                                           and ship_owner_en like  #{companyName}|| '%'
                                        union  
                                         select distinct ship_reg_no,
                                                        '1' ref_code,
                                                        '船舶所有人' ref_name
                                          from bds_base_data.shp_cert_national
                                         where status_flag = '1'
                                           and delete_flag = '0'
                                           and reverse(ship_owner_en) like  #{companyName}|| '%'
                                        union
                                        select distinct ship_reg_no,
                                                        '2' ref_code,
                                                        '船舶经营人' ref_name
                                          from bds_base_data.shp_cert_national
                                         where status_flag = '1'
                                           and delete_flag = '0'
                                           and ship_operator_cn =
                                               #{companyName}
                                        union
                                        select distinct ship_reg_no,
                                                        '3' ref_code,
                                                        '船舶管理人' ref_name
                                          from bds_base_data.shp_cert_national
                                         where status_flag = '1'
                                           and delete_flag = '0'
                                           and ship_manager_cn = #{companyName}
                                        --光租
                                        union
                                        select distinct ship_reg_no,
                                                        '4' ref_code,
                                                        '出租方' ref_name
                                          from bds_base_data.shp_cert_bc_reg
                                         where status_flag = '1'
                                           and delete_flag = '0'
                                           and ship_lender_cn = #{companyName}
                                        union 
                                        select distinct ship_reg_no,
                                                        '5' ref_code,
                                                        '承租方' ref_name
                                          from bds_base_data.shp_cert_bc_reg
                                         where status_flag = '1'
                                           and delete_flag = '0'
                                           and ship_charterer_cn =
                                               #{companyName}
                                        --抵押
                                        union 
                                        select distinct ship_reg_no,
                                                        '6' ref_code,
                                                        '抵押权人' ref_name
                                          from bds_base_data.shp_cert_mortgage
                                         where status_flag = '1'
                                           and delete_flag = '0'
                                           and ship_mortgagee_cn =
                                               #{companyName}
                                        union 
                                        select distinct ship_reg_no,
                                                        '7' ref_code,
                                                        '抵押人' ref_name
                                          from bds_base_data.shp_cert_mortgage
                                         where status_flag = '1'
                                           and delete_flag = '0'
                                           and ship_mortgagor_cn =
                                               #{companyName}
                                        union 
                                        --岸电系统
                                        select ship_reg_no,
                                               '2' ref_code,
                                               '船舶经营人' ref_name
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
                                               '船舶经营人' ref_name
                                          from bds_base_data.trans_mgt_company_ship t,
                                               bds_base_data.shp_basic_data         t1
                                         where t1.delete_flag = '0'
                                           and t1.status_flag = '1'
                                           and t.ship_id = t1.ship_id
                                           and company_name = #{companyName})
                         group by ship_reg_no,1
                         
                         union all

                         (select ship_reg_no,
                                ref_code,
                                ref_name,
                               2 as flag from  bds_base_data.company_ref_ship where company_name =#{companyName})
                         ) r
                        left join sub_biz_data.ship_dynamics_data s
                        
                          on r.ship_reg_no = s.ship_reg_no)  t )where rn=1 and ref_name is not null

        """
     crewList= db.base_data.camel().selectOne(crewsql);
  
var back={
        
        "shipTotal":totalCount,
        "crewTotal":crewList.totalCount
       
}
return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: back
	});