{
  "properties" : { },
  "id" : "6b8f0d170fa846a49f787d3cbc37b598",
  "script" : null,
  "groupId" : "26b088cc467c4fc0a3f16fed3416308b",
  "name" : "进出港旅客日年累计统计",
  "createTime" : null,
  "updateTime" : 1706602741954,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getDayYearAllPassanger",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"passengerNumsAll\": 2125.8,\n        \"unit\": \"万人次\"\n    }, {\n        \"passengerNumsLastYear\": 2081.06,\n        \"unit\": \"万人次\"\n    }, {\n        \"passengerNumsDay\": 3.35,\n        \"unit\": \"万人次\"\n    }]\n}",
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
          "name" : "passengerNumsAll",
          "value" : "2125.8",
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
          "name" : "unit",
          "value" : "万人次",
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
  }
}
================================

import response;


//万人次去年一年
var passengerNumsLastYearSql = """
  	select case when nums < 10000 then nums
            when nums <100000000 and nums >=10000 then round(nums/10000,2)
            else round(nums/100000000,2) end nums,
        case when nums < 10000 then '人次'
            when nums <100000000 and nums >=10000 then '万人次'
            else '亿人次' end unit
  from(	
					 
			  select sum(port_passenger_num) nums from dm_data.sts_ship_eep_report_port
    where basin = '干线' and detail_basin = '长江' and sts_date_start >= add_months(trunc(sysdate,'MM'), -12) and sts_date_start < add_months(trunc(sysdate,'MM'), 0))
"""
//自年初累计
var passengerNumsAllSql = """select case when nums < 10000 then nums
            when nums <100000000 and nums >=10000 then round(nums/10000,2)
            else round(nums/100000000,2) end nums,
        case when nums < 10000 then '人次'
            when nums <100000000 and nums >=10000 then '万人次'
            else '亿人次' end unit
  from(
  select sum(port_passenger_num) nums from sts_ship_eep_report_port
    where basin = '干线' and detail_basin = '长江' and sts_date_start >= trunc(sysdate, 'YYYY'))



"""

//昨日
/*
var passengerNumsDaySql = """
select case when nums < 10000 then nums
            when nums <100000000 and nums >=10000 then round(nums/10000,2)
            else round(nums/100000000,2) end nums,
        case when nums < 10000 then '人次'
            when nums <100000000 and nums >=10000 then '万人次'
            else '亿人次' end unit
  from(
  select sum(port_passenger_num) nums from sts_ship_eep_report_port
    where basin = '干线' and detail_basin = '长江' and to_char(sts_date_start,'yyyy-mm-dd') =to_char(sysdate-1,'yyyy-mm-dd'))
"""
*/

//昨日

var passengerNumsDaySql = """
select case when nums < 10000 then nums
            when nums <100000000 and nums >=10000 then round(nums/10000,2)
            else round(nums/100000000,2) end nums,
        case when nums < 10000 then '人次'
            when nums <100000000 and nums >=10000 then '万人次'
            else '亿人次' end unit
  from(
 select coalesce(sum(t.port_passenger), 0) nums
  from (SELECT b.berth_code
          FROM ch.dim_l_t_location_info b
         WHERE b.basin = '干线'
           ) b
  left join ch.c_cb_ship_eep_report_rec t
    on t.berth_code = b.berth_code
 where berth_name NOT LIKE '%服务区%'
   and berth_name NOT LIKE '%锚地%'
   and berth_name NOT LIKE '%停泊区%'
   and t.delete_flag != '1'
   and t.if_revoke != '1'
   and t.report_time >=
       to_date(to_char(current_date - 1, 'yyyy-mm-dd'), 'yyyy-mm-dd')
   and t.report_time <
       to_date(to_char(current_date, 'yyyy-mm-dd'), 'yyyy-mm-dd')) a
"""
var passengerNumsLastYear = async db.dm_data.camel().selectOne(passengerNumsLastYearSql);
var passengerNumsAll = async db.dm_data.camel().selectOne(passengerNumsAllSql);
var passengerNumsDay = async db.gpadmin.camel().selectOne(passengerNumsDaySql);


var res = [];
res.add({"passengerNumsAll":passengerNumsAll.get().get("nums")::double,"unit":passengerNumsAll.get().get("unit")});
res.add({"passengerNumsLastYear":passengerNumsLastYear.get().get("nums")::double,"unit":passengerNumsLastYear.get().get("unit")});
res.add({"passengerNumsDay":passengerNumsDay.get().get("nums")::double,"unit":passengerNumsDay.get().get("unit")});

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
});