{
  "properties" : { },
  "id" : "e6bdc4a7284d46308fcd1febad125de5",
  "script" : null,
  "groupId" : "e4f5142bedb24c9bbc2981102d51e07a",
  "name" : "水系拥有运输船舶打点",
  "createTime" : null,
  "updateTime" : 1742868465568,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/riverSysOwnerShipMsg",
  "method" : "GET",
  "parameters" : [ {
    "name" : "code",
    "value" : "shipDwt",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"targetName\": \"云南\",\n        \"targetVal\": 15,\n        \"rowNumber\": \"14\"\n    }, {\n        \"targetName\": \"贵州\",\n        \"targetVal\": 1726,\n        \"rowNumber\": \"11\"\n    }, {\n        \"targetName\": \"四川\",\n        \"targetVal\": 3359,\n        \"rowNumber\": \"7\"\n    }, {\n        \"targetName\": \"重庆\",\n        \"targetVal\": 2694,\n        \"rowNumber\": \"8\"\n    }, {\n        \"targetName\": \"湖南\",\n        \"targetVal\": 3483,\n        \"rowNumber\": \"6\"\n    }, {\n        \"targetName\": \"湖北\",\n        \"targetVal\": 2480,\n        \"rowNumber\": \"9\"\n    }, {\n        \"targetName\": \"江西\",\n        \"targetVal\": 2217,\n        \"rowNumber\": \"10\"\n    }, {\n        \"targetName\": \"浙江\",\n        \"targetVal\": 8512,\n        \"rowNumber\": \"3\"\n    }, {\n        \"targetName\": \"安徽\",\n        \"targetVal\": 18920,\n        \"rowNumber\": \"2\"\n    }, {\n        \"targetName\": \"江苏\",\n        \"targetVal\": 23321,\n        \"rowNumber\": \"1\"\n    }, {\n        \"targetName\": \"上海\",\n        \"targetVal\": 503,\n        \"rowNumber\": \"13\"\n    }, {\n        \"targetName\": \"陕西\",\n        \"targetVal\": 739,\n        \"rowNumber\": \"12\"\n    }, {\n        \"targetName\": \"河南\",\n        \"targetVal\": 5016,\n        \"rowNumber\": \"5\"\n    }, {\n        \"targetName\": \"山东\",\n        \"targetVal\": 7874,\n        \"rowNumber\": \"4\"\n    }]\n}",
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
          "name" : "targetName",
          "value" : "云南",
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
          "name" : "targetVal",
          "value" : "15",
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
          "name" : "rowNumber",
          "value" : "14",
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
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;

//水系拥有运输船舶净载重量
/*var shipDwtSql = """
select a.* from (
select  nvl(round(sum(SHIP_DWT)/10000,1),0) as reg_Ship_Tran_Num ,BELONG_PROVINCE item_name_cn ,
ROW_NUMBER() OVER (ORDER BY TO_NUMBER(round(sum(SHIP_DWT)/10000,1) ) desc ) AS row_num
  from ods_hs_share.trans_mgt_company_ship
 where st_year = (select max(st_year) from trans_mgt_company_ship)
   and BELONG_PROVINCE in
       (select ITEM_NAME_CN_SHORT from dict_data.dict_river_province)
       group by BELONG_PROVINCE
      ) a
       left join dict_data.dict_river_province b
       on a.item_name_cn=b.ITEM_NAME_CN_SHORT
       order by b.orders 
"""*/

var shipDwtSql = """
SELECT
	a.* 
FROM
	(
	SELECT
		nvl( round( sum( SHIP_DWT ) / 10000, 1 ), 0 ) AS reg_Ship_Tran_Num,
		BELONG_PROVINCE item_name_cn,
		ROW_NUMBER ( ) OVER ( ORDER BY TO_NUMBER( round( sum( SHIP_DWT ) / 10000, 1 ) ) DESC ) AS row_num 
	FROM
	(
	SELECT
		a.SHIP_DWT,
		a.BELONG_PROVINCE
	FROM
		ods_hs_share.trans_mgt_company_ship a
		LEFT JOIN SUB_BASE_DATA.shp_basic_data_only b ON a.ship_id = b.ship_id 
	WHERE
		a.st_year = ( SELECT max( st_year ) FROM trans_mgt_company_ship ) 
		AND a.BELONG_PROVINCE IN ( SELECT ITEM_NAME_CN_SHORT FROM dict_data.dict_river_province ) 
		and (b.SHIP_REGION_TYPE is null  or b.SHIP_REGION_TYPE ='0')
	) c
		GROUP BY BELONG_PROVINCE 
	) a
	LEFT JOIN dict_data.dict_river_province b ON a.item_name_cn = b.ITEM_NAME_CN_SHORT 
ORDER BY
	b.orders
"""
/*
var shipAreaSql="""
select a.* from (
    select BELONG_PROVINCE as target_name, nvl(count(*), 0)  as target_val,
row_number() over ( ORDER BY  nvl(count(*), 0)  DESC) as row_number
  from ods_hs_share.trans_mgt_company_ship
 where st_year = (select max(st_year) from trans_mgt_company_ship)
   and BELONG_PROVINCE in
       (select ITEM_NAME_CN_SHORT from dict_data.dict_river_province)
       group by BELONG_PROVINCE) a
       left join dict_data.dict_river_province b
       on a.target_name=b.ITEM_NAME_CN_SHORT
       order by b.orders 
       
"""*/

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

if(code=="shipArea"){
    var shipArea = db.ods_data.camel().select(shipAreaSql);
    for(item in shipArea){
        item.put("targetVal",item.get("targetVal")::int);
    }
    return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            result: shipArea
    });
}else if (code=="shipDwt"){
    
    var regNum =  db.ods_data.camel().select(shipDwtSql);

    for (item in regNum){
      item.put("regShipTranNum",item.get("regShipTranNum")::double)
    }
    
return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: regNum
});
}else {
return response.json({
        resultCode: 400,
        resultMsg: "参数传入不正确",
        result: regNum
});
}
