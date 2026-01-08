{
  "properties" : { },
  "id" : "23e171f8e706475b9f17d4ad98de94d0",
  "script" : null,
  "groupId" : "ac5a4c8f326440f592237405342d21b0",
  "name" : "船员适任考试人数",
  "createTime" : null,
  "updateTime" : 1709603863313,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/crewExamCrewNums",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"provinceName\": \"云南\",\n        \"nums\": 574,\n        \"total\": 2601,\n        \"rowNum\": \"11\"\n    }, {\n        \"provinceName\": \"贵州\",\n        \"nums\": 605,\n        \"total\": 3079,\n        \"rowNum\": \"10\"\n    }, {\n        \"provinceName\": \"四川\",\n        \"nums\": 1152,\n        \"total\": 5850,\n        \"rowNum\": \"8\"\n    }, {\n        \"provinceName\": \"重庆\",\n        \"nums\": 51,\n        \"total\": 370,\n        \"rowNum\": \"14\"\n    }, {\n        \"provinceName\": \"湖南\",\n        \"nums\": 3667,\n        \"total\": 16522,\n        \"rowNum\": \"6\"\n    }, {\n        \"provinceName\": \"湖北\",\n        \"nums\": 8405,\n        \"total\": 46701,\n        \"rowNum\": \"3\"\n    }, {\n        \"provinceName\": \"江西\",\n        \"nums\": 2995,\n        \"total\": 13901,\n        \"rowNum\": \"7\"\n    }, {\n        \"provinceName\": \"浙江\",\n        \"nums\": 766,\n        \"total\": 4129,\n        \"rowNum\": \"9\"\n    }, {\n        \"provinceName\": \"安徽\",\n        \"nums\": 20682,\n        \"total\": 108318,\n        \"rowNum\": \"1\"\n    }, {\n        \"provinceName\": \"江苏\",\n        \"nums\": 10378,\n        \"total\": 48935,\n        \"rowNum\": \"2\"\n    }, {\n        \"provinceName\": \"上海\",\n        \"nums\": 399,\n        \"total\": 1400,\n        \"rowNum\": \"12\"\n    }, {\n        \"provinceName\": \"陕西\",\n        \"nums\": 121,\n        \"total\": 671,\n        \"rowNum\": \"13\"\n    }, {\n        \"provinceName\": \"河南\",\n        \"nums\": 3363,\n        \"total\": 18137,\n        \"rowNum\": \"5\"\n    }, {\n        \"provinceName\": \"山东\",\n        \"nums\": 6352,\n        \"total\": 36056,\n        \"rowNum\": \"4\"\n    }]\n}",
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
          "name" : "provinceName",
          "value" : "云南",
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
          "value" : "574",
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
          "name" : "total",
          "value" : "2601",
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
          "name" : "rowNum",
          "value" : "11",
          "description" : "",
          "required" : false,
          "dataType" : "String",
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

//近五年 人  万人次
var fiveYearSql = """
    select REGEXP_REPLACE(a.item_name_cn,'[省市]','') province_name, nvl(b.nums, 0) nums, nvl(b.total, 0) total,
     row_number() over(order by total DESC) as row_num
        from dict_data.dict_river_province a
        left join (select province_name,
                            sum(exam_person_num) nums,
                            sum(exam_person_total) total
                    from dm_data.sts_crew_training
                    where year >=
                            to_char(add_months(trunc(sysdate, 'year'), -12), 'yyyy')
                            and year < to_char(trunc(sysdate, 'year'), 'yyyy')
                    group by province_name) b
            on a.item_name_cn = b.province_name
        order by a.orders
"""

var fiveYear = db.dm_data.camel().select(fiveYearSql);


for(item in fiveYear){
    item.put("nums",item.get("nums")::int);
    item.put("total",item.get("total")::int);
}

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: fiveYear
});