{
  "properties" : { },
  "id" : "4d775bab8f9148c2bf3fee13c23cc3f9",
  "script" : null,
  "groupId" : "6865d1fb6d054e5390cbaf94d4774049",
  "name" : "近7日营业额",
  "createTime" : null,
  "updateTime" : 1764839392494,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getSevenDaysTurnover",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"dd\": \"12-13\",\n        \"num\": 0.0\n    }, {\n        \"dd\": \"12-14\",\n        \"num\": 0.8\n    }, {\n        \"dd\": \"12-15\",\n        \"num\": 0.01\n    }, {\n        \"dd\": \"12-16\",\n        \"num\": 0.67\n    }, {\n        \"dd\": \"12-17\",\n        \"num\": 1.13\n    }, {\n        \"dd\": \"12-18\",\n        \"num\": 1.71\n    }, {\n        \"dd\": \"12-19\",\n        \"num\": 2.24\n    }]\n}",
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
          "value" : "12-13",
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
          "value" : "0.0",
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
  select substr(a.dd, 6, 9) as dd, round(nvl(b.num, 0)/10000,2) num
    from (SELECT to_char(TRUNC(SYSDATE - 7) - 1 + ROWNUM, 'yyyy-mm-dd') dd
            FROM DUAL
          CONNECT BY ROWNUM <= 7) a
    left join (select substr(SALETIME, 1, 10) dd, sum(nvl(s.TICKETAMT, 0)) num
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
  select substr(a.dd, 6, 9) as dd, round(nvl(b.num, 0) / 10000, 2) num
    from (SELECT to_char(TRUNC(SYSDATE - 7) - 1 + ROWNUM, 'yyyy-mm-dd') dd
            FROM DUAL
          CONNECT BY ROWNUM <= 7) a
    left join (select substr(SALETIME, 1, 10) dd, sum(nvl(s.TICKETAMT, 0)) num
                from ods_hs_share.T_SX_TICKET_SELLING s
                WHERE substr(SALETIME, 1, 10) <=
                      to_char(sysdate, 'yyyy-mm-dd')
                  and substr(SALETIME, 1, 10) >
                      to_char(sysdate - 7, 'yyyy-mm-dd')
                group by substr(SALETIME, 1, 10)) b
      on a.dd = b.dd
  order by a.dd
"""

var shipNums =  db.ods_data.camel().select(sql);
for(item in shipNums){
item.put("num",item.get("num")::double);
}

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: shipNums
});