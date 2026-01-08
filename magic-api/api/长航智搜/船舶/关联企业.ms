{
  "properties" : { },
  "id" : "a4915cd9994c4ec189a1c15bc73c2e32",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "关联企业",
  "createTime" : null,
  "updateTime" : 1757558414812,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getRefCompany",
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
    "value" : "120523000065",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"list\": [{\n            \"rowno\": \"1\",\n            \"refCode\": \"1\",\n            \"compName\": \"中国长江电力股份有限公司\",\n            \"refName\": \"所有人\",\n            \"companyId\": \"\",\n            \"companyName\": \"中国长江电力股份有限公司\",\n            \"companyRegAddr\": \"null\",\n            \"uscc\": \"91110000710930405L\",\n            \"organizationCode\": \"\",\n            \"contactPerson\": \"王云\",\n            \"mobilePhone\": \"13986833948\",\n            \"totalCount\": \"1\",\n            \"flag\": \"1\",\n            \"_mobilePhone\": \"139****3948\"\n        }],\n        \"total\": 1\n    }\n}",
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
        "name" : "list",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : null,
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
          "type" : null,
          "defaultValue" : null,
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ {
            "name" : "rowno",
            "value" : "1",
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
            "name" : "refCode",
            "value" : "1",
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
            "name" : "compName",
            "value" : "中国长江电力股份有限公司",
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
            "name" : "refName",
            "value" : "所有人",
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
            "name" : "companyId",
            "value" : "",
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
            "name" : "companyName",
            "value" : "中国长江电力股份有限公司",
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
            "name" : "companyRegAddr",
            "value" : "null",
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
            "name" : "uscc",
            "value" : "91110000710930405L",
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
            "name" : "organizationCode",
            "value" : "",
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
            "name" : "contactPerson",
            "value" : "王云",
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
            "name" : "mobilePhone",
            "value" : "13986833948",
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
            "name" : "totalCount",
            "value" : "1",
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
            "name" : "flag",
            "value" : "1",
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
            "name" : "_mobilePhone",
            "value" : "139****3948",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          } ]
        } ]
      }, {
        "name" : "total",
        "value" : "1",
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
/*
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
          from (select ref_code,comp_name, ref_name from  bds_base_data.COMP_SHIP_REF_NEW WHERE ship_reg_no = #{shipRegNo} and is_delete = '0') r
          left join bds_base_data.company_info_all s
            on r.comp_name = s.company_name and source_dept = '1' and ship_comp_flag='1') m
 where m.comp_name like '%公司%'
 ) a
  """*/
var sql ="""
select a.*,
       case
         when company_name is null then
          '0'
         else
          '1'
       end flag
  from (select m.*, count(*) over() total_count
          from (select r.*,
                       s.organization_code as company_id,
                       s.company_name,
                       s.company_reg_addr,
                       s.uscc,
                       s.organization_code,
                       s.contact_person,
                       s.mobile_phone
                  from (select ref_code, comp_name, ref_name
                          from (select t.*,
                                       row_number() over(partition by ref_code order by update_time desc) as rn
                                  from bds_base_data.COMP_SHIP_REF_NEW t
                                 where t.ship_reg_no = #{shipRegNo}
                                   and is_delete = '0') ww
                         where ww.rn = 1) r
                  left join bds_base_data.company_info_all s
                    on r.comp_name = s.company_name
                   and source_dept = '1'
                   and ship_comp_flag = '1'
                   ) m
         where m.comp_name like '%公司%') a
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