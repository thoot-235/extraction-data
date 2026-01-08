{
  "properties" : { },
  "id" : "791b6cb8d79c436d84f1ba4aa644a6c5",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "测试接口",
  "createTime" : null,
  "updateTime" : 1693552388988,
  "lock" : null,
  "createBy" : null,
  "updateBy" : "admin",
  "path" : "/test",
  "method" : "GET",
  "parameters" : [ {
    "name" : "companyName",
    "value" : "深圳海油工程水下技术有限公司",
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
    "name" : "uscc",
    "value" : null,
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }, {
    "name" : "org_id",
    "value" : null,
    "description" : null,
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
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1692857904917,\n    \"executeTime\": 72\n}",
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
      "value" : "1692857904917",
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
      "value" : "72",
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
companyName=(companyName==null?"":companyName).replace("<em>","").replace("</em>","");
var pageNum = page;
pageNum= pageNum!=null&pageNum!=''? pageNum :1

var pageSize = size;
pageSize= pageSize!=null&pageSize!=''? pageSize :10

var pageStart = """ select *
        from (select rownum rowno, b.*
              from (""";
var pageEnd = """ ) b
        where rownum <= ( #{pageNum} * #{pageSize})) a
        where a.rowno > ( ( #{pageNum} - 1 ) * #{pageSize} )""";


var totalCount=0;

var sql = """
select * from (
select row_number() over(partition by ship_id order by t.create_time desc) rn,
               t.*
          from (select '船舶登记' as data_source,
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
                         group by ship_reg_no) r
                  
                  left join bds_base_data.shp_basic_data s
                    on r.ship_reg_no = s.ship_reg_no) t) m
 where rn = 1
  """
  var shipList = [];
       shipList= db.base_data.camel().select(sql);
 
  for(ship in shipList){
      ship.put("shipTypeCn",TagUtils.getTagNameByCode("shipClassTag",ship.get("shipTypeCode")));//船舶种类
      ship.put("regportCn",TagUtils.getTagNameByCode("shipRegportTag",ship.get("regportCode")));//船籍港
      ship.put("sailingareaCn",TagUtils.getTagNameByCode("shipRouteAreaTag",ship.get("sailingareaCode")));//航区
      totalCount = ship.get("totalCount");
      //通过shipId查询岸电改造状态
      var shipId=ship.get("shipId");
      var tb_sql = """
         select tb_jd,
                tb_jz
                 from (
              select b.tb_jd  ,b.tb_jz  from bds_base_data.shore_power_retrofit_report a left join 
              bds_base_data.shore_power_retrofit_log b on a.id=b.reportid
              where 1=1 ?{shipId,and a.ship_id=#{shipId}}
              order by a.retrofit_stage_code,a.retrofit_progress_code desc
              ) where rownum=1
      """
      var tb_info = db.base_data.camel().select(tb_sql);
      ship.put("remouldStatus",tb_info.size()>0?tb_info[0].get("tbJz"):"");
  }

if(shipList==null){
  shipList=[];
}   
var back={
        "list":shipList,
        //"total":Integer.parseInt(totalCount::string) 
        "total":totalCount
}
return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: back
	});