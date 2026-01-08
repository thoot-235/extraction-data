{
  "properties" : { },
  "id" : "a992027da48a4405ac1c990706f26a41",
  "script" : null,
  "groupId" : "d451aee9c07b41f0a9f78bf1364eae04",
  "name" : "岸电及污染物设备",
  "createTime" : null,
  "updateTime" : 1749090771866,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/shorePowerAndPollutEqu",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"result\": [{\n        \"label\": \"岸电码头\",\n        \"value\": 4770\n    }, {\n        \"label\": \"岸电泊位\",\n        \"value\": 10596\n    }, {\n        \"label\": \"岸电设施\",\n        \"value\": 9719\n    }, {\n        \"label\": \"经济带完成受电改造船舶\",\n        \"value\": 17757\n    }, {\n        \"label\": \"水污染物接收码头\",\n        \"value\": 518\n    }, {\n        \"label\": \"水污染物作业设备\",\n        \"value\": 7981\n    }, {\n        \"label\": \"污染物处理公司\",\n        \"value\": 9518\n    }, {\n        \"label\": \"水污染物接收船舶\",\n        \"value\": 838\n    }],\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\"\n}",
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
          "name" : "label",
          "value" : "岸电码头",
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
          "name" : "value",
          "value" : "4770",
          "description" : "",
          "required" : false,
          "dataType" : "Integer",
          "type" : null,
          "defaultValue" : "",
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        } ]
      } ]
    }, {
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
    } ]
  }
}
================================
import response;


var shipAll=[];
var sqlPower = """
select col_name label, col_value value
  from (select nvl(wharf_num, 0) wharf_num,
               nvl(berth_num, 0) berth_num,
               nvl(sd_num, 0) sd_num,
               nvl(ad_num, 0) ad_num
          from (select sum(wharfnum) + 403 wharf_num
                  from (select count(0) as wharfnum, z.areaid2
                          from (select distinct a.WHARF_NAME,
                                                a.PROVINCE_CODE as areaid2
                                  from sub_base_data.adhc_port_new a
                                 WHERE EXISTS (select *
                                          from sub_base_data.ADHC_BERTH_NEW b
                                         WHERE a.WHARF_ID = b.WHARF_ID
                                           and b.ISDEL = '0'
                                           and b.HC_STATUS = '2'
                                           and b.BERTH_TYPE != 'B11'
                                           AND b.SH_STATUS = '9'
                                           and b.sh_code in ('1','9'))
                                   and a.ISLQ = '1'
                                   and a.ISDEL = '0') z
                         group by z.areaid2)) a,
               (select sum(berthjbadssnum) + 807 berth_num
                  from (select count(0) as berthjbadssnum,
                               d.PROVINCE_CODE as areaid2
                          from (select a.PROVINCE_CODE
                                  from sub_base_data.adhc_port_new a
                                 inner join sub_base_data.ADHC_BERTH_NEW b
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
                                 inner join sub_base_data.ADHC_BERTH_NEW b
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
                         group by d.PROVINCE_CODE)) b,
               
               (select sum(facsnum) + 666 sd_num
                  from (select sum(b.FACILITY_NUMBE) as facsnum,
                               a.PROVINCE_CODE as areaid2
                          from sub_base_data.adhc_port_new a
                         inner join sub_base_data.ADHC_BERTH_NEW b
                            on a.WHARF_ID = b.WHARF_ID
                         where a.ISLQ = '1'
                           and a.ISDEL = '0'
                           and b.ISDEL = '0'
                           and b.HC_STATUS = '2'
                           and b.BERTH_TYPE != 'B11'
                           AND b.SH_STATUS = '9'
                           and b.sh_code in ('1','9')
                         group by a.PROVINCE_CODE)) c,
               (select sum(COMPLETE_BUILD_SHIP_NUM) ad_num from sub_base_Data.STS_RETROFIT_PROVINCE_CITY) d) unpivot(col_value for col_name in(wharf_num as
                                                                                       '岸电码头',
                                                                                       berth_num as
                                                                                       '岸电泊位',
                                                                                       sd_num as
                                                                                       '岸电设施',
                                                                                       ad_num as
                                                                                       '经济带完成受电改造船舶'))
"""

var shipPower = db.ods_data.camel().select(sqlPower);
for(item in shipPower){
  item.put("value",item.get("value")::int);
  shipAll.add(item);
}

var sqlPollut = """
  SELECT col_name label, col_value "value"
  FROM (select sum(to_number(DEPART_NO)) AS depart_no,
               sum(to_number(DEVICE_NUM)) AS device_name,
               sum(to_number(COM_NO)) AS com_no,
               sum(to_number(RECEIVE_SHIP_ID)) AS receive_ship_id
          from (select DEVICE_NUM, DEPART_NO, COM_NO, RECEIVE_SHIP_ID
                  from dm_data.t_water_device
                 where count_time =
                       (select max(count_time) from dm_data.t_water_device)
                       and province in (select  item_name_cn  from  DICT_DATA.DICT_RIVER_PROVINCE)
                                         )) UNPIVOT(col_value FOR col_name IN(depart_no AS
                                                                                                                '水污染物接收码头',
                                                                                                                device_name AS
                                                                                                                '水污染物作业设备',
                                                                                                                com_no AS
                                                                                                                '污染物处理公司',
                                                                                                                receive_ship_id AS
                                                                                                                '水污染物接收船舶'))
"""
var shipTemp=[{
        "label": "岸电码头",
        "value": 4401
    }, {
        "label": "岸电泊位",
        "value": 10082
    }, {
        "label": "岸电设施",
        "value": 9279
    }, {
        "label": "干线完成受电改造船舶",
        "value": 13456
    }]
var shipPollut = db.ods_data.camel().select(sqlPollut);
for(item in shipPollut){
  item.put("value",item.get("value")::int);
    shipAll.add(item);
    //shipTemp.add(item);
}

return response.json({   
       result: shipAll,
       //result: shipTemp,
       resultCode: 200,
       resultMsg: "查询成功"
});