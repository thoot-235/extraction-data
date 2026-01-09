{
  "properties" : { },
  "id" : "6aed5f21be78446f9e22bc1c8f6e20a0",
  "script" : null,
  "groupId" : "d451aee9c07b41f0a9f78bf1364eae04",
  "name" : "岸电设施设备",
  "createTime" : null,
  "updateTime" : 1736150490377,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/shorePowerEqu",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"result\": [{\n        \"label\": \"岸电码头\",\n        \"value\": 4730\n    }, {\n        \"label\": \"岸电泊位\",\n        \"value\": 10462\n    }, {\n        \"label\": \"岸电设施\",\n        \"value\": 9614\n    }, {\n        \"label\": \"干线完成受电改造船舶\",\n        \"value\": 17406\n    }],\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\"\n}",
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
          "value" : "4730",
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

var sql = """
select col_name label, col_value value
  from (select nvl(wharf_num, 0) wharf_num,
               nvl(berth_num, 0) berth_num,
               nvl(sd_num, 0) sd_num,
               nvl(ad_num, 0) ad_num
          from (select sum(wharfnum) + 403 wharf_num
                  from (select count(0) as wharfnum, z.areaid2
                          from (select distinct a.WHARF_NAME,
                                                a.PROVINCE_CODE as areaid2
                                  from ods_hs_share.ADHC_V2_PORT a
                                 WHERE EXISTS (select *
                                          from ods_hs_share.ADHC_V2_BERTH b
                                         WHERE a.WHARF_ID = b.WHARF_ID
                                           and b.ISDEL = '0'
                                           and b.HC_STATUS = '2'
                                           and b.BERTH_TYPE != 'B11'
                                           AND b.SH_STATUS = '9')
                                   and a.ISLQ = '1'
                                   and a.ISDEL = '0') z
                         group by z.areaid2)) a,
               (select sum(berthjbadssnum) + 807 berth_num
                  from (select count(0) as berthjbadssnum,
                               d.PROVINCE_CODE as areaid2
                          from (select a.PROVINCE_CODE
                                  from ods_hs_share.ADHC_V2_PORT a
                                 inner join ods_hs_share.ADHC_V2_BERTH b
                                    on a.WHARF_ID = b.WHARF_ID
                                 where a.ISLQ = '1'
                                   and a.ISDEL = '0'
                                   and b.ISDEL = '0'
                                   and b.HC_STATUS = '2'
                                   and b.FACILITY_NUMBE != '0'
                                   and b.BERTH_TYPE != 'B11'
                                   AND b.SH_STATUS = '9'
                                union all
                                select a.PROVINCE_CODE
                                  from ods_hs_share.ADHC_V2_PORT a
                                 inner join ods_hs_share.ADHC_V2_BERTH b
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
                                   AND b.SH_STATUS = '9') d
                         group by d.PROVINCE_CODE)) b,
               
               (select sum(facsnum) + 666 sd_num
                  from (select sum(b.FACILITY_NUMBE) as facsnum,
                               a.PROVINCE_CODE as areaid2
                          from ods_hs_share.ADHC_V2_PORT a
                         inner join ods_hs_share.ADHC_V2_BERTH b
                            on a.WHARF_ID = b.WHARF_ID
                         where a.ISLQ = '1'
                           and a.ISDEL = '0'
                           and b.ISDEL = '0'
                           and b.HC_STATUS = '2'
                           and b.BERTH_TYPE != 'B11'
                           AND b.SH_STATUS = '9'
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

var ship = db.ods_data.camel().select(sql);
for(item in ship){
  item.put("value",item.get("value")::int);
}

//临时统计数据，后面需要替换
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
        "label": "完成受电改造船舶",
        "value": 13456
    }]

return response.json({   
       result: ship,
      // result: shipTemp,
       resultCode: 200,
       resultMsg: "查询成功"
});