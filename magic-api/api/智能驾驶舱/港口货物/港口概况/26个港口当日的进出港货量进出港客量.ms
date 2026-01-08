{
  "properties" : { },
  "id" : "d270aeb931d04e868a9536bdcac8d635",
  "script" : null,
  "groupId" : "31f4df5e696c4ddf8ab61b4768f1f03a",
  "name" : "26个港口当日的进出港货量进出港客量",
  "createTime" : null,
  "updateTime" : 1730772405624,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getMainPortTodaySts",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": []\n}",
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
    "dataType" : "String",
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
      "dataType" : "Array",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;




//当日改为昨日了  去掉上海
var sql = """
  select a.port_cn_name,
        a.port_passenger_num,
        a.port_cargo_num,
        ROW_NUMBER() over(order by a.port_passenger_num desc) as passenger_row,
        ROW_NUMBER() over(order by a.port_cargo_num desc) as cargo_row
    from (select a.port_cn_name,
                a.orders,
                coalesce(sum(t.port_passenger), 0) port_passenger_num,
                round(coalesce(sum(t.port_cargo), 0) / 10000, 2) port_cargo_num
            from ch.d_cb_port_imp a
            left join (SELECT b.city_name, b.berth_code
                        FROM ch.dim_l_t_location_info b
                      inner join ch.d_cb_port_imp a
                          on b.city_name = a.city_name
                      WHERE b.basin = '干线'
                          OR b.basin = '支流') b
              on a.city_name = b.city_name
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
                to_date(to_char(current_date , 'yyyy-mm-dd'), 'yyyy-mm-dd')
          group by a.port_cn_name, a.orders) a where a.port_cn_name!='上海'  
  order by a.orders desc
"""


var shipNums =  db.gpadmin.camel().select(sql);
for(item in shipNums){
  item.put("passengerRow",item.get("passengerRow")::string);
  item.put("cargoRow",item.get("cargoRow")::string);
}

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: shipNums
}); 

//前一日进出港旅客量
/*var portPassengerSql = """

select port_cn_name, port_passenger_num ,
ROW_NUMBER() over(order by a.port_passenger_num desc) as passenger_row
 from (
    select a.port_cn_name,
            coalesce(sum(t.port_passenger*t.frequency), 0) port_passenger_num
        from ch.d_cb_port_imp a
        left join (SELECT b.city_name, b.berth_code
                    FROM ch.dim_l_t_location_info b
                    inner join ch.d_cb_port_imp a
                        on b.city_name = a.city_name
                    WHERE b.basin = '干线'
                        OR b.basin = '支流') b
            on a.city_name = b.city_name
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
            to_date(to_char(current_date, 'yyyy-mm-dd'), 'yyyy-mm-dd')
        group by a.port_cn_name, a.orders
        order by a.orders desc) a 
"""
//前一日进出港货运量
var portCargoSql = """

select  port_cn_name,port_cargo_num ,
 ROW_NUMBER() over(order by a.port_cargo_num desc) as cargo_row
from  (
    select a.port_cn_name,
          round(coalesce(sum(b.port_cargo), 0) / 10000, 2) port_cargo_num
      from ch.d_cb_port_imp a
      left join (select t.port_cargo, a.city_name
                  from ch.c_cb_cargo_declare_rec t
                  inner join ch.c_cb_ship_eep_report_rec c
                    on t.report_id = c.report_id
                  inner join ch.dim_l_t_location_info b
                    on b.berth_code = c.berth_code
                  inner join ch.d_cb_port_imp a
                    on a.city_name = b.city_name
                  where b.basin in ('干线', '支流')
                    and c.berth_name NOT LIKE '%服务区%'
                    and c.berth_name NOT LIKE '%锚地%'
                    and c.berth_name NOT LIKE '%停泊区%'
                    and c.delete_flag != '1'
                    and c.if_revoke != '1'
                    and c.report_time >=
                        to_date(to_char(current_date - 1, 'yyyy-mm-dd'),
                                'yyyy-mm-dd')
                    and c.report_time <
                        to_date(to_char(current_date, 'yyyy-mm-dd'),
                                'yyyy-mm-dd')) b
        on a.city_name = b.city_name
    group by a.port_cn_name, a.orders
    order by a.orders) a
"""

//var port = db.gpadmin.camel().select(sql);
var portPassenger = async db.gpadmin.camel().select(portPassengerSql);
var portCargo = async db.gpadmin.camel().select(portCargoSql);

for(item in portPassenger.get()){
  item.put("passengerRow",item.get("passengerRow")::string);
    //item.put("portPassengerNum",item.get("portPassengerNum")::int);
    for(item2 in portCargo.get()){
      if(item.get("portCnName") == item2.get("portCnName")){
        item.put("portCargoNum",item2.get("portCargoNum"));
        item.put("cargoRow",item2.get("cargoRow")::string);
      }
    }
    
}

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: portPassenger.get()
}); 
*/






/**
var sql = """

select n.*,m.passenger_row,q.cargo_row from  (
select i.PORT_CN_NAME,i.port_code,nvl(t3.port_passenger_num,0) as port_passenger_num,round(nvl(t3.port_cargo_num,0)/10000,2) as port_cargo_num from dict_data.d_cb_port_imp i left join (
select start_date sts_date,
         
                    count(1) ship_num,
                    sum(nvl(port_passenger_num, 0)) port_passenger_num,
                    sum(nvl(port_ship_num_p, 0)) port_ship_num_p,
                    sum(nvl(act_passenger_num, 0)) act_passenger_num,
                    sum(nvl(act_ship_num_p, 0)) act_ship_num_p,
                    sum(nvl(port_cargo_num, 0)) port_cargo_num,
                    sum(nvl(port_ship_num_c, 0)) port_ship_num_c,
                    sum(nvl(act_cargo_num, 0)) act_cargo_num,
                    sum(nvl(act_ship_num_c, 0)) act_ship_num_c,
                    sum(nvl(port_c_qay_num, 0)) port_c_qay_num,
                    sum(nvl(act_c_qay_num, 0)) act_c_qay_num,
                    sum(nvl(port_dgr_cargo_num, 0)) port_dgr_cargo_num,
                    sum(nvl(act_dgr_cargo_num, 0)) act_dgr_cargo_num,
                    sum(nvl(ship_dwt, 0)) ship_dwt,
                    case when t2.port_code is null then '999999' else t2.port_code end port_code
               from (select t.report_id,
                            t.ship_id,
                            to_char(t.expect_time, 'yyyy-mm-dd') start_date,
                            to_char(t.expect_time, 'yyyy-mm-dd') end_date,
                            t.arrival_or_leave port_flag,
                            t.berth_code,
                            case when t.voyage_report=1 then t.frequency*t.port_passenger else t.port_passenger  end port_passenger_num ,
                            case
                              when t.port_cargo > 0 then
                               1
                              else
                               0
                            end port_ship_num_p,
                            t.actual_capacity act_passenger_num,
                            case
                              when t.actual_capacity > 0 then
                               1
                              else
                               0
                            end act_ship_num_p,
                            t.port_cargo port_cargo_num,
                            case
                              when t.port_cargo > 0 then
                               1
                              else
                               0
                            end port_ship_num_c,
                            t.actual_carrying_capacity act_cargo_num,
                            case
                              when t.actual_carrying_capacity > 0 then
                               1
                              else
                               0
                            end act_ship_num_c,
                            t.port_container_qay port_c_qay_num,
                            case
                              when t.real_container_qay > 0 then
                               1
                              else
                               0
                            end act_c_qay_num,
                            t.port_danger_cargo port_dgr_cargo_num,
                            t.real_danger_cargo act_dgr_cargo_num,t.ship_dwt
                       from sub_biz_data.rpt_ship_eep_report_rec t
                      where t.delete_flag != '1'
                        and t.if_revoke != '1'
                        and to_char(t.expect_time, 'yyyy-mm-dd') =to_char(sysdate-1,'yyyy-mm-dd')
                         ) t1
               left join dict_data.d_location_info t2
                 on t1.berth_code = t2.berth_code
                 where t2.detail_brsin_cj='长江'
              group by t2.port_code,
                       start_date
                       ) t3 on i.port_code=t3.port_code
                      order by i.orders desc) n
											
											
		left join (
		select i.PORT_CN_NAME,i.port_code,
		Row_number ( ) over ( ORDER BY nvl(t3.port_passenger_num,0) DESC ) AS passenger_row  from dict_data.d_cb_port_imp i left join (
select start_date sts_date,
         
                    count(1) ship_num,
                    sum(nvl(port_passenger_num, 0)) port_passenger_num,
                    sum(nvl(port_ship_num_p, 0)) port_ship_num_p,
                    sum(nvl(act_passenger_num, 0)) act_passenger_num,
                    sum(nvl(act_ship_num_p, 0)) act_ship_num_p,
                    sum(nvl(port_cargo_num, 0)) port_cargo_num,
                    sum(nvl(port_ship_num_c, 0)) port_ship_num_c,
                    sum(nvl(act_cargo_num, 0)) act_cargo_num,
                    sum(nvl(act_ship_num_c, 0)) act_ship_num_c,
                    sum(nvl(port_c_qay_num, 0)) port_c_qay_num,
                    sum(nvl(act_c_qay_num, 0)) act_c_qay_num,
                    sum(nvl(port_dgr_cargo_num, 0)) port_dgr_cargo_num,
                    sum(nvl(act_dgr_cargo_num, 0)) act_dgr_cargo_num,
                    sum(nvl(ship_dwt, 0)) ship_dwt,
                    case when t2.port_code is null then '999999' else t2.port_code end port_code
               from (select t.report_id,
                            t.ship_id,
                            to_char(t.expect_time, 'yyyy-mm-dd') start_date,
                            to_char(t.expect_time, 'yyyy-mm-dd') end_date,
                            t.arrival_or_leave port_flag,
                            t.berth_code,
                            case when t.voyage_report=1 then t.frequency*t.port_passenger else t.port_passenger  end port_passenger_num ,
                            case
                              when t.port_cargo > 0 then
                               1
                              else
                               0
                            end port_ship_num_p,
                            t.actual_capacity act_passenger_num,
                            case
                              when t.actual_capacity > 0 then
                               1
                              else
                               0
                            end act_ship_num_p,
                            t.port_cargo port_cargo_num,
                            case
                              when t.port_cargo > 0 then
                               1
                              else
                               0
                            end port_ship_num_c,
                            t.actual_carrying_capacity act_cargo_num,
                            case
                              when t.actual_carrying_capacity > 0 then
                               1
                              else
                               0
                            end act_ship_num_c,
                            t.port_container_qay port_c_qay_num,
                            case
                              when t.real_container_qay > 0 then
                               1
                              else
                               0
                            end act_c_qay_num,
                            t.port_danger_cargo port_dgr_cargo_num,
                            t.real_danger_cargo act_dgr_cargo_num,t.ship_dwt
                       from sub_biz_data.rpt_ship_eep_report_rec t
                      where t.delete_flag != '1'
                        and t.if_revoke != '1'
                        and to_char(t.expect_time, 'yyyy-mm-dd') =to_char(sysdate-1,'yyyy-mm-dd')
                         ) t1
               left join dict_data.d_location_info t2
                 on t1.berth_code = t2.berth_code
                 where t2.detail_brsin_cj='长江'
              group by t2.port_code,
                       start_date
                       ) t3 on i.port_code=t3.port_code                 
)m on m.PORT_CN_NAME=n.PORT_CN_NAME




		left join (	select i.PORT_CN_NAME,i.port_code,
		Row_number ( ) over ( ORDER BY round(nvl(t3.port_cargo_num,0)/10000,2) DESC ) AS cargo_row  from dict_data.d_cb_port_imp i left join (
select start_date sts_date,
         
                    count(1) ship_num,
                    sum(nvl(port_passenger_num, 0)) port_passenger_num,
                    sum(nvl(port_ship_num_p, 0)) port_ship_num_p,
                    sum(nvl(act_passenger_num, 0)) act_passenger_num,
                    sum(nvl(act_ship_num_p, 0)) act_ship_num_p,
                    sum(nvl(port_cargo_num, 0)) port_cargo_num,
                    sum(nvl(port_ship_num_c, 0)) port_ship_num_c,
                    sum(nvl(act_cargo_num, 0)) act_cargo_num,
                    sum(nvl(act_ship_num_c, 0)) act_ship_num_c,
                    sum(nvl(port_c_qay_num, 0)) port_c_qay_num,
                    sum(nvl(act_c_qay_num, 0)) act_c_qay_num,
                    sum(nvl(port_dgr_cargo_num, 0)) port_dgr_cargo_num,
                    sum(nvl(act_dgr_cargo_num, 0)) act_dgr_cargo_num,
                    sum(nvl(ship_dwt, 0)) ship_dwt,
                    case when t2.port_code is null then '999999' else t2.port_code end port_code
               from (select t.report_id,
                            t.ship_id,
                            to_char(t.expect_time, 'yyyy-mm-dd') start_date,
                            to_char(t.expect_time, 'yyyy-mm-dd') end_date,
                            t.arrival_or_leave port_flag,
                            t.berth_code,
                            case when t.voyage_report=1 then t.frequency*t.port_passenger else t.port_passenger  end port_passenger_num ,
                            case
                              when t.port_cargo > 0 then
                               1
                              else
                               0
                            end port_ship_num_p,
                            t.actual_capacity act_passenger_num,
                            case
                              when t.actual_capacity > 0 then
                               1
                              else
                               0
                            end act_ship_num_p,
                            t.port_cargo port_cargo_num,
                            case
                              when t.port_cargo > 0 then
                               1
                              else
                               0
                            end port_ship_num_c,
                            t.actual_carrying_capacity act_cargo_num,
                            case
                              when t.actual_carrying_capacity > 0 then
                               1
                              else
                               0
                            end act_ship_num_c,
                            t.port_container_qay port_c_qay_num,
                            case
                              when t.real_container_qay > 0 then
                               1
                              else
                               0
                            end act_c_qay_num,
                            t.port_danger_cargo port_dgr_cargo_num,
                            t.real_danger_cargo act_dgr_cargo_num,t.ship_dwt
                       from sub_biz_data.rpt_ship_eep_report_rec t
                      where t.delete_flag != '1'
                        and t.if_revoke != '1'
                        and to_char(t.expect_time, 'yyyy-mm-dd') =to_char(sysdate-1,'yyyy-mm-dd')
                         ) t1
               left join dict_data.d_location_info t2
                 on t1.berth_code = t2.berth_code
                 where t2.detail_brsin_cj='长江'
              group by t2.port_code,
                       start_date
                       ) t3 on i.port_code=t3.port_code    )q on q.PORT_CN_NAME=n.PORT_CN_NAME

"""

var shipNums =  db.ods_data.camel().select(sql);


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: shipNums
}); */