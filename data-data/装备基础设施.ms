{
  "properties" : { },
  "id" : "80b8c4c7b2994f58886362057fbaade2",
  "script" : null,
  "groupId" : "e4f5142bedb24c9bbc2981102d51e07a",
  "name" : "装备基础设施",
  "createTime" : null,
  "updateTime" : 1752819851476,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getEqiutmentNums",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ {
    "name" : "oauth",
    "value" : "bm",
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
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"colName\": \"航标数量\",\n        \"colValue\": 7448\n    }, {\n        \"colName\": \"气象站数量\",\n        \"colValue\": 33\n    }, {\n        \"colName\": \"水位站数量\",\n        \"colValue\": 237\n    }, {\n        \"colName\": \"AIS岸基基站\",\n        \"colValue\": 179\n    }, {\n        \"colName\": \"北斗基准站\",\n        \"colValue\": 106\n    }, {\n        \"colName\": \"水道数\",\n        \"colValue\": 327\n    }, {\n        \"colName\": \"公务船艇趸数量\",\n        \"colValue\": 1068\n    }, {\n        \"colName\": \"水上服务区数量\",\n        \"colValue\": 20\n    }, {\n        \"colName\": \"CCTV数量\",\n        \"colValue\": 1778\n    }, {\n        \"colName\": \"岸电泊位数量\",\n        \"colValue\": 10621\n    }, {\n        \"colName\": \"安全态势感知设备\",\n        \"colValue\": 20\n    }, {\n        \"colName\": \"船岸基高频通信网\",\n        \"colValue\": 51\n    }, {\n        \"colName\": \"传输网络站点\",\n        \"colValue\": 50\n    }, {\n        \"colName\": \"应急通信平台（车）\",\n        \"colValue\": 4\n    }, {\n        \"colName\": \"专用通信站点\",\n        \"colValue\": 476\n    }, {\n        \"colName\": \"VTS雷达站\",\n        \"colValue\": 116\n    }]\n}",
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
          "value" : "航标数量",
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
          "value" : "7448",
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

//航标数量、气象站数量、水位站数量、AIS基站数量、北斗地基增强基站数量、水道数
var deviceNumsSql = """
  SELECT col_name, col_value
  FROM (SELECT navigation
          FROM dm_static_info
         where valid_flag = '1') UNPIVOT(col_value FOR col_name IN(navigation AS
                                                                   '航标数量'))
"""
//航标数量
var hbNumsSql = """
    select count(1)
      from ods_hs_share.hb_hbjcxx
    where scbj = '0'
      and hb_sbzt in ('2', '4')
"""
//气象站数量
var weatherStationNumsSql = """
    select count(1) from SEARCH_DMGD_NWS_OBJECT
"""
//水位站数量
var waterStationNumsSql = """
    select count(1) from SZ_SWZ where scbj = '0' and qyzt = '1'
"""
//AIS基站数量
var aisNumsSql = """
    select count(1) from AIS_STATION_info where del_flag='0'
"""
//北斗地基增强基站数量
var beidouNumsSql = """
    select count(1) from BEIDOU_BASE_STATION
"""
//水道数
var waterLineNumsSql = """
    select count(1) from HD_HDJCXX where scbj = '0'
"""
/*
//公务船艇数量
var shipNumsSql = """
  select sum(INDEX_NUM) from ZT_FULL_VIEW_ORG
    where INDEX_TYPE_CODE = '5'
"""
*/
//公务船艇数量
var shipNumsSql = """
select count(1) from OFFICIAL_BOATS_INFO
"""
//综合服务区数量
var serviceAreaNumsSql = """
  select 
"""
//CCTV数量
var cctvNumsSql = """
  select sum(cctv_num) from dm_data.cctv_organ_num
"""

//岸电泊位数量
var andianNumsSql = """
select sum(berthjbadssnum) + 807 berth_num
                  from (select count(0) as berthjbadssnum,
                               d.PROVINCE_CODE as areaid2
                          from (select a.PROVINCE_CODE
                                  from sub_base_data.adhc_port_new a
                                 inner join sub_base_data.adhc_berth_new b
                                    on a.WHARF_ID = b.WHARF_ID
                                 where a.ISLQ = '1'
                                   and a.ISDEL = '0'
                                   and b.ISDEL = '0'
                                   and b.HC_STATUS = '2'
                                   and b.FACILITY_NUMBE != '0'
                                   and b.BERTH_TYPE != 'B11'
                                   AND b.SH_STATUS = '9' 
                                   and b.sh_code in ('1','9')
                                union all
                                select a.PROVINCE_CODE
                                  from sub_base_data.adhc_port_new a
                                 inner join sub_base_data.adhc_berth_new b
                                    on a.WHARF_ID = b.WHARF_ID
                                 where a.ISLQ = '1'
                                   and a.ISDEL = '0'
                                   and b.ISDEL = '0'
                                   and b.HC_STATUS = '2'
                                   and b.FACILITY_NUMBE = '0'
                                   and b.FLAG_BIT in ('标准设备共用',
                                                      '改造设备共用',
                                                      '简易设备',
                                                      '移动电源')
                                   and b.BERTH_TYPE != 'B11'
                                   AND b.SH_STATUS = '9'
                                   and b.sh_code in ('1','9')) d
                         group by d.PROVINCE_CODE)
"""
//安全态势感知设备
var awarenessNumsSql ="""
 select count(1) from situation_awareness_360
"""
//岸基高频通信网
var hfcommNumsSql = """
 select count(1) from hf_comm_station
"""
//干线传输站点
var trunknetworkNumsSql = """
select count(1) from yangtze_trunk_network
"""
//应急通信平台（车）
var emtelsystemNumsSql = """
select count(1) from emtel_system
"""
//专用通信站点
var networksituaionNumsSql = """
 select sum(nums)
   from (select count(1) nums
           from hf_comm_station
         union all
         select count(1) nums
           from dm_data.VTS_RADAR_STATION where st_year='2025'
         union all
         select count(1) nums
           from AIS_STATION_INFO WHERE del_flag='0'
         union all
         select count(1) nums from BEIDOU_BASE_STATION)
"""

//VTS雷达站
var vtsRadarstationNumsSql = """
select sum(num) from(
select count(1) num from dm_data.VTS_RADAR_STATION  where st_year='2025' union all
select count(1) num from GP_T_ELEMENT_RADAR)
"""

//var deviceNums = async db.dm_data.camel().select(deviceNumsSql);
var hbNums = async db.ods_data.camel().selectInt(hbNumsSql);
var weatherStationNums = async db.ods_data.camel().selectInt(weatherStationNumsSql);
var waterStationNums = async db.ods_data.camel().selectInt(waterStationNumsSql);
var aisNums = async db.ods_data.camel().selectInt(aisNumsSql);
var beidouNums = async db.ods_data.camel().selectInt(beidouNumsSql);
var waterLineNums = async db.ods_data.camel().selectInt(waterLineNumsSql);

var shipNums = async db.ods_data.camel().selectInt(shipNumsSql);
//var serviceAreaNums = async db.dm_data.camel().selectInt(serviceAreaNumsSql);
var cctvNums = async db.dm_data.camel().selectInt(cctvNumsSql);
var andianNums = async db.dm_data.camel().selectInt(andianNumsSql);

var awarenessNums = async db.ods_data.camel().selectInt(awarenessNumsSql);
var hfcommNums = async  db.ods_data.camel().selectInt(hfcommNumsSql);
var trunknetworkNums = async  db.ods_data.camel().selectInt(trunknetworkNumsSql);
var emtelsystemNums = async  db.ods_data.camel().selectInt(emtelsystemNumsSql);
var networksituaionNums = async db.ods_data.camel().selectInt(networksituaionNumsSql);
var vtsRadarstationNums = async db.ods_data.camel().selectInt(vtsRadarstationNumsSql);
/**
for(item in deviceNums.get()){
  item.put("colValue",item.get("colValue")::int);
} */

var list = [];
//list = deviceNums.get();
var hb = {};
hb.put("colName","航标数量");
hb.put("colValue",hbNums.get());
list.add(hb);

var weatherStation = {};
weatherStation.put("colName","气象站数量");
weatherStation.put("colValue",weatherStationNums.get());
list.add(weatherStation);

var waterStation = {};
waterStation.put("colName","水位站数量");
waterStation.put("colValue",waterStationNums.get());
list.add(waterStation);

var ais = {};
ais.put("colName","AIS岸基基站");
ais.put("colValue",aisNums.get());
list.add(ais);

var beidou = {};
beidou.put("colName","北斗基准站");
beidou.put("colValue",beidouNums.get());
list.add(beidou);

var waterLine = {};
waterLine.put("colName","水道数");
waterLine.put("colValue",waterLineNums.get());
list.add(waterLine);

var ship = {};
ship.put("colName","公务船艇趸数量");
ship.put("colValue",shipNums.get());
list.add(ship);
var serviceArea = {};
serviceArea.put("colName","水上服务区数量");
serviceArea.put("colValue",20);
list.add(serviceArea);
var cctv = {};
cctv.put("colName","CCTV数量");
cctv.put("colValue",cctvNums.get());
list.add(cctv);
var andian = {};
andian.put("colName","岸电泊位数量");
andian.put("colValue",andianNums.get());
//andian.put("colValue",10082);
list.add(andian);

var awareness = {};
awareness.put("colName","安全态势感知设备");
awareness.put("colValue",awarenessNums.get());
list.add(awareness);

var hfcomm = {};
hfcomm.put("colName","船岸基高频通信网");
hfcomm.put("colValue",hfcommNums.get());
list.add(hfcomm);

var trunknetwork = {};
trunknetwork.put("colName","传输网络站点");
trunknetwork.put("colValue",trunknetworkNums.get());
list.add(trunknetwork);

var emtelsystem = {};
emtelsystem.put("colName","应急通信平台（车）");
emtelsystem.put("colValue",emtelsystemNums.get());
list.add(emtelsystem);


var networksituaion = {};
networksituaion.put("colName","专用通信站点");
networksituaion.put("colValue",networksituaionNums.get());
list.add(networksituaion); 

var vtsRadarstation = {};
vtsRadarstation.put("colName","VTS雷达站");
vtsRadarstation.put("colValue",vtsRadarstationNums.get());
list.add(vtsRadarstation); 

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: list
});