{
  "properties" : { },
  "id" : "67a9f285b8d84cd3a1c0739eed5ad9e7",
  "script" : null,
  "groupId" : "06840557c3324b57a151875e9c1c91e7",
  "name" : "港口当日统计",
  "createTime" : null,
  "updateTime" : 1752735245357,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getPortDetailToday",
  "method" : "GET",
  "parameters" : [ {
    "name" : "portName",
    "value" : "WUHAN",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"portPasswngerNum\": \"183\",\n        \"portCargo\": \"22.57\",\n        \"shipNum\": 184,\n        \"portCargoSinceYear\": 5640.96,\n        \"yearOnYear\": 15.3\n    }\n}",
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
        "name" : "portPasswngerNum",
        "value" : "183",
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
        "name" : "portCargo",
        "value" : "22.57",
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
        "name" : "shipNum",
        "value" : "184",
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
        "name" : "portCargoSinceYear",
        "value" : "5640.96",
        "description" : "",
        "required" : false,
        "dataType" : "Double",
        "type" : null,
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "yearOnYear",
        "value" : "15.3",
        "description" : "",
        "required" : false,
        "dataType" : "Double",
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
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;

var port;
var cityName;
var flag;
var portCodeList = [];
if(portName != null || portName !=""){
  var portSql = """
    select city_name,matching_flag from dict_data.d_cb_port_cockpit where port_pinyin = UPPER(#{portName})
  """
  port = db.dm_data.camel().selectOne(portSql);
  cityName = port.get("cityName");
  flag = port.get("matchingFlag");
  var portCodeListSql = """"""
  if(flag == "1"){//根据城市名称匹配port_code
    portCodeListSql = """
      select distinct port_code
        from dict_data.dim_l_t_location_info
      where basin = '干线'
        and berth_name NOT LIKE '%服务区%'
        and berth_name NOT LIKE '%锚地%'
        and berth_name NOT LIKE '%停泊区%'
        and city_name like concat(#{cityName},'%')
    """
  }else if(flag == "2"){//根据港口名称匹配port_code
    portCodeListSql = """
      select distinct port_code
        from dict_data.dim_l_t_location_info
      where basin = '干线'
        and berth_name NOT LIKE '%服务区%'
        and berth_name NOT LIKE '%锚地%'
        and berth_name NOT LIKE '%停泊区%'
        and port_name like concat(concat('%',#{cityName}),'%')
    """
  }
  portCodeList = db.dm_data.camel().select(portCodeListSql);
}
var portCodeArray = [];
if(portCodeList.size() >0){
  for(item in portCodeList){
    portCodeArray.add(item.get("portCode")::string);
  }
}
var portCodeArraySize = portCodeArray.size();

//从gp查询
/*
var portTjSql = """
  select 
    coalesce(sum(t.port_passenger), 0) port_passwnger_num,
    round(coalesce(sum(t.port_cargo), 0) / 10000, 2) port_cargo,
    count(1) ship_num
  from ch.dim_l_t_location_info b
	  inner join ch.d_cb_port_imp a
      on b.city_name = a.city_name
		left join ch.c_cb_ship_eep_report_rec t
		  on t.berth_code = b.berth_code
  where b.berth_name NOT LIKE '%服务区%'
    and b.berth_name NOT LIKE '%锚地%'
    and b.berth_name NOT LIKE '%停泊区%'
		and b.basin in ( '干线' , '支流')
    and t.delete_flag != '1'
    and t.if_revoke != '1'
    and t.expect_time >=date_trunc('days',current_date)
		and t.expect_time <date_trunc('days',current_date+1)
    and a.port_pinyin = #{portName}
"""*/
var portTjSql = """
  select 
    coalesce(sum(t.port_passenger), 0) port_passwnger_num,
    round(coalesce(sum(t.port_cargo), 0) / 10000, 2) port_cargo,
    count(1) ship_num
  from ch.dim_l_t_location_info b
		inner join ch.c_cb_ship_eep_report_rec t
		  on t.berth_code = b.berth_code
  where b.berth_name NOT LIKE '%服务区%'
    and b.berth_name NOT LIKE '%锚地%'
    and b.berth_name NOT LIKE '%停泊区%'
		and b.basin = '干线'
    and t.delete_flag != '1'
    and t.if_revoke != '1'
    and t.expect_time >= date_trunc('days',current_date)
    --and t.expect_time >= date_trunc('days',current_date-1)
		and t.expect_time < date_trunc('days',current_date+1)
    <if test="portCodeArraySize > 0" >
      and b.port_code in
      <foreach collection="portCodeArray" item = 'item'  open="(" separator="," close=")" >
        #{item}
      </foreach>
    </if>
"""
var portTj = db.gpadmin.camel().selectOne(portTjSql);

/**
//船舶数量统计
var shipNumsSql = """
  select sum(ship_num) ship_num ,sum(PORT_PASSENGER_NUM)  PORT_PASSENGER_NUM from 
dm_data.sts_ship_eep_report_port_type where sts_cycle='D'||to_char(sysdate,'yyyy-mm-dd')
<if test="portName != null and portName != ''">
        and port_Name=#{portName}
    </if>
"""

//货物 万吨
var portcargoSql = """
  select round(sum(port_cargo)/10000,2)  port_cargo from 
dm_data.STS_SHIP_port_REPORT_CARGO where sts_cycle='D'||to_char(sysdate,'yyyy-mm-dd')
<if test="portName != null and portName != ''">
        and port_Name=#{portName}
    </if>
"""
var shipNums = async db.dm_data.camel().selectOne(shipNumsSql);
var portCargoNums = async db.dm_data.camel().selectValue(portcargoSql); 

var data={
  "portPasswngerNum":shipNums.get().get("portPassengerNum"),
  "shipNum":shipNums.get().get("shipNum"),
  "portCargo":portCargoNums.get()
}
*/
//自年初累计进出港货量
var portCargoSinceYearSql = """
      SELECT  
            trim(to_char((coalesce(sum(a.port_cargo_nums), 0) / 10000), '9999999999.99')) as port_cargo
        FROM ch.sts_cargo_city_port a
        where 1=1 
            and a.cargo_type_code not in ('1800','1900')
            and a.ym >= to_char((date_trunc('year', current_date)),'yyyy-MM')
           -- and a.ym <= to_char((date_trunc('month', current_date)-interval '1' month),'yyyy-MM')
           and a.ym < to_char((date_trunc('year', current_date)+interval '1' year),'yyyy-MM')
            <if test="portCodeArraySize > 0" >
              and port_code in
              <foreach collection="portCodeArray" item = 'item'  open="(" separator="," close=")" >
                #{item}
              </foreach>
            </if>
"""
//去年同比的进出港货量
var portCargoLastYearSql = """
      SELECT  
            trim(to_char((coalesce(sum(a.port_cargo_nums), 0) / 10000), '9999999999.99')) as port_cargo
        FROM ch.sts_cargo_city_port a
        where 1=1 
            and a.cargo_type_code not in ('1800','1900')
            and a.ym >= to_char((date_trunc('year', current_date)-interval '1' year),'yyyy-MM')
            --and a.ym <= to_char((date_trunc('month', current_date)-interval '13' month),'yyyy-MM')
            and a.ym < to_char((date_trunc('month', current_date)-interval '11' month),'yyyy-MM')
            <if test="portCodeArraySize > 0" >
              and port_code in
              <foreach collection="portCodeArray" item = 'item'  open="(" separator="," close=")" >
                #{item}
              </foreach>
            </if>
"""
//去年1月同比的进出港货量
var portCargoLastYearSql_back = """
SELECT
	(
	SELECT
		(
		SELECT
			to_char( ( COALESCE ( SUM ( A.port_cargo_nums ), 0 ) / 10000 ), '9999999999.99' ) :: FLOAT AS port_cargo 
		FROM
			ch.sts_cargo_city_port A 
		WHERE
			SUBSTR( YM, 1, 4 ) = to_char( ( date_trunc( 'year', CURRENT_DATE ) - INTERVAL '1' YEAR ), 'yyyy' ) 
			AND SUBSTR( YM, 6, 7 ) = to_char( CURRENT_DATE, 'MM' ) 
			AND A.cargo_type_code NOT IN ( '1800', '1900' ) 
             <if test="portCodeArraySize > 0" >
              and port_code in
              <foreach collection="portCodeArray" item = 'item'  open="(" separator="," close=")" >
                #{item}
              </foreach>
            </if>     
		) / date_part( 'days', date_trunc( 'month', now( ) ) + '1 month' :: INTERVAL - '1 day' :: INTERVAL ) * to_char( CURRENT_DATE, 'dd' ) :: INTEGER 
	)
"""

var portCargoSinceYear = db.gpadmin.camel().selectValue(portCargoSinceYearSql);
var portCargoLastYear = db.gpadmin.camel().selectValue(portCargoLastYearSql);
//var portCargoLastYear = db.gpadmin.camel().selectValue(portCargoLastYearSql_back);
//return portCargoSinceYear;
portTj.put("portCargoSinceYear", portCargoSinceYear::double);
portTj.put("yearOnYear", ((portCargoSinceYear::double-portCargoLastYear::double)*100/portCargoLastYear::double).toFixed(2)::double);


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        //result: data
        result: portTj
});