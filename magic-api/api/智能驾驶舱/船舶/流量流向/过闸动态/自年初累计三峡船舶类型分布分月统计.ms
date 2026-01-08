{
  "properties" : { },
  "id" : "39a547f214a1444cad27f048b427f95b",
  "script" : null,
  "groupId" : "c32f4ba9bcd0426d8f54812d666acb18",
  "name" : "自年初累计三峡船舶类型分布分月统计",
  "createTime" : null,
  "updateTime" : 1705888438164,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getSxShiptypeByMonth",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"whp\": [],\n        \"gsh\": [],\n        \"jzx\": [],\n        \"kcl\": [],\n        \"qt\": []\n    }\n}",
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
        "name" : "whp",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : "",
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "gsh",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : "",
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "jzx",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : "",
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "kcl",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : "",
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "qt",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
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

//危险品
var whpSql = """
  select to_char(a.notice_gotime,'yyyy-MM') ym, count(1) nums
    from ods_hs_share.changhang_shipapply a 
    left join ods_hs_share.c_cb_ship_data b
        on a.shipidentification = b.ship_id
    left join dict_data.ch_code c
        on b.ship_type_code = c.code
    where c.code_type = '03'
        and b.status_flag = '1'
        and b.delete_flag = '0'
        and c.category = '危化品'
        and a.notice_gotime >= trunc(sysdate, 'YYYY')
    group by to_char(a.notice_gotime, 'yyyy-MM')
    order by ym
"""
//干散货
var gshSql = """
  select to_char(a.notice_gotime,'yyyy-MM') ym, count(1) nums
    from ods_hs_share.changhang_shipapply a 
    left join ods_hs_share.c_cb_ship_data b
        on a.shipidentification = b.ship_id
    left join dict_data.ch_code c
        on b.ship_type_code = c.code
    where c.code_type = '03'
        and b.status_flag = '1'
        and b.delete_flag = '0'
        and c.category = '干散货'
        and a.notice_gotime >= trunc(sysdate, 'YYYY')
    group by to_char(a.notice_gotime, 'yyyy-MM')
    order by ym
"""
//集装箱
var jzxSql = """
  select to_char(a.notice_gotime,'yyyy-MM') ym, count(1) nums
    from ods_hs_share.changhang_shipapply a 
    left join ods_hs_share.c_cb_ship_data b
        on a.shipidentification = b.ship_id
    left join dict_data.ch_code c
        on b.ship_type_code = c.code
    where c.code_type = '03'
        and b.status_flag = '1'
        and b.delete_flag = '0'
        and c.category = '集装箱'
        and a.notice_gotime >= trunc(sysdate, 'YYYY')
    group by to_char(a.notice_gotime, 'yyyy-MM')
    order by ym
"""
//客船类
var kclSql = """
  select to_char(a.notice_gotime,'yyyy-MM') ym, count(1) nums
    from ods_hs_share.changhang_shipapply a 
    left join ods_hs_share.c_cb_ship_data b
        on a.shipidentification = b.ship_id
    left join dict_data.ch_code c
        on b.ship_type_code = c.code
    where c.code_type = '03'
        and b.status_flag = '1'
        and b.delete_flag = '0'
        and c.category = '客船类'
        and a.notice_gotime >= trunc(sysdate, 'YYYY')
    group by to_char(a.notice_gotime, 'yyyy-MM')
    order by ym
"""
//其他
var qtSql = """
  select to_char(a.notice_gotime,'yyyy-MM') ym, count(1) nums
    from ods_hs_share.changhang_shipapply a 
    left join ods_hs_share.c_cb_ship_data b
        on a.shipidentification = b.ship_id
    left join dict_data.ch_code c
        on b.ship_type_code = c.code
    where c.code_type = '03'
        and b.status_flag = '1'
        and b.delete_flag = '0'
        and c.category not in ('干散货','危险品','客船类','集装箱')
        and a.notice_gotime >= trunc(sysdate, 'YYYY')
    group by to_char(a.notice_gotime, 'yyyy-MM')
    order by ym
"""

var whp = async db.ods_data.camel().select(whpSql);
var gsh = async db.ods_data.camel().select(gshSql);
var jzx = async db.ods_data.camel().select(jzxSql);
var kcl = async db.ods_data.camel().select(kclSql);
var qt = async db.ods_data.camel().select(qtSql);

for(item in whp.get()){
  item.put("nums",item.get("nums")::int)
}
for(item in gsh.get()){
  item.put("nums",item.get("nums")::int)
}
for(item in jzx.get()){
  item.put("nums",item.get("nums")::int)
}
for(item in kcl.get()){
  item.put("nums",item.get("nums")::int)
}
for(item in qt.get()){
  item.put("nums",item.get("nums")::int)
}

var res = {};
res.put("whp", whp.get());
res.put("gsh", gsh.get());
res.put("jzx", jzx.get());
res.put("kcl", kcl.get());
res.put("qt", qt.get());


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
});