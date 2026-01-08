{
  "properties" : { },
  "id" : "42acc0f6096b4fc48ed470e2f71acb7d",
  "script" : null,
  "groupId" : "ee26923e30094e23bd55337d62b5f351",
  "name" : "船舶数量统计",
  "createTime" : null,
  "updateTime" : 1740968831612,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getShipNums",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"jhly\": 12557,\n        \"chineseShip\": 7026,\n        \"foreignShip\": 5531,\n        \"gzly\": 46590,\n        \"tjTime\": 2024\n    }\n}",
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
        "name" : "jhly",
        "value" : "12557",
        "description" : "",
        "required" : false,
        "dataType" : "Object",
        "type" : null,
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "chineseShip",
        "value" : "7026",
        "description" : "",
        "required" : false,
        "dataType" : "Object",
        "type" : null,
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "foreignShip",
        "value" : "5531",
        "description" : "",
        "required" : false,
        "dataType" : "Object",
        "type" : null,
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "gzly",
        "value" : "46590",
        "description" : "",
        "required" : false,
        "dataType" : "Object",
        "type" : null,
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "tjTime",
        "value" : "2024",
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
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;


//船舶总数（参与江海联运）
var jhlySql = """
    select count(1)
        from sub_biz_data.SHP_BASIC_REPORT_INFO_OD
        where year = (select max(year) from sub_biz_data.SHP_BASIC_REPORT_INFO_OD)
            and valid = '1'
            and ship_region_type = '1'
"""
//中国籍船舶总数（参与江海联运）
var chineseShipSql = """
    select count(1)
        from sub_biz_data.SHP_BASIC_REPORT_INFO_OD
        where year = (select max(year) from sub_biz_data.SHP_BASIC_REPORT_INFO_OD)
            and valid = '1'
            and ship_region_type = '1'
            and nation_code in ('125', '275', '625')
"""
//外国籍船舶总数（参与江海联运）
var foreignShipSql = """
    select count(1)
        from sub_biz_data.SHP_BASIC_REPORT_INFO_OD
        where year = (select max(year) from sub_biz_data.SHP_BASIC_REPORT_INFO_OD)
            and valid = '1'
            and ship_region_type = '1'
            and nation_code not in ('125', '275', '625')
"""
//船舶总数（参与干支联运）
var gzlySql = """
    select target_val
        from dm_data.sts_basic_info
        where sts_code = '70'
            and target_class = to_char(trunc(sysdate, 'year') - 1, 'yyyy')
"""
//统计时间
var tjTimeSql = """
    select to_char(sysdate,'yyyy')-1 from dual
"""

var jhly = async db.dm_data.camel().selectInt(jhlySql);
var chineseShip = async db.dm_data.camel().selectInt(chineseShipSql);
var foreignShip = async db.dm_data.camel().selectInt(foreignShipSql);
var gzly = async db.dm_data.camel().selectInt(gzlySql);
var tjTime = async db.dm_data.camel().selectInt(tjTimeSql);

var res = {}
res.put("jhly",jhly.get());
res.put("chineseShip",chineseShip.get());
res.put("foreignShip",foreignShip.get());
res.put("gzly",gzly.get());
res.put("tjTime", tjTime.get());


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
});