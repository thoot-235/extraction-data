{
  "properties" : { },
  "id" : "copy1721631230571d91459",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "关联企业(旧接口备份)",
  "createTime" : null,
  "updateTime" : 1721631227943,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getRefCompany_bak",
  "method" : "GET",
  "parameters" : [ {
    "name" : "page",
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
    "name" : "shipRegNo",
    "value" : "010011000179",
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
    "name" : "size",
    "value" : "10",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"list\": [{\n            \"rowno\": \"1\",\n            \"compName\": \"重庆创润滚装船运输有限公司\",\n            \"refCode\": \"2,4,5\",\n            \"refName\": \"经营人,承租人,承租方\",\n            \"companyId\": \"\",\n            \"companyName\": \"重庆创润滚装船运输有限公司\",\n            \"companyRegAddr\": \"重庆市忠县忠州街道环城路318\",\n            \"uscc\": \"91500233MAABUDUR6B\",\n            \"organizationCode\": \"\",\n            \"contactPerson\": \"周虎军\",\n            \"mobilePhone\": \"18671797962\",\n            \"totalCount\": \"3\",\n            \"flag\": \"1\",\n            \"_mobilePhone\": \"186****7962\"\n        }, {\n            \"rowno\": \"2\",\n            \"compName\": \"重庆欣豪船务有限公司\",\n            \"refCode\": \"1,4,7\",\n            \"refName\": \"所有人,出租方,抵押人\",\n            \"companyId\": \"\",\n            \"companyName\": \"重庆欣豪船务有限公司\",\n            \"companyRegAddr\": \"重庆市渝北区东湖南路3号中铁峰汇国际B座\",\n            \"uscc\": \"91500235MAACA2BQ95\",\n            \"organizationCode\": \"\",\n            \"contactPerson\": \"黄学波\",\n            \"mobilePhone\": \"15730171788\",\n            \"totalCount\": \"3\",\n            \"flag\": \"1\",\n            \"_mobilePhone\": \"157****1788\"\n        }, {\n            \"rowno\": \"3\",\n            \"compName\": \"重庆顺华滚装船运输有限公司\",\n            \"refCode\": \"2\",\n            \"refName\": \"经营人\",\n            \"companyId\": \"745340704\",\n            \"companyName\": \"重庆顺华滚装船运输有限公司\",\n            \"companyRegAddr\": \"重庆市渝北区东湖南路3号中铁峰汇国际19-2\",\n            \"uscc\": \"91500235745340704P\",\n            \"organizationCode\": \"745340704\",\n            \"contactPerson\": \"冯学军\",\n            \"mobilePhone\": \"13101390826\",\n            \"totalCount\": \"3\",\n            \"flag\": \"1\",\n            \"_mobilePhone\": \"131****0826\"\n        }],\n        \"total\": 3\n    }\n}",
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
            "name" : "compName",
            "value" : "重庆创润滚装船运输有限公司",
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
            "value" : "2,4,5",
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
            "value" : "经营人,承租人,承租方",
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
            "name" : "companyId",
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
            "name" : "companyName",
            "value" : "重庆创润滚装船运输有限公司",
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
            "name" : "companyRegAddr",
            "value" : "重庆市忠县忠州街道环城路318",
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
            "value" : "91500233MAABUDUR6B",
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
            "name" : "organizationCode",
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
            "name" : "contactPerson",
            "value" : "周虎军",
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
            "name" : "mobilePhone",
            "value" : "18671797962",
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
            "value" : "3",
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
            "name" : "flag",
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
            "name" : "_mobilePhone",
            "value" : "186****7962",
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
        "value" : "3",
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
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
import log;
import response;
shipRegNo=(shipRegNo==null?"":shipRegNo).replace("<em>","").replace("</em>","");
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
select a.*,case when company_name is null then '0'
else '1' end 
 flag from  (
select m.*, count(*) over() total_count
  from (select r.*,
               s.organization_code as company_id,
               s.company_name,
               s.company_reg_addr,
               s.uscc,
               s.organization_code,
               s.contact_person,
               s.mobile_phone
          from (select comp_name,
                       listagg(ref_code, ',') within group(order by ref_code) as ref_code,
                       listagg(ref_name, ',') within group(order by ref_code) as ref_name
                  from ( --所有人
                        select regexp_substr(comp_name, '[^、]+', 1, level) comp_name,
                                '1' ref_code,
                                '所有人' ref_name
                          from (select ship_owner_cn comp_name,
                                        '1' ref_code,
                                        '所有人' ref_name
                                   from bds_base_data.shp_cert_ownership
                                  where status_flag = '1'
                                    and delete_flag = '0'
                                    and ship_reg_no = #{shipRegNo})
                        connect by level <= length(comp_name) -
                                   length(replace(comp_name, '、')) + 1
                        union
                        --船舶国籍证书表，按照经营人、管理人、所有人查询，只查状态为有效的。
                        select regexp_substr(comp_name, '[^、]+', 1, level) comp_name,
                                '1' ref_code,
                                '所有人' ref_name
                          from (select ship_owner_cn comp_name,
                                        '1' ref_code,
                                        '所有人' ref_name
                                   from bds_base_data.shp_cert_national
                                  where status_flag = '1'
                                    and delete_flag = '0'
                                    and ship_reg_no = #{shipRegNo})
                        connect by level <= length(comp_name) -
                                   length(replace(comp_name, '、')) + 1
                        union
                        select ship_operator_cn comp_name,
                                '2' ref_code,
                                '经营人' ref_name
                          from bds_base_data.shp_cert_national
                         where status_flag = '1'
                           and delete_flag = '0'
                           and ship_reg_no = #{shipRegNo}
                        union
                        select ship_manager_cn comp_name,
                                '3' ref_code,
                                '管理人' ref_name
                          from bds_base_data.shp_cert_national
                         where status_flag = '1'
                           and delete_flag = '0'
                           and ship_reg_no = #{shipRegNo}
                        --光租
                        union
                        select ship_lender_cn comp_name,
                                '4' ref_code,
                                '出租方' ref_name
                          from bds_base_data.shp_cert_bc_reg
                         where status_flag = '1'
                           and delete_flag = '0'
                           and ship_reg_no = #{shipRegNo}
                        union
                        select ship_charterer_cn,
                                '5' ref_code,
                                '承租方' ref_name
                          from bds_base_data.shp_cert_bc_reg
                         where status_flag = '1'
                           and delete_flag = '0'
                           and ship_reg_no = #{shipRegNo}
                        --抵押
                        union
                        select ship_mortgagee_cn comp_name,
                                '6' ref_code,
                                '抵押权人' ref_name
                          from bds_base_data.shp_cert_mortgage
                         where status_flag = '1'
                           and delete_flag = '0'
                           and ship_reg_no = #{shipRegNo}
                        union
                        select ship_mortgagor_cn comp_name,
                                '7' ref_code,
                                '抵押人' ref_name
                          from bds_base_data.shp_cert_mortgage
                         where status_flag = '1'
                           and delete_flag = '0'
                           and ship_reg_no = #{shipRegNo}
                        union
                        --岸电系统
                        select company_name comp_name,
                                '2' ref_code,
                                '经营人' ref_name
                          from shore_power_ship_info a
                          left join shore_power_company_info b
                            on a.company_uscc = b.company_uscc
                         where b.sh_status = 2
                           and b.del_flag = 0
                           and a.del_flag = 0
                           and a.ship_reg_no = #{shipRegNo}
                        union
                        --运政系统
                        select company_name comp_name,
                                '2' ref_code,
                                '经营人' ref_name
                          from bds_base_data.trans_mgt_company_ship t,
                                bds_base_data.shp_basic_data         t1
                         where t1.delete_flag = '0'
                           and t1.status_flag = '1'
                           and t.ship_id = t1.ship_id
                           and t.ship_status_dj = '1' 
                           and t.st_year = (select max(st_year) from bds_base_data.trans_mgt_company_ship)
                           and t1.ship_reg_no = #{shipRegNo}
                        --船舶关系表
                        )
                 group by comp_name) r
          inner join bds_base_data.company_info_all s
            on r.comp_name = s.company_name and source_dept = '1') m
 where m.comp_name like '%公司%'
 ) a
  """
  var compList = [];
    compList= db.base_data.camel().select(pageStart + sql + pageEnd);
    if(compList!=null&&compList.size()>0){
      for (item in compList){
         item.put("_mobilePhone",DesensitizationUtil.isFixed(item.get("mobilePhone")==null?"":item.get("mobilePhone")::string));
      }
    }

var back={
        "list":compList,
        //"total":Integer.parseInt(totalCount::string) 
        "total":compList.size()
}
return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: back
	});