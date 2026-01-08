{
  "properties" : { },
  "id" : "75f36a5abe0d448ba59583214c881446",
  "script" : null,
  "groupId" : "6865d1fb6d054e5390cbaf94d4774049",
  "name" : "客运航线",
  "createTime" : null,
  "updateTime" : 1722301097515,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getPassengerLine",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"sailLine\": \"宜昌-重庆\",\n        \"fromdockname\": \"宜昌\",\n        \"todockname\": \"重庆\",\n        \"personNum\": 14.54\n    }, {\n        \"sailLine\": \"重庆-宜昌\",\n        \"fromdockname\": \"重庆\",\n        \"todockname\": \"宜昌\",\n        \"personNum\": 12.38\n    }, {\n        \"sailLine\": \"奉节-宜昌\",\n        \"fromdockname\": \"奉节\",\n        \"todockname\": \"宜昌\",\n        \"personNum\": 6.03\n    }, {\n        \"sailLine\": \"宜昌-奉节\",\n        \"fromdockname\": \"宜昌\",\n        \"todockname\": \"奉节\",\n        \"personNum\": 5.03\n    }, {\n        \"sailLine\": \"宜昌-万州\",\n        \"fromdockname\": \"宜昌\",\n        \"todockname\": \"万州\",\n        \"personNum\": 4.02\n    }, {\n        \"sailLine\": \"万州-宜昌\",\n        \"fromdockname\": \"万州\",\n        \"todockname\": \"宜昌\",\n        \"personNum\": 4.01\n    }, {\n        \"sailLine\": \"丰都-宜昌\",\n        \"fromdockname\": \"丰都\",\n        \"todockname\": \"宜昌\",\n        \"personNum\": 3.07\n    }, {\n        \"sailLine\": \"奉节-巫山\",\n        \"fromdockname\": \"奉节\",\n        \"todockname\": \"巫山\",\n        \"personNum\": 0.91\n    }, {\n        \"sailLine\": \"宜昌-丰都\",\n        \"fromdockname\": \"宜昌\",\n        \"todockname\": \"丰都\",\n        \"personNum\": 0.68\n    }, {\n        \"sailLine\": \"巫山-奉节\",\n        \"fromdockname\": \"巫山\",\n        \"todockname\": \"奉节\",\n        \"personNum\": 0.66\n    }]\n}",
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
          "name" : "sailLine",
          "value" : "宜昌-重庆",
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
          "name" : "fromdockname",
          "value" : "宜昌",
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
          "name" : "todockname",
          "value" : "重庆",
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
          "name" : "personNum",
          "value" : "14.54",
          "description" : "",
          "required" : false,
          "dataType" : "Double",
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

//近一年客运航线的客运量TOP10 万人次
var personSql = """
select * from (
  select fromdockname || '-' || todockname sail_line,
        fromdockname,
        todockname,
        round(count(1)/10000,2) person_num
    from ods_hs_share.T_SX_TICKET_SELLING s
  WHERE substr(DEPARTTIME, 1, 10) < to_char(sysdate, 'yyyy-mm-dd')
    and substr(DEPARTTIME, 1, 10) >= to_char(add_months(sysdate,-12), 'yyyy-mm-dd')
  group by (fromdockname || '-' || todockname),fromdockname,todockname
  order by person_num desc)
  where rownum <=10
"""
//近一年客运航线的营业额TOP10 万元
var moneySql = """
select * from(
  select fromdockname || '-' || todockname sail_line,
        round(sum(nvl(s.TICKETAMT, 0))/10000,2) money_num
    from ods_hs_share.T_SX_TICKET_SELLING s
  WHERE substr(DEPARTTIME, 1, 10) < to_char(sysdate, 'yyyy-mm-dd')
    and substr(DEPARTTIME, 1, 10) >= to_char(add_months(sysdate,-12), 'yyyy-mm-dd')
  group by (fromdockname || '-' || todockname)
  order by money_num desc)
  where rownum <=10
"""

var person = async db.ods_data.camel().select(personSql);
//var money = async db.biz_data.camel().select(moneySql);
for(item in person.get()){
  item.put("personNum",item.get("personNum")::double);
}
//for(item in money.get()){
//  item.put("moneyNum",item.get("moneyNum")::double);
//}
//var res = {};
//res.put("personNum",person.get());
//res.put("moneyNum",money.get());

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: person.get()
});