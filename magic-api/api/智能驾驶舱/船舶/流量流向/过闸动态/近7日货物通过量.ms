{
  "properties" : { },
  "id" : "46ba4167e37a4f539388025a0c02f7df",
  "script" : null,
  "groupId" : "c32f4ba9bcd0426d8f54812d666acb18",
  "name" : "近7日货物通过量",
  "createTime" : null,
  "updateTime" : 1705888407778,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getSevenCargo",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"days\": \"01-01\",\n        \"nums\": 100.56\n    }, {\n        \"days\": \"01-02\",\n        \"nums\": 92.89\n    }, {\n        \"days\": \"01-03\",\n        \"nums\": 88.72\n    }, {\n        \"days\": \"01-04\",\n        \"nums\": 91.6\n    }]\n}",
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
      "dataType" : "Double",
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
          "name" : "days",
          "value" : "01-01",
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
          "name" : "nums",
          "value" : "100.56",
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
import 'java.text.DecimalFormat' ;

//货物通过量
var cargoNumsSql_back = """
  select statmonth || '-' || statday days, nums
  from (select b.statyear,
               b.statmonth,
               b.statday,
               to_char(sum(b.carry_weight) / 10000, 'FM9999999990.00') nums
          from (select to_char(sysdate - level , 'dd') days
                  from dual
                connect by level <= 7) a
          left join ods_hs_share.changhang_passstat b
            on b.statday = a.days
         where b.statyear = extract(YEAR from sysdate)
           and b.statmonth = extract(month from sysdate)
         group by b.statyear, b.statmonth, b.statday)
 order by days
"""

var cargoNumsSql= """
   select statmonth || '-' || statday days, nums
  from (select b.statyear,
               b.statmonth,
               b.statday,
               to_char(sum(b.carry_weight) / 10000, 'FM9999999990.00') nums
          from ( select trunc(sysdate) - level as days
                      from dual
                    connect by level <= 7) a
          left join ods_hs_share.changhang_passstat b
            on  b.statyear||'-'||b.statmonth||'-'||b.statday = TO_CHAR(a.days,'yyyy-MM-dd')
        
         group by b.statyear, b.statmonth, b.statday
				 order by b.statyear, b.statmonth, b.statday )
"""

var cargoNums = db.ods_data.camel().select(cargoNumsSql);
for(item in cargoNums){
  item.put("nums",item.get("nums")::double);
}

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: cargoNums
});