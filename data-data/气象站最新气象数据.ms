{
  "properties" : { },
  "id" : "71b34b724b5340fd892e1378c574f134",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "气象站最新气象数据",
  "createTime" : null,
  "updateTime" : 1760954233674,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getWeaterStationLatestMeteorology",
  "method" : "GET",
  "parameters" : [ {
    "name" : "stationname",
    "value" : "镇江113至1浮南岸",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"aveWd2min\": \"19(°)\",\n        \"aveWs2min\": \"5.4(m/s)\",\n        \"aveWd10min\": \"19(°)\",\n        \"aveWs10min\": \"5.5(m/s)\",\n        \"mostWs\": \"8(m/s)\",\n        \"mostWsDate\": \"2022-12-16 15:19:00\",\n        \"nstWd\": \"19(°)\",\n        \"instWs\": \"7.6(m/s)\",\n        \"bucketRainCount\": \"0(mm)\",\n        \"temp\": \"5.1(℃)\",\n        \"mostTemp\": \"6.5(℃)\",\n        \"mostTempDate\": \"2022-12-16 15:05:00\",\n        \"eastTemp\": \"5.1(℃)\",\n        \"leastTempDate\": \"2022-12-16 15:58:00\",\n        \"relaHumi\": \"85(%)\",\n        \"eastRelaHumi\": \"81(%)\",\n        \"leastRelaHumiDate\": \"2022-12-16 15:19:00\",\n        \"vaporPres\": \"7.5(hPa)\",\n        \"observationDataDate\": \"2022-12-16 16:00:00\",\n        \"stationname\": \"江阴61浮南岸\"\n    }\n}",
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
      "name" : "data",
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
        "name" : "aveWd2min",
        "value" : "19(°)",
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
        "name" : "aveWs2min",
        "value" : "5.4(m/s)",
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
        "name" : "aveWd10min",
        "value" : "19(°)",
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
        "name" : "aveWs10min",
        "value" : "5.5(m/s)",
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
        "name" : "mostWs",
        "value" : "8(m/s)",
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
        "name" : "mostWsDate",
        "value" : "2022-12-16 15:19:00",
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
        "name" : "nstWd",
        "value" : "19(°)",
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
        "name" : "instWs",
        "value" : "7.6(m/s)",
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
        "name" : "bucketRainCount",
        "value" : "0(mm)",
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
        "name" : "temp",
        "value" : "5.1(℃)",
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
        "name" : "mostTemp",
        "value" : "6.5(℃)",
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
        "name" : "mostTempDate",
        "value" : "2022-12-16 15:05:00",
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
        "name" : "eastTemp",
        "value" : "5.1(℃)",
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
        "name" : "leastTempDate",
        "value" : "2022-12-16 15:58:00",
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
        "name" : "relaHumi",
        "value" : "85(%)",
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
        "name" : "eastRelaHumi",
        "value" : "81(%)",
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
        "name" : "leastRelaHumiDate",
        "value" : "2022-12-16 15:19:00",
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
        "name" : "vaporPres",
        "value" : "7.5(hPa)",
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
        "name" : "observationDataDate",
        "value" : "2022-12-16 16:00:00",
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
        "name" : "stationname",
        "value" : "江阴61浮南岸",
        "description" : "",
        "required" : false,
        "dataType" : "String",
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
import response;
var sql="""
select   a.* from (
select
       AVE_WD_2MIN||'(°)' AVE_WD_2MIN, --2分钟平均风向(°)
       AVE_WS_2MIN||'(m/s)' AVE_WS_2MIN, --2分钟平均风速(m/s)
       AVE_WD_10MIN||'(°)' AVE_WD_10MIN, --10分钟平均风向(°)
       AVE_WS_10MIN||'(m/s)' AVE_WS_10MIN, --10分钟平均风速(m/s)
       MOST_WS||'(m/s)' MOST_WS, --最大风速(m/s)
       MOST_WS_DATE, --最大风速出现时间
       INST_WD||'(°)' NST_WD, --瞬时风向(°)
       INST_WS||'(m/s)' INST_WS, --瞬时风速(m/s)
       BUCKET_RAIN_COUNT||'(mm)' BUCKET_RAIN_COUNT, --分钟降水量(mm)
       TEMP||'(℃)' TEMP, --气温(℃)
       MOST_TEMP||'(℃)' MOST_TEMP, --最高气温(℃)
       MOST_TEMP_DATE, --最高气温出现时间
       LEAST_TEMP||'(℃)' EAST_TEMP, --最低气温(℃)
       LEAST_TEMP_DATE, --最低气温出现时间
       RELA_HUMI||'(%)' RELA_HUMI, --相对湿度(%)
       LEAST_RELA_HUMI||'(%)' EAST_RELA_HUMI, --最小相对湿度(%)
       LEAST_RELA_HUMI_DATE, --最小相对湿度出现时间
       VAPOR_PRES||'(hPa)'  VAPOR_PRES, --水汽压(hPa)
       OBSERVATION_DATA_DATE,
       STATIONNAME
  from ods_hs_share.DMGD_NWS_OBJECT
  where STATIONNAME=#{stationname}
  order by OBSERVATION_DATA_DATE desc
) a where rownum=1

"""
var ret=db.hs_share.camel().selectOne(sql);
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: ret 

});
