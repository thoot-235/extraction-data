{
  "properties" : { },
  "id" : "3c226398873644c78bbceeba9658ce48",
  "script" : null,
  "groupId" : "e4f5142bedb24c9bbc2981102d51e07a",
  "name" : "行业情况",
  "createTime" : null,
  "updateTime" : 1749459413056,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/industrySituation",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"colName\": \"去年进出港货量\",\n        \"colValue\": 64.52\n    }, {\n        \"colName\": \"自年初累计进出港货量\",\n        \"colValue\": 28.36\n    }, {\n        \"colName\": \"通航里程\",\n        \"colValue\": 2808.0\n    }, {\n        \"colName\": \"亿吨大港\",\n        \"colValue\": 15.0\n    }, {\n        \"colName\": \"重点港口\",\n        \"colValue\": 27.0\n    }, {\n        \"colName\": \"航运企业总数\",\n        \"colValue\": 11219.0\n    }, {\n        \"colName\": \"活跃船舶总数\",\n        \"colValue\": 118892.0\n    }, {\n        \"colName\": \"水系注册船员数\",\n        \"colValue\": 143.0\n    }, {\n        \"colName\": \"总运量\",\n        \"colValue\": 0.0\n    }, {\n        \"colName\": \"水系运输企业\",\n        \"colValue\": 3770.0\n    }, {\n        \"colName\": \"水系拥有运输船舶\",\n        \"colValue\": 8.1\n    }, {\n        \"colName\": \"水道数\",\n        \"colValue\": 304.0\n    }, {\n        \"colName\": \"水系拥有运输船舶净载重量\",\n        \"colValue\": 1.2\n    }, {\n        \"colName\": \"自年初累计通过量\",\n        \"colValue\": 15.82\n    }, {\n        \"colName\": \"年通过量\",\n        \"colValue\": 44.22\n    }]\n}",
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
          "name" : "colName",
          "value" : "去年进出港货量",
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
          "name" : "colValue",
          "value" : "64.52",
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
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;

//航标数量、气象站数量、水位站数量、AIS基站数量、北斗地基增强基站数量
//通航里程\亿吨大港\重点港口\航运企业总数\活跃船舶总数\船员注册数\总运量\总运力
var numsSql = """
  select index_name col_name,index_num col_value from ZT_FULL_VIEW_ORG where  INDEX_TYPE_CODE = '6'
"""
//船员注册数万人近三年 活跃注册
var crewNumsSql_back =  """
    select to_char(round(sum(b.target_val)/10000,1)) col_number
    from dict_data.DICT_RIVER_PROVINCE a
    left join dm_data.sts_basic_info b
        on a.item_name_cn = b.target_name
    where b.sts_code = '83'
    and b.sts_date = (select max(sts_date)
                        from dm_data.sts_basic_info
                        where sts_code = '83')
"""
//船员注册数 十四省市
var crewNumsSql="""
  select   
 to_char(round(sum(b.target_val)/10000,1)) col_number  
    from dm_data.sts_basic_info b
    where b.sts_code = '112'
    and to_char(sts_date,'yyyy-MM-dd') = (select max(to_char(sts_date,'yyyy-MM-dd'))
                        from dm_data.sts_basic_info
                        where sts_code = '112')
    --and b.target_code in ('H','N')
"""


//14省市注册船舶
/*var regShipSql="""
select to_char(round(b.target_val/10000,1)) as reg_ship_num from  dm_data.sts_basic_info b
    where b.sts_code = '108'
    and b.sts_date = (select max(sts_date)
                        from dm_data.sts_basic_info
                        where sts_code = '108' )
"""*/

//水系拥有运输船舶总数
/*var regShipSql="""
select to_char(round(count(*)/10000,1)) as reg_ship_num
  from ods_hs_share.trans_mgt_company_ship
 where st_year = (select max(st_year) from trans_mgt_company_ship)
   and BELONG_PROVINCE in
       (select ITEM_NAME_CN_SHORT from dict_data.dict_river_province)
"""
*/
var regShipSql="""
select to_char(round(count(*)/10000,1)) as reg_ship_num
  from (SELECT
		a.ship_id,
		b.SHIP_REGION_TYPE_name,
		b.SHIP_REGION_TYPE
	FROM
		ods_hs_share.trans_mgt_company_ship a
		LEFT JOIN SUB_BASE_DATA.shp_basic_data_only b ON a.ship_id = b.ship_id 
	WHERE
		a.st_year = ( SELECT max( st_year ) FROM trans_mgt_company_ship ) 
		AND a.BELONG_PROVINCE IN ( SELECT ITEM_NAME_CN_SHORT FROM dict_data.dict_river_province ) 
		and (b.SHIP_REGION_TYPE is null  or b.SHIP_REGION_TYPE ='0'))
"""


//14省市注册船舶运力
/*
var allTrans="""

select to_char(round(b.target_val/100000000,1)) as reg_Ship_Tran_Num from  dm_data.sts_basic_info b
    where b.sts_code = '107'
    and b.sts_date = (select max(sts_date)
                        from dm_data.sts_basic_info
                        where sts_code = '107' )

"""*/
//水系拥有运输船舶净载重量
/*var allTrans="""
select to_char(round(sum(SHIP_DWT)/100000000,1)) as reg_Ship_Tran_Num
  from ods_hs_share.trans_mgt_company_ship
 where st_year = (select max(st_year) from trans_mgt_company_ship)
   and BELONG_PROVINCE in
       (select ITEM_NAME_CN_SHORT from dict_data.dict_river_province)
"""*/

var allTrans="""
select to_char(round(sum(SHIP_DWT)/100000000,1)) as reg_Ship_Tran_Num
  from (
      SELECT
		a.SHIP_DWT
		
	FROM
		ods_hs_share.trans_mgt_company_ship a
		LEFT JOIN SUB_BASE_DATA.shp_basic_data_only b ON a.ship_id = b.ship_id 
	WHERE
		a.st_year = ( SELECT max( st_year ) FROM trans_mgt_company_ship ) 
		AND a.BELONG_PROVINCE IN ( SELECT ITEM_NAME_CN_SHORT FROM dict_data.dict_river_province ) 
		and (b.SHIP_REGION_TYPE is null  or b.SHIP_REGION_TYPE ='0')
  )
"""

//14省市注册企业
var compSlq="""

    select b.target_val as  comp_num from  dm_data.sts_basic_info b
    where b.sts_code = '106'
    and b.sts_date = (select max(sts_date)
                        from dm_data.sts_basic_info
                        where sts_code = '106' )
"""
//水道数
var waterLineSql = """
  SELECT  channel
          FROM dm_static_info
         where valid_flag = '1'
"""

//年通过量

/*var passNumSql="""
select  nvl(to_char(round((sum(capcity))/100000000,1)),0) as  pass_num 
 from DM_DATA.DM_OD_CARGO_MONTH where  SUBSTR(YM, 1, 4) =extract(year from sysdate) 
"""*/

/**
 * 
行业情况-自年初累计通过量，计算规则：
每年1月份，用去年1月份的月通过量平均值*天数；
2月份：今年1月份的通过量+去年2月的通过量平均值*天数，即：自年初累计到本年度上月通过量+本月同期每日平均值*本月当前已过天数
以此类推计算自年初累计
 * 
 */

var passNumSql="""
select  nvl(round(m.pass_num/100000000,2),0) as  pass_num from  (
SELECT  (select nvl(sum(capcity),0) as pass_num
  from DM_DATA.DM_OD_CARGO_MONTH
 where SUBSTR(YM, 1, 4) >= extract(year from sysdate)
   and YM <= to_char(sysdate, 'yyyyMM')
 ) + (select sum(capcity) as pass_num
               from DM_DATA.DM_OD_CARGO_MONTH
              where SUBSTR(YM, 1, 4) = extract(year from sysdate) - 1
                and SUBSTR(YM, 5, 6) = to_char(sysdate, 'MM')) /
            EXTRACT(DAY FROM LAST_DAY(CURRENT_DATE)) *
            to_char(sysdate,'dd') AS pass_num FROM dual ) m
 
"""

//去年年通过量
var passLastYearNumSql="""
select  nvl(to_char(round((sum(capcity) )/100000000,2)),0) as  pass_num 
 from DM_DATA.DM_OD_CARGO_MONTH where  SUBSTR(YM, 1, 4) =extract(year from sysdate)-1 
"""
/*
//去年进出港货量
var cargoLastYearSql = """
SELECT round(sum(port_cargo_num) / 100000000, 2) nums
  FROM dm_data.sts_ship_eep_report_port
 WHERE sts_date_start >= add_months(trunc(sysdate, 'YEAR'), -12)
   AND sts_date_start < trunc(sysdate, 'YEAR')
"""
*/
//去年进出港货量
var cargoLastYearSql = """
select target_val nums
  from dm_data.STS_INDICATORS_JSC
 where sts_code = '01'
   and sts_date = (select max(sts_date)
                     from dm_data.STS_INDICATORS_JSC
                    where sts_code = '01')
"""
/*
//自年初累计进出港货量
var cargoSinceYearSql = """
SELECT round(sum(port_cargo_num) / 100000000, 2) nums
  FROM dm_data.sts_ship_eep_report_port
 WHERE sts_date_start >= trunc(sysdate, 'YEAR') 
   AND sts_date_start < sysdate
"""
*/
//自年初累计进出港货量
var cargoSinceYearSql = """
select target_val nums
  from dm_data.STS_INDICATORS_JSC
 where sts_code = '02'
   and sts_date = (select max(sts_date)
                     from dm_data.STS_INDICATORS_JSC
                    where sts_code = '02')
"""
//var regShipNum= async db.ods_data.camel().selectOne(regShipSql);
//var regShipTranNum= async db.ods_data.camel().selectOne(allTrans);
var compNum= async db.dm_data.camel().selectOne(compSlq);
var nums = async db.dm_data.camel().select(numsSql);
var crewNums = async db.dm_data.camel().selectOne(crewNumsSql);
//var waterLine = async db.dm_data.camel().selectInt(waterLineSql);
//var passNum= async db.dm_data.camel().selectOne(passNumSql);
//var passLastYearNum= async db.dm_data.camel().selectOne(passLastYearNumSql);
var cargoLastYear = async db.dm_data.camel().selectValue(cargoLastYearSql);
var cargoSinceYear = async db.dm_data.camel().selectValue(cargoSinceYearSql);
for(item in nums.get()){
    if(item.get("colName")::string == "船员注册数"){
        item.put("colName","水系注册船员数");
        item.put("colValue",crewNums.get().get("colNumber")::double);
        //item.put("colValue",138);
    }else if(item.get("colName")::string == "航运企业"){
        item.put("colValue",compNum.get().get("compNum")::int);
    }else{
        item.put("colValue",item.get("colValue")::double);
    }
}
var list = [];
list.add({"colName":"去年进出港货量","colValue":cargoLastYear.get()::double})
list.add({"colName":"自年初累计进出港货量","colValue":cargoSinceYear.get()::double})
list.addAll(nums.get());


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: list
});