{
  "properties" : { },
  "id" : "81ab7f292b554201b4e6a62c412dc01f",
  "script" : null,
  "groupId" : "ad7916198d1c4366b78002efce64e866",
  "name" : "船舶数量统计",
  "createTime" : null,
  "updateTime" : 1764041589228,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getShipnums",
  "method" : "GET",
  "parameters" : [ {
    "name" : "code",
    "value" : "shipTon",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"shipNums\": 70350,\n        \"regShipNum\": 82457,\n        \"aispNum\": 16958\n    }\n}",
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
        "name" : "shipNums",
        "value" : "70350",
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
        "name" : "regShipNum",
        "value" : "82457",
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
        "name" : "aispNum",
        "value" : "16958",
        "description" : "",
        "required" : false,
        "dataType" : "Object",
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

//14省市注册船舶
/*var regShipSql="""
select b.target_val as reg_ship_num from  dm_data.sts_basic_info b
    where b.sts_code = '108'
    and to_char(b.sts_date,'yyyy-mm-dd') = (select max(to_char(sts_date,'yyyy-mm-dd'))
                        from dm_data.sts_basic_info
                        where sts_code = '108' )
"""*/
//水系报港船舶-十四省市报港船舶-近1年
var regShipSql="""
select index_num from dm_data.ZT_FULL_VIEW_ORG where  INDEX_TYPE_CODE = '12' and index_name = '近一年水系进出港船舶'
"""
//AIS船舶
var aisSql = """
  select ship_nums from COCKPIT_ON_LINE_SHIP_DAY  order by import_time desc
"""


//活跃船舶总艘数
/*var shipNumsSql = """
    select target_val
      from dm_data.sts_basic_info
      where sts_code = '100'
        and to_char(sts_date,'yyyy-mm-dd') = (select max(to_char(sts_date,'yyyy-mm-dd'))
                          from dm_data.sts_basic_info
                          where sts_code = '100')
"""*/
//proc_sts_active_ship_one_year
var shipNumsSql = """
select index_num from dm_data.ZT_FULL_VIEW_ORG where  INDEX_TYPE_CODE = '12' and index_name = '近一年干线进出港船舶'
"""

//北斗船舶艘数
var beidouShipNumSql = """
    select target_val
      from dm_data.sts_basic_info
      where sts_code = '62'
        and to_char(sts_date,'yyyy-mm-dd') = (select max(to_char(sts_date,'yyyy-mm-dd'))
                          from dm_data.sts_basic_info
                          where sts_code = '62')
"""
//铅封船舶艘数
var qianfengShipNumSql = """
    select target_val
      from dm_data.sts_basic_info
      where sts_code = '63'
        and to_char(sts_date,'yyyy-mm-dd') = (select max(to_char(sts_date,'yyyy-mm-dd'))
                          from dm_data.sts_basic_info
                          where sts_code = '63')
"""
//党员船舶艘数
var partyShipNumSql = """
    select target_val
        from dm_data.sts_basic_info
      where sts_code = '64'
        and to_char(sts_date,'yyyy-mm-dd') = (select max(to_char(sts_date,'yyyy-mm-dd'))
                          from dm_data.sts_basic_info
                          where sts_code = '64')
"""
//船舶类型统计
var shipTypeSql_back = """
    select target_class, target_name, target_val
        from dm_data.sts_basic_info
        where sts_code = '101' 
            and to_char(sts_date,'yyyy-mm-dd') = (select max(to_char(sts_date,'yyyy-mm-dd'))
                                from dm_data.sts_basic_info
                                where sts_code = '101')


"""

var shipTypeSql = """                           
select target_class, target_name, target_val
        from dm_data.sts_basic_info
        where sts_code = '101'
           and to_char(sts_date,'yyyy-mm-dd') = (select max(to_char(sts_date,'yyyy-mm-dd'))
                          from dm_data.sts_basic_info
                          where sts_code = '101')
"""
//船舶船龄统计
var shipAgesSql = """
    select target_class, target_name, target_val
        from dm_data.sts_basic_info
        where sts_code = '102' and target_name != '其他'
            and to_char(sts_date,'yyyy-mm-dd') = (select max(to_char(sts_date,'yyyy-mm-dd'))
                                from dm_data.sts_basic_info
                                where sts_code = '102')
"""
//船舶注册地分布统计
/*
var shipAreaSql = """
    select a.item_name_cn_short target_name, nvl(target_val, 0) target_val,row_number
        from dict_data.dict_river_province a
        left join (select target_name, target_val,row_number() over ( ORDER BY nvl(target_val, 0)  DESC) as row_number
        from dm_data.sts_basic_info
        where sts_code = '119'
            and to_char(sts_date,'yyyy-mm-dd') = (select to_char(max(sts_date),'yyyy-mm-dd')
                                from dm_data.sts_basic_info
                                where sts_code = '119')
        ) b on a.item_name_cn = b.target_name
    order by a.orders asc
"""*/
/*
var shipAreaSql="""
SELECT
	a.* 
FROM
	(
	SELECT
		BELONG_PROVINCE AS target_name,
		nvl( count( * ), 0 ) AS target_val,
		row_number ( ) over ( ORDER BY nvl( count( * ), 0 ) DESC ) AS row_number 
	FROM
		(SELECT
		a.BELONG_PROVINCE
	FROM
		ods_hs_share.trans_mgt_company_ship a
		LEFT JOIN SUB_BASE_DATA.shp_basic_data_only b ON a.ship_id = b.ship_id 
	WHERE
		a.st_year = ( SELECT max( st_year ) FROM trans_mgt_company_ship ) 
		AND a.BELONG_PROVINCE IN ( SELECT ITEM_NAME_CN_SHORT FROM dict_data.dict_river_province ) 
		and (b.SHIP_REGION_TYPE is null  or b.SHIP_REGION_TYPE ='0'))

	GROUP BY
		BELONG_PROVINCE 
	) a
	LEFT JOIN dict_data.dict_river_province b ON a.target_name = b.ITEM_NAME_CN_SHORT 
ORDER BY
	b.orders
       
"""
*/
//水系船舶注册地分布
var shipAreaSql="""
  select 
  target_name,
  target_val,
  target_order as row_number 
  from dm_data.sts_basic_info t where sts_code='123' 
  and to_char(sts_date,'yyyy-mm-dd') = (select max(to_char(sts_date,'yyyy-mm-dd'))
                                from dm_data.sts_basic_info
                                where sts_code = '123')
"""
//船舶吨级分布
/*
var shipTonSql = """
    select target_code as target_class,target_name,target_val
        from dm_data.sts_basic_info
        where sts_code = '104'
            and target_name != '其他'
            and to_char(sts_date,'yyyy-MM-dd') = (select to_char(max(sts_date),'yyyy-mm-dd')
                                from dm_data.sts_basic_info
                                where sts_code = '104')
"""
*/
//船舶吨级分布
var shipTonSql = """
    select target_code as target_class,target_name,target_val
        from dm_data.sts_basic_info
        where sts_code = '120'
            and target_name != '其他'
            and to_char(sts_date,'yyyy-MM-dd') = (select to_char(max(sts_date),'yyyy-mm-dd')
                                from dm_data.sts_basic_info
                                where sts_code = '120')
"""
// //船舶吨级分布
// var shipTonSql = """
//     select target_code as target_class,target_name,target_val
//         from dm_data.sts_basic_info
//         where sts_code = '68'
//             and target_name != '其他'
//             and sts_date = (select max(sts_date)
//                                 from dm_data.sts_basic_info
//                                 where sts_code = '68') 
// """
//涉客船舶
var passengerSql = """
    select n.*,m.row_number  from  
	(select REGEXP_REPLACE(a.item_name_cn,'[省市]','') target_name, nvl(target_val, 0) target_val
        from dict_data.dict_river_province a
        left join (select target_name, target_val
                    from dm_data.sts_basic_info
                    where sts_code = '105'
                        and target_class = '涉客'
                        and to_char(sts_date,'yyyy-MM-dd') = (select to_char(max(sts_date),'yyyy-mm-dd')
                                        from dm_data.sts_basic_info
                                        where sts_code = '105'
                                        and target_class = '涉客')) b
            on a.item_name_cn = b.target_name
        order by a.orders)n 
				left  join  (
				select REGEXP_REPLACE(a.item_name_cn,'[省市]','') target_name, nvl(target_val, 0) target_val,
				Row_number ( ) over ( ORDER BY nvl(target_val, 0)  DESC ) AS row_number	
        from dict_data.dict_river_province a
        left join (select target_name, target_val
                    from dm_data.sts_basic_info
                    where sts_code = '105'
                        and target_class = '涉客'
                        and to_char(sts_date,'yyyy-MM-dd') = (select to_char(max(sts_date),'yyyy-mm-dd')
                                        from dm_data.sts_basic_info
                                        where sts_code = '105'
                                        and target_class = '涉客')) b
            on a.item_name_cn = b.target_name
				)m  on n.target_name =m.target_name
"""
//涉危船舶
var dangerSql = """
 select n.*,m.row_number  from  
	(

   select REGEXP_REPLACE(a.item_name_cn,'[省市]','') target_name, nvl(target_val, 0) target_val
        from dict_data.dict_river_province a
        left join (select target_name, target_val
                    from dm_data.sts_basic_info
                    where sts_code = '105'
                        and target_class = '涉危'
                        and to_char(sts_date,'yyyy-MM-dd') = (select to_char(max(sts_date),'yyyy-mm-dd')
                                        from dm_data.sts_basic_info
                                        where sts_code = '105'
                                        and target_class = '涉危')) b
            on a.item_name_cn = b.target_name
        order by a.orders)n 
				left  join  (
				select REGEXP_REPLACE(a.item_name_cn,'[省市]','') target_name, nvl(target_val, 0) target_val,
				Row_number ( ) over ( ORDER BY nvl(target_val, 0)  DESC ) AS row_number
        from dict_data.dict_river_province a
        left join (select target_name, target_val
                    from dm_data.sts_basic_info
                    where sts_code = '105'
                        and target_class = '涉危'
                        and to_char(sts_date,'yyyy-MM-dd') = (select to_char(max(sts_date),'yyyy-mm-dd')
                                        from dm_data.sts_basic_info
                                        where sts_code = '105'
                                        and target_class = '涉危')) b
            on a.item_name_cn = b.target_name
				)m  on n.target_name =m.target_name
"""


//涉客涉危总数
var pdAllSql="""
select n.target_val+m.TARGET_val as target_val,n.target_name,
Row_number ( ) over ( ORDER BY nvl(n.target_val+m.TARGET_val, 0)  DESC ) AS row_number
  from  
  (

   select REGEXP_REPLACE(a.item_name_cn,'[省市]','') target_name, nvl(target_val, 0) target_val
        from dict_data.dict_river_province a
        left join (select target_name, target_val
                    from dm_data.sts_basic_info
                    where sts_code = '105'
                        and target_class = '涉危'
                        and to_char(sts_date,'yyyy-MM-dd') = (select to_char(max(sts_date),'yyyy-mm-dd')
                                        from dm_data.sts_basic_info
                                        where sts_code = '105'
                                        and target_class = '涉危')) b
            on a.item_name_cn = b.target_name
        order by a.orders)n 
        left  join  (
        select REGEXP_REPLACE(a.item_name_cn,'[省市]','') target_name, nvl(target_val, 0) target_val
        from dict_data.dict_river_province a
        left join (select target_name, target_val
                    from dm_data.sts_basic_info
                    where sts_code = '105'
                        and target_class = '涉客'
                        and to_char(sts_date,'yyyy-MM-dd') = (select to_char(max(sts_date),'yyyy-mm-dd')
                                        from dm_data.sts_basic_info
                                        where sts_code = '105'
                                        and target_class = '涉客')) b
            on a.item_name_cn = b.target_name
        )m  on n.target_name =m.target_name
"""

//船舶艘数统计
if(code == "nums"){
    var shipNums = async db.dm_data.camel().selectInt(shipNumsSql);
   // var beidouShipNum = async db.dm_data.camel().selectInt(beidouShipNumSql); 
    //var qianfengShipNum = async db.dm_data.camel().selectInt(qianfengShipNumSql);
    //var partyShipNum = async db.dm_data.camel().selectInt(partyShipNumSql); 
   var regShipNum = async db.dm_data.camel().selectInt(regShipSql); 
   var aispNum = async db.dm_data.camel().selectInt(aisSql); 
    //var aispNum = async db.dm_data.camel().selectOne(aisSql); 

    var res = {}
    res.put("shipNums",shipNums.get());
     res.put("regShipNum",regShipNum.get());
    //res.put("aispNum",aispNum.get());
    res.put("aispNum",16958);
   // res.put("aispNum",aispNum.get("shipNums")::int <10000? 16958: item.get("shipNums")::int);
    //res.put("beidouShipNum",beidouShipNum.get());
    //res.put("qianfengShipNum",qianfengShipNum.get());
    //res.put("partyShipNum",partyShipNum.get());

    return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            result: res
    });
}

//船舶类型统计
if(code == "shipType"){
    var shipType = db.dm_data.camel().select(shipTypeSql);
    for(item in shipType){
        item.put("targetVal",item.get("targetVal")::int);
    }
    return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            result: shipType
    });
}

//船舶船龄统计
if(code == "shipAges"){
    var shipAges = db.dm_data.camel().select(shipAgesSql);
    for(item in shipAges){
        item.put("targetVal",item.get("targetVal")::int);
    }
    return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            result: shipAges
    });
}

//船舶注册地分布统计
if(code == "shipArea"){
    //var shipArea = db.dm_data.camel().select(shipAreaSql);
	var shipArea = db.ods_data.camel().select(shipAreaSql);
    for(item in shipArea){
        item.put("targetVal",item.get("targetVal")::int);
    }
    return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            result: shipArea
    });
}

//船舶吨级分布
if(code == "shipTon"){
    var shipTon = db.dm_data.camel().select(shipTonSql);
    for(item in shipTon){
        item.put("targetVal",item.get("targetVal")::int);
    }
    return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            result: shipTon
    });
}

//涉客涉危船舶
if(code == "passengerDanger"){
    var passenger = async db.dm_data.camel().select(passengerSql);
    var danger = async db.dm_data.camel().select(dangerSql);
    for(item in passenger.get()){
        item.put("targetVal",item.get("targetVal")::int);
    }
    for(item in danger.get()){
        item.put("targetVal",item.get("targetVal")::int);
    }
    var res = {};
    res.put("passenger",passenger.get());
    res.put("danger",danger.get());
    return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            result: res
    });
}


//涉客涉危总和分布
if(code == "pdAll"){
    var pdAll =  db.dm_data.camel().select(pdAllSql);
   
    for(item in pdAll){
        item.put("targetVal",item.get("targetVal")::int);
    }
  
    return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            result: pdAll
    });
}

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: ""
});