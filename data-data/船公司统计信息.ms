{
  "properties" : { },
  "id" : "e4353b0cef8d431f909ad11018089363",
  "script" : null,
  "groupId" : "6f3efe31c5a444338c7afc53597cc47c",
  "name" : "船公司统计信息",
  "createTime" : null,
  "updateTime" : 1751423768463,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getCompTj",
  "method" : "GET",
  "parameters" : [ {
    "name" : "uscc",
    "value" : "913416227330252056",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"punish\": 260,\n        \"accident\": 29,\n        \"trackShip\": 0,\n        \"blackShip\": 0\n    }\n}",
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
    "type" : null,
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
      "type" : null,
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
      "type" : null,
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
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "punish",
        "value" : "260",
        "description" : "",
        "required" : false,
        "dataType" : "Integer",
        "type" : null,
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "accident",
        "value" : "29",
        "description" : "",
        "required" : false,
        "dataType" : "Integer",
        "type" : null,
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "trackShip",
        "value" : "0",
        "description" : "",
        "required" : false,
        "dataType" : "Integer",
        "type" : null,
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "blackShip",
        "value" : "0",
        "description" : "",
        "required" : false,
        "dataType" : "Integer",
        "type" : null,
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
uscc=(uscc==null?"":uscc).replace("<em>","").replace("</em>","");
var companyNameSql =  """
  select company_name from bds_base_data.company_info_all where rownum=1 and uscc = #{uscc}
"""
var companyName = db.base_data.selectValue(companyNameSql);


//查询公司管理船舶列表
var shipListSql = """
select m.ship_id,m.ship_reg_no,m.ship_firstreg_no,m.ship_name_cn
  from (select row_number() over(partition by ship_id order by  t.create_time,t.flag desc) rn,
               t.*
          from (select '船舶登记' as data_source,
                       r.flag,
                       r.ref_code,
                       ref_name,
                       s.ship_reg_no,
                       s.ship_firstreg_no,
                       s.ship_id,
                       s.ship_imo,
                       'A' || s.ship_firstreg_no as ship_no,
                       s.mmsi,
                       s.status_flag,
                       s.ship_name_cn,
                       s.ship_type_code,
                       s.regport_code,
                       s.ship_inspect_no,
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
                  left join bds_base_data.shp_basic_data s
                    on r.ship_reg_no = s.ship_reg_no) t) m
 where rn = 1 and ref_name  is not null and ship_id is not null
"""
var shipList = db.base_data.camel().select(shipListSql);
for(item in shipList){
 item.put("shipId","'"+item.get("shipId")+"'")
 item.put("shipRegNo","'"+item.get("shipRegNo")+"'")
 item.put("shipFirstregNo","'"+item.get("shipFirstregNo")+"'")
 item.put("shipNameCn","'"+item.get("shipNameCn")+"'")
}
//行政处罚数
var punishSql = """
  select count(1)
  from BDS_BIZ_DATA.PUN_PUNISH_DECISION
  where delete_flag='0' 
  and case_no in (select case_no from BDS_BIZ_DATA.PUN_PUNISH_OBJECT where  delete_flag='0' and OWNER_BUSINESS_LICENSE_NO = #{uscc})
"""
//事故数
var accidentSql = """
select count(distinct d.ID)
  from bds_biz_data.acci_ship              t,
       ods_hs_share.trans_mgt_company_ship t2,
       bds_base_data.company_info_all      t1,
       bds_biz_data.ACCI_BASIC_DATA        d
 where t.ship_id = t2.ship_id
   and t1.company_name = t2.company_name
   and d.delete_flag = '0'
   and d.ID = t.ACCIDENT_INFO_ID
   and t1.uscc = #{uscc}
"""
/**
var accidentSql = """
  select count(1) from  C_AQ_ACCIDENT_SHIP  where ship_id in 
    <foreach item='id' collection='shipList'
        open="(" separator="," close=")">
        #{id.shipId}
    </foreach>
""" */
//重点跟踪船舶数
var trackShipSql = """
  select count(TRACKING_NO) total_count
    from bds_biz_data.SHP_KEY_TRACK_SHIP 
    where 1 = 1
    and delete_flag = '0'
    and RELEASE_MARK <> '9'
   and ship_id in
     <foreach item='id' collection='shipList'
        open="(" separator="," close=")">
        #{id.shipId}
    </foreach>
"""
//黑名单船舶数
var blackShipSql = """
      select distinct A.ship_registration_no  from bds_biz_data.JS_CREDIJS_BODY_SHIP a, bds_biz_data.JS_CREDIJS_BLACK_LIST b
            where a.info_id =b.id 
            and b.CREDIJS_BODY_TYPE = '1'
            and (
                             A.SHIP_REGISTRATION_NO in 
                              <foreach item='id' collection='shipList'
                                    open="(" separator="," close=")">
                                    ${id.shipId}
                              </foreach>
                           or A.SHIP_REGISTRATION_NO in
                              <foreach item='id' collection='shipList'
                                    open="(" separator="," close=")">
                                    ${id.shipRegNo}
                              </foreach>
                         or A.SHIP_REGISTRATION_NO in 
                              <foreach item='id' collection='shipList'
                                    open="(" separator="," close=")">
                                   ${id.shipFirstregNo}
                              </foreach>
                         or A.ship_chinese_name in 
                          <foreach item='id' collection='shipList'
                                    open="(" separator="," close=")">
                                   ${id.shipNameCn}
                        </foreach>)
"""


var punish = async db.biz_data.camel().selectInt(punishSql);
var accident = async db.ods_data.camel().selectInt(accidentSql);
var trackShip = async db.biz_data.camel().selectInt(trackShipSql);
var blackShip = async db.biz_data.camel().select(blackShipSql);


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: {"punish":punish.get(),
        "accident":accident.get(),
        "trackShip":trackShip.get(),
        "blackShip":blackShip.get().size()}
});

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: basic
});