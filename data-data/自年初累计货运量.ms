{
  "properties" : { },
  "id" : "7c97fb00418a48babf613dbb8ae59d4c",
  "script" : null,
  "groupId" : "a2f8b128e2c64d9eba631714dd3787a1",
  "name" : "自年初累计货运量",
  "createTime" : null,
  "updateTime" : 1753748182791,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getCargonumsSinceYear",
  "method" : "GET",
  "parameters" : [ {
    "name" : "mmsi",
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
    "name" : "shipId",
    "value" : "CN20142612065",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"reportNum\": 17,\n        \"inCargoNum\": 6.64,\n        \"outCargoNum\": 8.71\n    }\n}",
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
        "name" : "reportNum",
        "value" : "17",
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
        "name" : "inCargoNum",
        "value" : "6.64",
        "description" : "",
        "required" : false,
        "dataType" : "Double",
        "type" : "",
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "outCargoNum",
        "value" : "8.71",
        "description" : "",
        "required" : false,
        "dataType" : "Double",
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
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;


if((mmsi == null || mmsi =="")&&(shipId == null || shipId =="")){
return response.json({
        resultCode: 500,
        resultMsg: "mmsi、shipId不能同时为空"
	});
  
}


if ((shipId == null || shipId =="")){
  //查询船舶shipId
var shipIdSql = """
    select ship_id from bds_base_data.sc_ship_basic_data where status_flag = '1' and delete_flag = '0' and mmsi = #{mmsi}
"""

shipId = db.biz_data.camel().selectValue(shipIdSql);  
}
/*
var reportNumSql = """
    select count(1) report_num
        from ods_hs_share.c_cb_ship_eep_report_rec
        where ship_id = #{shipId}
            and to_char(report_time, 'yyyy') = extract(year from sysdate)
"""*/
/*
var reportNumSql = """
  select count(1) report_num
        from c_cb_ship_eep_report_rec a
			inner join dim_l_t_location_info  b on a.berth_code = b.berth_code
			where a.ship_id = #{shipId}
				and a.delete_flag = '0'
				and a.if_revoke = '0'
				and a.arrival_or_leave = '0'
				and b.basin = '干线'
        and b.berth_name NOT LIKE '%服务区%'
        and b.berth_name NOT LIKE '%锚地%'
        and b.berth_name NOT LIKE '%停泊区%'
        and b.berth_name NOT LIKE '%加油站%'
        and a.report_time >= date_trunc('year',CURRENT_DATE)
       --and to_char(a.report_time, 'yyyy') = extract(year from sysdate)
"""
*/
var reportNumSql = """
  select count(1) report_num
        from c_cb_ship_eep_report_rec a
			inner join dict_data.dim_l_t_location_info  b on a.berth_code = b.berth_code
			where 
				a.delete_flag = '0'
				and a.if_revoke = '0'
				and a.arrival_or_leave = '0'
				--and b.basin = '干线'
        and b.berth_name NOT LIKE '%服务区%'
        and b.berth_name NOT LIKE '%锚地%'
        and b.berth_name NOT LIKE '%停泊区%'
        and b.berth_name NOT LIKE '%加油站%'
        --and a.report_time >= date_trunc('year',CURRENT_DATE)
       and to_char(a.report_time, 'yyyy') = extract(year from sysdate)
       and a.ship_id = #{shipId}
"""
/*
var inCargoNumSql = """
    select  case
                when '01' = substr(a.SHIP_TYPE_CODE, 0, 2) then
                round(nvl(sum(a.PORT_PASSENGER), 0)/10000,2)
                    
                else
                 round( nvl(sum(b.PORT_CARGO), 0)/10000,2)
                   
                end inCargo_num
        from ods_hs_share.c_cb_ship_eep_report_rec a,
            ods_hs_share.c_cb_cargo_declare_rec   b
        where a.report_id = b.report_id
            and a.delete_flag='0'
            and ARRIVAL_OR_LEAVE = '0'
            
            and to_char(a.report_time, 'yyyy') = extract(year from sysdate)
            and a.ship_id = #{shipId} 
        group by substr(a.SHIP_TYPE_CODE, 0, 2)
"""*/
var inCargoNumSql = """
      select ROUND(sum(case
                         when arrival_or_leave = '0' then
                          a.port_cargo
                       end) / 10000,
                   2) inCargo_num
        from c_cb_ship_eep_report_rec a
       inner join dict_data.dim_l_t_location_info b
          on a.berth_code = b.berth_code
       where a.ship_id = #{shipId}
         and a.delete_flag = '0'
         and a.if_revoke = '0'
         and a.arrival_or_leave = '0'
         --and b.basin = '干线'
         and b.berth_name NOT LIKE '%服务区%'
         and b.berth_name NOT LIKE '%锚地%'
         and b.berth_name NOT LIKE '%停泊区%'
         and b.berth_name NOT LIKE '%加油站%'
         and to_char(a.report_time, 'yyyy') = extract(year from sysdate)
"""


/*
var outCargoNumSql = """
    select  case
                when '01' = substr(a.SHIP_TYPE_CODE, 0, 2) then
                   round(nvl(sum(a.PORT_PASSENGER), 0)/10000,2)
                    
                else
                 round( nvl(sum(b.PORT_CARGO), 0)/10000,2)
                end outCargo_num
        from ods_hs_share.c_cb_ship_eep_report_rec a,
            ods_hs_share.c_cb_cargo_declare_rec   b
        where a.report_id = b.report_id
            and a.delete_flag='0'
            and ARRIVAL_OR_LEAVE = '1'
            and a.ship_id = #{shipId}
            and to_char(a.report_time, 'yyyy') = extract(year from sysdate)
        group by substr(a.SHIP_TYPE_CODE, 0, 2)
"""*/
var outCargoNumSql = """
      select ROUND(sum(case
                         when arrival_or_leave = '1' then
                          a.port_cargo
                       end) / 10000,
                   2) outCargo_num
        from c_cb_ship_eep_report_rec a
       inner join dict_data.dim_l_t_location_info b
          on a.berth_code = b.berth_code
       where a.ship_id = #{shipId}
         and a.delete_flag = '0'
         and a.if_revoke = '0'
         and a.arrival_or_leave = '1'
         --and b.basin = '干线'
         and b.berth_name NOT LIKE '%服务区%'
         and b.berth_name NOT LIKE '%锚地%'
         and b.berth_name NOT LIKE '%停泊区%'
         and b.berth_name NOT LIKE '%加油站%'
         and to_char(a.report_time, 'yyyy') = extract(year from sysdate)
"""

//var reportNum = async db.biz_data.camel().selectValue(reportNumSql);
var reportNum = async db.ods_data.camel().selectValue(reportNumSql);
var inCargoNum = async db.ods_data.camel().selectValue(inCargoNumSql);
var outCargoNum = async db.ods_data.camel().selectValue(outCargoNumSql);

var res = {};
res.put("reportNum",reportNum.get()::int);
res.put("inCargoNum",(inCargoNum.get() =="" || inCargoNum.get() == null) ?0:inCargoNum.get()::double);
res.put("outCargoNum",(outCargoNum.get() =="" || outCargoNum.get() == null) ?0:outCargoNum.get()::double);

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
});