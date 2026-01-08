{
  "properties" : { },
  "id" : "983931b1f0d141a7a070d96174bd8904",
  "script" : null,
  "groupId" : "e4f5142bedb24c9bbc2981102d51e07a",
  "name" : "高德实况天气接口",
  "createTime" : null,
  "updateTime" : 1763602385532,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/gdLiveWeatherInfo",
  "method" : "GET",
  "parameters" : [ {
    "name" : "portPinyin",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"inCityName\": \"武汉\",\n        \"weather\": \"多云\",\n        \"temperature\": \"29℃\",\n        \"windLevel\": \"东北风≤3级\",\n        \"windDirection\": \"东北风\",\n        \"windPower\": \"≤3级\",\n        \"humidity\": \"74%\",\n        \"reportTime\": \"2025-07-10\",\n        \"portPinyin\": \"WUHAN\",\n        \"orderNo\": 13\n    }]\n}",
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
          "name" : "inCityName",
          "value" : "武汉",
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
          "name" : "weather",
          "value" : "多云",
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
          "name" : "temperature",
          "value" : "29℃",
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
          "name" : "windLevel",
          "value" : "东北风≤3级",
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
          "name" : "windDirection",
          "value" : "东北风",
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
          "name" : "windPower",
          "value" : "≤3级",
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
          "name" : "humidity",
          "value" : "74%",
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
          "name" : "reportTime",
          "value" : "2025-07-10",
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
          "name" : "portPinyin",
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
        }, {
          "name" : "orderNo",
          "value" : "13",
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

var liveWeatherSql = """
    select * from
    (select cf.in_city_name,
       cf.weather,
       cf.temperature||'℃' temperature,
       cf.wind_direction||'风'||cf.wind_power||'级' wind_level,
       cf.wind_direction||'风' wind_direction,
       cf.wind_power||'级' wind_power,
       cf.humidity||'%' humidity,
       to_char(cf.report_time,'yyyy-mm-dd') as report_time,
       b.port_pinyin,
       b.order_no
  from (select t.*,
               row_number() over(partition by t.in_city_name order by t.report_time desc) as rn
          from dim_gd_live_weather_info t) cf
  left join dict_data.D_PORTLIST_COCKPIT b on cf.in_city_name=b.port_name
 where cf.rn = 1 and b.status='1' order by TO_NUMBER(b.order_no)) ss
 where 1=1
 ?{portPinyin,and ss.port_pinyin=#{portPinyin}}
"""


var liveWeather =  db.ods_data.camel().select(liveWeatherSql);

for(item in liveWeather){
//   item.put("temperature",item.get("temperature")::int);
//    item.put("humidity",item.get("humidity")::int);
    item.put("orderNo",item.get("orderNo")::int);
}


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: liveWeather
});