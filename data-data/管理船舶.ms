{
  "properties" : { },
  "id" : "09160bf48b4b409aba6c0595d2d49020",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "管理船舶",
  "createTime" : null,
  "updateTime" : 1693552388997,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getManageShipInfo",
  "method" : "GET",
  "parameters" : [ {
    "name" : "companyName",
    "value" : "深圳海油工程水下技术有限公司",
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
    "name" : "size",
    "value" : "20",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"list\": [{\n            \"rowno\": \"1\",\n            \"rn\": \"1\",\n            \"dataSource\": \"船舶登记\",\n            \"shipRegNo\": \"350315000046\",\n            \"shipId\": \"CN20099436517\",\n            \"shipImo\": \"\",\n            \"shipNo\": \"A350315000046\",\n            \"mmsi\": \"413991999\",\n            \"statusFlag\": \"1\",\n            \"shipNameCn\": \"赣武宁货3314\",\n            \"shipTypeCode\": \"0201\",\n            \"regportCode\": \"3503\",\n            \"shipBuiltDate\": \"2011-10-01\",\n            \"sailingareaCode\": \"11\",\n            \"createTime\": \"2016-11-16 14:26:39\",\n            \"totalCount\": \"1\",\n            \"shipTypeCn\": \"干货船\",\n            \"regportCn\": \"九江\",\n            \"sailingareaCn\": \"内河B\",\n            \"remouldStatus\": \"\"\n        }],\n        \"total\": 1\n    }\n}",
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
      "defaultValue" : null,
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
      "defaultValue" : null,
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
      "defaultValue" : null,
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
        "defaultValue" : null,
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
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "rn",
            "value" : "1",
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
            "name" : "dataSource",
            "value" : "船舶登记",
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
            "name" : "shipRegNo",
            "value" : "350315000046",
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
            "name" : "shipId",
            "value" : "CN20099436517",
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
            "name" : "shipImo",
            "value" : "",
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
            "name" : "shipNo",
            "value" : "A350315000046",
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
            "name" : "mmsi",
            "value" : "413991999",
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
            "name" : "statusFlag",
            "value" : "1",
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
            "name" : "shipNameCn",
            "value" : "赣武宁货3314",
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
            "name" : "shipTypeCode",
            "value" : "0201",
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
            "name" : "regportCode",
            "value" : "3503",
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
            "name" : "shipBuiltDate",
            "value" : "2011-10-01",
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
            "name" : "sailingareaCode",
            "value" : "11",
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
            "name" : "createTime",
            "value" : "2016-11-16 14:26:39",
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
            "name" : "totalCount",
            "value" : "1",
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
            "name" : "shipTypeCn",
            "value" : "干货船",
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
            "name" : "regportCn",
            "value" : "九江",
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
            "name" : "sailingareaCn",
            "value" : "内河B",
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
            "name" : "remouldStatus",
            "value" : "",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
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
        "defaultValue" : null,
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
//船舶国籍证书表，按照经营人、管理人、所有人查询，只查状态为有效的。
var sql1 = """
SELECT distinct SHIP_REG_NO
  FROM BDS_BASE_DATA.SHP_CERT_NATIONAL
 where status_flag = '1' and delete_flag='0'
 ?{companyName,and (SHIP_OWNER_EN = #{companyName} or SHIP_OPERATOR_CN = #{companyName} or SHIP_MANAGER_CN = #{companyName})}

 union all

    (
        SELECT distinct SHIP_REG_NO
    FROM BDS_BASE_DATA.SHP_CERT_BC_REG
    where status_flag = '1' and delete_flag='0'
    ?{companyName,and (SHIP_LENDER_CN = #{companyName} or SHIP_CHARTERER_CN = #{companyName})}
    )

union all

(
    SELECT distinct SHIP_REG_NO
  FROM BDS_BASE_DATA.SHP_CERT_MORTGAGE
 where status_flag = '1' and delete_flag='0'
 ?{companyName,and (SHIP_MORTGAGEE_CN = #{companyName} or SHIP_MORTGAGEE_EN = #{companyName})}
)

union all

(
    select distinct SHIP_REG_NO from BDS_BASE_DATA.SHP_CERT_OWNERSHIP  
    where 1=1 and delete_flag='0'
    ?{companyName,and ship_owner_cn = #{companyName}}
)

union all

(
    select ship_reg_no from shore_power_ship_info a left join shore_power_company_info
    b on a.company_uscc=b.company_uscc
    where 1=1 ?{companyName,and b.company_name = #{companyName}}
    and b.SH_STATUS=2
    and b.del_flag=0
    and a.DEL_FLAG=0
)
"""

//船舶光租证书表，按照船舶出租人名称、船舶承租人名称查询，只查有效的。
var sql2 = """
SELECT distinct SHIP_REG_NO
  FROM BDS_BASE_DATA.SHP_CERT_BC_REG 
 where status_flag = '1' and delete_flag='0'
 ?{companyName,and (SHIP_LENDER_CN = #{companyName} or SHIP_CHARTERER_CN = #{companyName})}
"""

//船舶抵押权登记证书，按照船舶抵押权人、抵押人查询，只查有效的。
var sql3 = """
SELECT distinct SHIP_REG_NO
  FROM BDS_BASE_DATA.SHP_CERT_MORTGAGE
 where status_flag = '1' and delete_flag='0'
 ?{companyName,and (SHIP_MORTGAGEE_CN = #{companyName} or SHIP_MORTGAGEE_EN = #{companyName})}
"""

//船舶所有权证书，按照船舶名称查询
var sql4 = """
select distinct SHIP_REG_NO from BDS_BASE_DATA.SHP_CERT_OWNERSHIP  
where 1=1 and delete_flag='0'
?{companyName,and ship_owner_cn = #{companyName}}
"""

var sql5 = """
select ship_reg_no from shore_power_ship_info a left join shore_power_company_info
b on a.company_uscc=b.company_uscc
where 1=1 ?{companyName,and b.company_name = #{companyName}}
and b.SH_STATUS=2
and b.del_flag=0
and a.DEL_FLAG=0
""";


var shipRegNo = [];
var res1 = db.base_data.camel().page(sql1);
//var res2 = db.base_data.camel().select(sql2);
//var res3 = db.base_data.camel().select(sql3);
//var res4 = db.base_data.camel().select(sql4);
//var res5 = db.base_data.camel().select(sql5);
if(res1.list!=null){
  for(item in res1.list){
   shipRegNo.add(item.get("shipRegNo"))
  }
}
log.info("shipRegNo{}",shipRegNo);
var totalCount=0;

var sql = """
 select M.*, count(*) OVER() total_count
  from (select ROW_NUMBER() OVER(PARTITION BY ship_id ORDER BY CREATE_TIME DESC) RN,
               T.*
          from (select '船舶登记' as data_source,
                       d.SHIP_REG_NO,
                       d.SHIP_ID,
                       SHIP_IMO,
                       'A' || d.SHIP_FIRSTREG_NO as ship_no,
                       nvl(d.MMSI,m.mmsi) mmsi,
                       d.STATUS_FLAG,
                       d.SHIP_NAME_CN,
                       SHIP_TYPE_CODE,
                       REGPORT_CODE,
                       case
                         when to_char(SHIP_BUILT_DATE, 'yyyy-MM-dd') =
                              '1900-01-01' then
                          '--'
                         else
                          to_char(SHIP_BUILT_DATE, 'yyyy-MM-dd')
                       end SHIP_BUILT_DATE,
                       SAILINGAREA_CODE,
                       d.CREATE_TIME
                  from BDS_BASE_DATA.SHP_BASIC_DATA d left join (select * from SHP_MMSI where delete_flag='0') m on d.ship_reg_no=m.ship_reg_no
                 where 1 = 1 and d.delete_flag='0'
    ?{shipRegNo,and d.SHIP_REG_NO in (#{shipRegNo})}
    ) T) M
 where RN = 1
  """
  var shipList = [];
  if(shipRegNo!=[]){
       shipList= db.base_data.camel().select(pageStart + sql + pageEnd);
  }
  
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
        "total":shipList.size()
}
return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: back
	});