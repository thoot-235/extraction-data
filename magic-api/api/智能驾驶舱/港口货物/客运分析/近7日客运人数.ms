{
  "properties" : { },
  "id" : "925dac45257048d0b81f6a4432b0f148",
  "script" : null,
  "groupId" : "6865d1fb6d054e5390cbaf94d4774049",
  "name" : "近7日客运人数",
  "createTime" : null,
  "updateTime" : 1707095436688,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getSevenDaysPassenger",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"dd\": \"01-09\",\n        \"num\": 115\n    }, {\n        \"dd\": \"01-10\",\n        \"num\": 39\n    }, {\n        \"dd\": \"01-11\",\n        \"num\": 59\n    }, {\n        \"dd\": \"01-12\",\n        \"num\": 57\n    }, {\n        \"dd\": \"01-13\",\n        \"num\": 78\n    }, {\n        \"dd\": \"01-14\",\n        \"num\": 0\n    }, {\n        \"dd\": \"01-15\",\n        \"num\": 16\n    }]\n}",
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
          "name" : "dd",
          "value" : "01-09",
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
          "name" : "num",
          "value" : "115",
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

//重点港口的
/**
var sql = """
  select substr(a.dd,6,9) as dd, nvl(b.num, 0) num
    from (SELECT to_char(TRUNC(SYSDATE - 7) - 1 + ROWNUM, 'yyyy-mm-dd') dd
            FROM DUAL
          CONNECT BY ROWNUM <= 7) a
    left join (select substr(SALETIME, 1, 10) dd, count(1) num
                from dict_data.d_cb_port_imp          d,
                      bds_biz_data.T_SX_TICKET_SELLING s
                WHERE d.PORT_CN_NAME = s.FROMDOCKNAME
                  and substr(SALETIME, 1, 10) <=
                      to_char(sysdate, 'yyyy-mm-dd')
                  and substr(SALETIME, 1, 10) >
                      to_char(sysdate - 7, 'yyyy-mm-dd')
                group by substr(SALETIME, 1, 10)) b
      on a.dd = b.dd
  order by a.dd
"""
 */
//不区分港口
var sql = """
  select substr(a.dd, 6, 9) as dd, nvl(b.num, 0) num
    from (SELECT to_char(TRUNC(SYSDATE - 7) - 1 + ROWNUM, 'yyyy-mm-dd') dd
            FROM DUAL
          CONNECT BY ROWNUM <= 7) a
    left join (select substr(DEPARTTIME, 1, 10) dd, count(1) num
                from ods_hs_share.T_SX_TICKET_SELLING s
                WHERE substr(DEPARTTIME, 1, 10) <=
                      to_char(sysdate, 'yyyy-mm-dd')
                  and substr(DEPARTTIME, 1, 10) >=
                      to_char(sysdate - 7, 'yyyy-mm-dd')
                group by substr(DEPARTTIME, 1, 10)) b
      on a.dd = b.dd
  order by a.dd
"""

var shipNums =  db.ods_data.camel().select(sql);
for(item in shipNums){
item.put("num",item.get("num")::int);
}

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: shipNums
});