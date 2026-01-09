{
  "properties" : { },
  "id" : "7c1b5f67067a4b3098b1ecf6a5e45505",
  "script" : null,
  "groupId" : "6f3efe31c5a444338c7afc53597cc47c",
  "name" : "船公司监管详细信息",
  "createTime" : null,
  "updateTime" : 1705982139603,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getCompanySuperDetail",
  "method" : "GET",
  "parameters" : [ {
    "name" : "uscc",
    "value" : "913309227743712358",
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
    "name" : "code",
    "value" : "trackShip",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"trackShip\": [{\n            \"trackingNo\": \"20210427093700212010000\",\n            \"shipNo\": \"A070317000288\",\n            \"shipNameCn\": \"沧海8\",\n            \"shipNameEn\": \"CANG HAI 8\",\n            \"nationCode\": \"125\",\n            \"regportCode\": \"0703\",\n            \"shipRegNo\": \"070317000288\",\n            \"shipFirstregNo\": \"070317000288\",\n            \"shipId\": \"CN20177545643\",\n            \"shipImo\": \"－－\",\n            \"shipCardNo\": \"\",\n            \"mmsi\": \"412767650\",\n            \"shipTypeCode\": \"0901\",\n            \"shipGrosston\": \"374\",\n            \"shipEnginePower\": \"211.2\",\n            \"shipBuiltDate\": \"2017-08-07 00:00:00\",\n            \"shipInspectOrg\": \"\",\n            \"shipOwner\": \"嵊泗腾达船务清仓有限公司\",\n            \"shipOperatorCn\": \"\",\n            \"shipManagerCn\": \"\",\n            \"regportOrgCode\": \"070000\",\n            \"regportOrgName\": \"浙江海事局\",\n            \"inspectDate\": \"2021-04-19 09:36:27\",\n            \"portCode\": \"310140\",\n            \"creatOrg\": \"010000\",\n            \"creatDate\": \"2021-04-26 09:36:27\",\n            \"trackingReason\": \"00000001\",\n            \"trackingRange\": \"0\",\n            \"nationCertIssueOrg\": \"\",\n            \"nationCertNo\": \"\",\n            \"shipInspectIssueOrg\": \"\",\n            \"shipInspectCertNo\": \"\",\n            \"eqpt1Name\": \"\",\n            \"eqpt1No\": \"\",\n            \"eqpt2Name\": \"\",\n            \"eqpt2No\": \"\",\n            \"remark\": \"\",\n            \"declareOrg\": \"000000\",\n            \"declareDate\": \"2021-05-07 08:09:29\",\n            \"releaseMark\": \"0\",\n            \"releaseDate\": \"1900-01-01 00:00:00\",\n            \"releaseReason\": \"最近三个月来，船方认真整改，未发生列入重点跟踪情形，符合脱黑要求。\"\n        }]\n    }]\n}",
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
          "name" : "trackShip",
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
              "name" : "trackingNo",
              "value" : "20210427093700212010000",
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
              "name" : "shipNo",
              "value" : "A070317000288",
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
              "name" : "shipNameCn",
              "value" : "沧海8",
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
              "name" : "shipNameEn",
              "value" : "CANG HAI 8",
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
              "name" : "nationCode",
              "value" : "125",
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
              "name" : "regportCode",
              "value" : "0703",
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
              "value" : "070317000288",
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
              "name" : "shipFirstregNo",
              "value" : "070317000288",
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
              "name" : "shipId",
              "value" : "CN20177545643",
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
              "name" : "shipImo",
              "value" : "－－",
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
              "name" : "shipCardNo",
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
              "name" : "mmsi",
              "value" : "412767650",
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
              "name" : "shipTypeCode",
              "value" : "0901",
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
              "name" : "shipGrosston",
              "value" : "374",
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
              "name" : "shipEnginePower",
              "value" : "211.2",
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
              "name" : "shipBuiltDate",
              "value" : "2017-08-07 00:00:00",
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
              "name" : "shipInspectOrg",
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
              "name" : "shipOwner",
              "value" : "嵊泗腾达船务清仓有限公司",
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
              "name" : "shipOperatorCn",
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
              "name" : "shipManagerCn",
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
              "name" : "regportOrgCode",
              "value" : "070000",
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
              "name" : "regportOrgName",
              "value" : "浙江海事局",
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
              "name" : "inspectDate",
              "value" : "2021-04-19 09:36:27",
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
              "name" : "portCode",
              "value" : "310140",
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
              "name" : "creatOrg",
              "value" : "010000",
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
              "name" : "creatDate",
              "value" : "2021-04-26 09:36:27",
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
              "name" : "trackingReason",
              "value" : "00000001",
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
              "name" : "trackingRange",
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
            }, {
              "name" : "nationCertIssueOrg",
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
              "name" : "nationCertNo",
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
              "name" : "shipInspectIssueOrg",
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
              "name" : "shipInspectCertNo",
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
              "name" : "eqpt1Name",
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
              "name" : "eqpt1No",
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
              "name" : "eqpt2Name",
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
              "name" : "eqpt2No",
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
              "name" : "remark",
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
              "name" : "declareOrg",
              "value" : "000000",
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
              "name" : "declareDate",
              "value" : "2021-05-07 08:09:29",
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
              "name" : "releaseMark",
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
            }, {
              "name" : "releaseDate",
              "value" : "1900-01-01 00:00:00",
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
              "name" : "releaseReason",
              "value" : "最近三个月来，船方认真整改，未发生列入重点跟踪情形，符合脱黑要求。",
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
        } ]
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
/*for(item in shipList){
 item.put("shipId","'"+item.get("shipId")+"'")
 item.put("shipRegNo","'"+item.get("shipRegNo")+"'")
 item.put("shipFirstregNo","'"+item.get("shipFirstregNo")+"'")
 item.put("shipNameCn","'"+item.get("shipNameCn")+"'")
}*/
//行政处罚数
var punishSql = """
  select punish_object_id,
case_no,
case_status,
process_type,
punish_obj_name,
punish_obj_address,
illegal_fact,
punish_reference,
punish_result,
bank_name,
review_dep_name,
org_code,
org_name,
refer_law,
suit_time,
suit_court,
decision_date,
next_operator_card_id,
next_operator_name,
delivery_date,
delivery_location,
delivery_person2,
delivery_person1,
delivery_remark,
illegal_score_flag,
illegal_score,
hold_date_from,
hold_date_to
  from BDS_BIZ_DATA.PUN_PUNISH_DECISION
  where delete_flag='0' 
  and case_no in (select case_no from BDS_BIZ_DATA.PUN_PUNISH_OBJECT where  delete_flag='0' and OWNER_BUSINESS_LICENSE_NO = #{uscc}
 )  
  order  by  DECISION_DATE desc
"""
//事故数
var accidentSql = """
 select id,
accident_info_id,
ship_id,
if_cause_pollution,
ship_name_cn,
ship_name_en,
ship_owner,
ship_owner_en,
ship_owner_type,
enterprise_id,
province_id,
is_operating,
ship_operator,
ship_operator_en,
ship_manager_cn,
ship_manager_en,
nationality,
ship_regist_org_id,
ship_imo,
ship_callsign,
foreign_ship_id,
ship_firstreg_no,
ship_reg_no,
ship_inspect_no,
ship_type_code,
ship_type_sub,
home_port,
total_length,
ship_breadth,
ship_depth,
ship_grosston,
ship_netton,
ship_dwt,
design_speed,
main_engine_model,
ship_engine_power,
build_date,
ship_yard,
construct_location,
rebuild_date,
rebuild_ship_yard,
reconstruct_location,
nav_zone_top,
nav_zone_sub,
carry_passenger_amount,
num_of_crews,
crew_nationality,
if_expatriated_crew,
loss_desc,
pollution_insurance_desc,
is_total_loss,
is_sink,
is_escape,
ship_loss,
ship_injury,
ship_death,
ship_missing,
port_of_departure,
destination_port,
contact_person,
contact_phone,
actual_controller
 from  ods_hs_share.C_AQ_ACCIDENT_SHIP 
  
    where ship_id in 
    <foreach item='id' collection='shipList'
        open="(" separator="," close=")">
        #{id.shipId}
    </foreach>
"""
//重点跟踪船舶数
var trackShipSql = """
  select TRACKING_NO,
SHIP_NO,
SHIP_NAME_CN,
SHIP_NAME_EN,
NATION_CODE,
REGPORT_CODE,
SHIP_REG_NO,
SHIP_FIRSTREG_NO,
SHIP_ID,
SHIP_IMO,
SHIP_CARD_NO,
MMSI,
SHIP_TYPE_CODE,
SHIP_GROSSTON,
SHIP_ENGINE_POWER,
SHIP_BUILT_DATE,
SHIP_INSPECT_ORG,
SHIP_OWNER,
SHIP_OPERATOR_CN,
SHIP_MANAGER_CN,
REGPORT_ORG_CODE,
REGPORT_ORG_NAME,
INSPECT_DATE,
PORT_CODE,
CREAT_ORG,
CREAT_DATE,
TRACKING_REASON,
TRACKING_RANGE,
NATION_CERT_ISSUE_ORG,
NATION_CERT_NO,
SHIP_INSPECT_ISSUE_ORG,
SHIP_INSPECT_CERT_NO,
EQPT1_NAME,
EQPT1_NO,
EQPT2_NAME,
EQPT2_NO,
REMARK,
DECLARE_ORG,
DECLARE_DATE,
RELEASE_MARK,
RELEASE_DATE,
RELEASE_REASON

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
      select a.id ,a.info_id,
       a.ship_chinese_name,
       a.ship_english_name,
       a.captain_name,
       a.ship_registration_no,
       a.ow_card_type,
       a.ow_card_no,
       a.ship_porjs_registry,
       a.ship_owner,
       a.ship_operator,
       a.ow_admin_counterparjs_type,
       a.status,
       a.captain_card_type,
       a.captain_card_no,
       a.ow_admin_counterparjs_code_type,
       a.ow_admin_counterparjs_code,
       a.ow_legal_person,
       a.ow_legal_person_type,
       a.ow_legal_idcard_no,
       a.op_admin_counterparjs_type,
       a.op_admin_counterparjs_code_type,
       a.op_admin_counterparjs_code,
       a.op_legal_person,
       a.op_legal_person_type,
       a.op_legal_idcard_no,
       a.op_card_type,
       a.op_card_no,
       a.dishonesty,
       a.boins_type_id,
       a.reform_reason_desc
        from bds_biz_data.JS_CREDIJS_BODY_SHIP a, bds_biz_data.JS_CREDIJS_BLACK_LIST b
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

var re=[];
/*if(code=="punish"){
var punish = db.biz_data.camel().select(punishSql);
re.add({"punish":punish});
}

else if(code=="accident"){
var accident = db.ods_data.camel().select(accidentSql);
re.add({"accident":accident});
}*/
if(code=="trackShip"){
var trackShip =  db.base_data.camel().select(trackShipSql);
re.add({"trackShip":trackShip});
}
else if(code=="blackShip"){
var blackShip =  db.base_data.camel().select(blackShipSql);
re.add({"blackShip":blackShip});
}








return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: re
});

