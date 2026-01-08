{
  "properties" : { },
  "id" : "4e0845b7628042ae8ec66d8d5c87ed1e",
  "script" : null,
  "groupId" : "31f4df5e696c4ddf8ab61b4768f1f03a",
  "name" : "港口城市天气",
  "createTime" : null,
  "updateTime" : 1763602411583,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getPortWeather",
  "method" : "GET",
  "parameters" : [ {
    "name" : "portName",
    "value" : "WUHAN",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": {\n        \"weatherType\": \"yin\"\n    }\n}",
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
        "name" : "weatherType",
        "value" : "yin",
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
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;

if(portName == null || portName ==""){
return response.json({
        resultCode: 500,
        resultMsg: "港口城市名称不能为空"
	});
  
}
/*
var weatherSql="""
SELECT
	b.weather_type_En as weather_type ,a.weather_date
FROM
	ods_hs_share.tr_jt_city_weather_day a,
	DICT_DATA.DICT_WEATHER_TYPE b ,
  dict_data.D_CB_PORT_WEATHER_AREA c
WHERE
	a.area_name =c.port_cn_name
	AND a.weather_date = ( SELECT MAX( m.weather_date ) FROM ods_hs_share.tr_jt_city_weather_day m,dict_data.D_CB_PORT_WEATHER_AREA n
   where  upper( REPLACE ( n.port_en_name, ' ', '' ) ) = upper(replace(#{portName},' ','') ) 
	 and 	m.area_name =n.port_cn_name
   and m.weather_date <= (trunc(sysdate)+1-1/86400)
	 ) 
	AND a.weather = b.weather
  AND upper( REPLACE ( c.port_en_name, ' ', '' ) ) = upper(replace(#{portName},' ','') )
"""
var weatherTypeValue="";
var weatherType = db.ods_data.camel().selectOne(weatherSql);
if(weatherType!=null){
weatherTypeValue=weatherType.get("weatherType");
}else{
    var weatherSqlTempArea="""
    select  BEFORE_AREA_CITY,AFTER_AREA_CITY 
     from  dict_data.D_CB_PORT_WEATHER_AREA where upper( REPLACE ( port_en_name, ' ', '' ) ) = upper(replace(#{portName},' ','') )
     
      """;
var weatherTempArea = db.ods_data.camel().selectOne(weatherSqlTempArea);
var beforeArea=weatherTempArea.get("beforeAreaCity");
var afterArea=weatherTempArea.get("afterAreaCity");

    var weatherSqlTempWeather ="""            
            SELECT
            b.weather_type_En as weather_type 
        FROM
            ods_hs_share.tr_jt_city_weather_day a,
            DICT_DATA.DICT_WEATHER_TYPE b 
            where  a.area_name in(#{beforeArea},#{afterArea})
            AND a.weather_date = ( SELECT MAX( weather_date ) FROM ods_hs_share.tr_jt_city_weather_day  where  area_name in(#{beforeArea},#{afterArea})) 
            AND a.weather = b.weather
            and m.weather_date <= (trunc(sysdate)+1-1/86400)
    """;
    var weatherTempType = db.ods_data.camel().selectOne(weatherSqlTempWeather);
    if (weatherTempType!=null){
      weatherTypeValue=weatherTempType.get("weatherType");
    }
    
}
*/
var weatherSql="""
SELECT
	b.weather_type_En as weather_type ,a.report_time
FROM
	ods_hs_share.dim_gd_live_weather_info a,
	DICT_DATA.DICT_WEATHER_TYPE b ,
  dict_data.D_CB_PORT_WEATHER_AREA c
WHERE
	a.in_city_name =c.port_cn_name
	AND a.report_time = ( SELECT MAX( m.report_time ) FROM ods_hs_share.dim_gd_live_weather_info m,dict_data.D_CB_PORT_WEATHER_AREA n
   where  upper( REPLACE ( n.port_en_name, ' ', '' ) ) = upper(replace(#{portName},' ','') ) 
	 and 	m.in_city_name =n.port_cn_name
   and m.report_time <= (trunc(sysdate)+1-1/86400)
	 ) 
	AND a.weather = b.weather
  AND upper( REPLACE ( c.port_en_name, ' ', '' ) ) = upper(replace(#{portName},' ','') )
"""
var weatherTypeValue="";
var weatherType = db.ods_data.camel().selectOne(weatherSql);
if(weatherType!=null){
weatherTypeValue=weatherType.get("weatherType");
}else{
    var weatherSqlTempArea="""
    select  BEFORE_AREA_CITY,AFTER_AREA_CITY 
     from  dict_data.D_CB_PORT_WEATHER_AREA where upper( REPLACE ( port_en_name, ' ', '' ) ) = upper(replace(#{portName},' ','') )
     
      """;
var weatherTempArea = db.ods_data.camel().selectOne(weatherSqlTempArea);
var beforeArea=weatherTempArea.get("beforeAreaCity");
var afterArea=weatherTempArea.get("afterAreaCity");

    var weatherSqlTempWeather ="""            
            SELECT
            b.weather_type_En as weather_type 
        FROM
            ods_hs_share.tr_jt_city_weather_day a,
            DICT_DATA.DICT_WEATHER_TYPE b 
            where  a.in_city_name in(#{beforeArea},#{afterArea})
            AND a.report_time = ( SELECT MAX( report_time ) FROM ods_hs_share.dim_gd_live_weather_info  where  in_city_name in(#{beforeArea},#{afterArea})) 
            AND a.weather = b.weather
            and a.report_time <= (trunc(sysdate)+1-1/86400)
    """;
    var weatherTempType = db.ods_data.camel().selectOne(weatherSqlTempWeather);
    if (weatherTempType!=null){
      weatherTypeValue=weatherTempType.get("weatherType");
    }
    
}

if (weatherTypeValue==null||weatherTypeValue==""){
  weatherTypeValue="qing"
}


    

var reMap={};
reMap.put("weatherType",weatherTypeValue);

return response.json({
        resultCode: 200,
        resultMsg: reMap
	});