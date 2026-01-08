{
  "properties" : { },
  "id" : "18cf25b37e0541d4bb11a534d8b1c92c",
  "script" : null,
  "groupId" : "ac5a4c8f326440f592237405342d21b0",
  "name" : "船员适任考试期数",
  "createTime" : null,
  "updateTime" : 1709606357176,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/crewExamNums",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"provinceName\": \"云南\",\n        \"nums\": 137,\n        \"rowNum\": \"12\"\n    }, {\n        \"provinceName\": \"贵州\",\n        \"nums\": 185,\n        \"rowNum\": \"11\"\n    }, {\n        \"provinceName\": \"四川\",\n        \"nums\": 281,\n        \"rowNum\": \"10\"\n    }, {\n        \"provinceName\": \"重庆\",\n        \"nums\": 18,\n        \"rowNum\": \"14\"\n    }, {\n        \"provinceName\": \"湖南\",\n        \"nums\": 614,\n        \"rowNum\": \"5\"\n    }, {\n        \"provinceName\": \"湖北\",\n        \"nums\": 1711,\n        \"rowNum\": \"4\"\n    }, {\n        \"provinceName\": \"江西\",\n        \"nums\": 510,\n        \"rowNum\": \"6\"\n    }, {\n        \"provinceName\": \"浙江\",\n        \"nums\": 298,\n        \"rowNum\": \"9\"\n    }, {\n        \"provinceName\": \"安徽\",\n        \"nums\": 5886,\n        \"rowNum\": \"1\"\n    }, {\n        \"provinceName\": \"江苏\",\n        \"nums\": 4171,\n        \"rowNum\": \"2\"\n    }, {\n        \"provinceName\": \"上海\",\n        \"nums\": 459,\n        \"rowNum\": \"7\"\n    }, {\n        \"provinceName\": \"陕西\",\n        \"nums\": 82,\n        \"rowNum\": \"13\"\n    }, {\n        \"provinceName\": \"河南\",\n        \"nums\": 322,\n        \"rowNum\": \"8\"\n    }, {\n        \"provinceName\": \"山东\",\n        \"nums\": 1982,\n        \"rowNum\": \"3\"\n    }]\n}",
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
          "name" : "provinceName",
          "value" : "云南",
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
          "name" : "nums",
          "value" : "137",
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
          "name" : "rowNum",
          "value" : "12",
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
      } ]
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;

//近五年
var fiveYearSql = """
    select REGEXP_REPLACE(a.item_name_cn,'[省市]','') province_name, nvl(b.nums, 0) nums,
            row_number() over(order by nums DESC) as row_num
        from dict_data.dict_river_province a
        left join (select province_name, sum(exam_periods_num) nums
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
}

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: fiveYear
});