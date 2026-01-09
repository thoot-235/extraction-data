{
  "properties" : { },
  "id" : "c77f07a9ee31473080823223b259eebf",
  "script" : null,
  "groupId" : "ac5a4c8f326440f592237405342d21b0",
  "name" : "船员培训_培训考试通过率",
  "createTime" : null,
  "updateTime" : 1709255449642,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getCrewTrainExamPass",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"provinceName\": \"云南\",\n        \"rate\": 98.34,\n        \"rowNum\": \"4\"\n    }, {\n        \"provinceName\": \"贵州\",\n        \"rate\": 99.34,\n        \"rowNum\": \"3\"\n    }, {\n        \"provinceName\": \"四川\",\n        \"rate\": 92.94,\n        \"rowNum\": \"8\"\n    }, {\n        \"provinceName\": \"重庆\",\n        \"rate\": 99.66,\n        \"rowNum\": \"1\"\n    }, {\n        \"provinceName\": \"湖南\",\n        \"rate\": 98.23,\n        \"rowNum\": \"5\"\n    }, {\n        \"provinceName\": \"湖北\",\n        \"rate\": 92.1,\n        \"rowNum\": \"9\"\n    }, {\n        \"provinceName\": \"江西\",\n        \"rate\": 89.36,\n        \"rowNum\": \"10\"\n    }, {\n        \"provinceName\": \"浙江\",\n        \"rate\": 93.16,\n        \"rowNum\": \"7\"\n    }, {\n        \"provinceName\": \"安徽\",\n        \"rate\": 86.59,\n        \"rowNum\": \"13\"\n    }, {\n        \"provinceName\": \"江苏\",\n        \"rate\": 87.61,\n        \"rowNum\": \"12\"\n    }, {\n        \"provinceName\": \"上海\",\n        \"rate\": 89.1,\n        \"rowNum\": \"11\"\n    }, {\n        \"provinceName\": \"陕西\",\n        \"rate\": 84.91,\n        \"rowNum\": \"14\"\n    }, {\n        \"provinceName\": \"河南\",\n        \"rate\": 99.62,\n        \"rowNum\": \"2\"\n    }, {\n        \"provinceName\": \"山东\",\n        \"rate\": 95.64,\n        \"rowNum\": \"6\"\n    }]\n}",
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
          "name" : "rate",
          "value" : "98.34",
          "description" : "",
          "required" : false,
          "dataType" : "Double",
          "type" : null,
          "defaultValue" : "",
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "rowNum",
          "value" : "4",
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
    select REGEXP_REPLACE(a.item_name_cn,'[省市]','') province_name, nvl(b.rate, 0) rate,
    row_number() over(order by rate DESC) as row_num
        from dict_data.dict_river_province a
        left join (select province_name,
                            case
                            when sum(nvl(train_init_num, 0)) > 0 then
                            round(sum(train_pass_num) * 100.0 /
                                    sum(train_init_num),
                                    2)
                            else
                            0
                            end rate
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
    item.put("rate",item.get("rate")::double);
}

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: fiveYear
});