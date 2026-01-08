{
  "properties" : { },
  "id" : "be3c9d6a89914ce4bc50ecdbafe2b155",
  "script" : null,
  "groupId" : "ac5a4c8f326440f592237405342d21b0",
  "name" : "船员培训_培训开班数",
  "createTime" : null,
  "updateTime" : 1735779438375,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/crewTrainClassNums",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"sinceYear\": [{\n            \"provinceName\": \"云南\",\n            \"nums\": 0,\n            \"rowNum\": \"4\"\n        }, {\n            \"provinceName\": \"贵州\",\n            \"nums\": 0,\n            \"rowNum\": \"5\"\n        }, {\n            \"provinceName\": \"四川\",\n            \"nums\": 0,\n            \"rowNum\": \"8\"\n        }, {\n            \"provinceName\": \"重庆\",\n            \"nums\": 0,\n            \"rowNum\": \"1\"\n        }, {\n            \"provinceName\": \"湖南\",\n            \"nums\": 0,\n            \"rowNum\": \"10\"\n        }, {\n            \"provinceName\": \"湖北\",\n            \"nums\": 0,\n            \"rowNum\": \"3\"\n        }, {\n            \"provinceName\": \"江西\",\n            \"nums\": 0,\n            \"rowNum\": \"13\"\n        }, {\n            \"provinceName\": \"浙江\",\n            \"nums\": 0,\n            \"rowNum\": \"11\"\n        }, {\n            \"provinceName\": \"安徽\",\n            \"nums\": 0,\n            \"rowNum\": \"7\"\n        }, {\n            \"provinceName\": \"江苏\",\n            \"nums\": 0,\n            \"rowNum\": \"9\"\n        }, {\n            \"provinceName\": \"上海\",\n            \"nums\": 0,\n            \"rowNum\": \"6\"\n        }, {\n            \"provinceName\": \"陕西\",\n            \"nums\": 0,\n            \"rowNum\": \"2\"\n        }, {\n            \"provinceName\": \"河南\",\n            \"nums\": 0,\n            \"rowNum\": \"12\"\n        }, {\n            \"provinceName\": \"山东\",\n            \"nums\": 0,\n            \"rowNum\": \"14\"\n        }],\n        \"fiveYear\": [{\n            \"provinceName\": \"云南\",\n            \"nums\": 30,\n            \"rowNum\": \"13\"\n        }, {\n            \"provinceName\": \"贵州\",\n            \"nums\": 61,\n            \"rowNum\": \"9\"\n        }, {\n            \"provinceName\": \"四川\",\n            \"nums\": 74,\n            \"rowNum\": \"7\"\n        }, {\n            \"provinceName\": \"重庆\",\n            \"nums\": 139,\n            \"rowNum\": \"4\"\n        }, {\n            \"provinceName\": \"湖南\",\n            \"nums\": 122,\n            \"rowNum\": \"5\"\n        }, {\n            \"provinceName\": \"湖北\",\n            \"nums\": 448,\n            \"rowNum\": \"1\"\n        }, {\n            \"provinceName\": \"江西\",\n            \"nums\": 71,\n            \"rowNum\": \"8\"\n        }, {\n            \"provinceName\": \"浙江\",\n            \"nums\": 46,\n            \"rowNum\": \"11\"\n        }, {\n            \"provinceName\": \"安徽\",\n            \"nums\": 428,\n            \"rowNum\": \"2\"\n        }, {\n            \"provinceName\": \"江苏\",\n            \"nums\": 314,\n            \"rowNum\": \"3\"\n        }, {\n            \"provinceName\": \"上海\",\n            \"nums\": 38,\n            \"rowNum\": \"12\"\n        }, {\n            \"provinceName\": \"陕西\",\n            \"nums\": 10,\n            \"rowNum\": \"14\"\n        }, {\n            \"provinceName\": \"河南\",\n            \"nums\": 88,\n            \"rowNum\": \"6\"\n        }, {\n            \"provinceName\": \"山东\",\n            \"nums\": 54,\n            \"rowNum\": \"10\"\n        }]\n    }\n}",
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
        "name" : "sinceYear",
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
            "value" : "0",
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
            "value" : "4",
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
      }, {
        "name" : "fiveYear",
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
            "value" : "30",
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
            "value" : "13",
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
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;

//自年初累计
var sinceYearSql = """
    select REGEXP_REPLACE(a.item_name_cn,'[省市]','') province_name, nvl(b.nums, 0) nums,
    row_number() over(order by nums DESC) as row_num
        from dict_data.dict_river_province a
        left join (select province_name, train_class_num nums
                    from dm_data.sts_crew_training
                    where year = to_char(sysdate, 'yyyy')) b
            on a.item_name_cn = b.province_name
        order by a.orders
"""
//近五年
var fiveYearSql = """
    select REGEXP_REPLACE(a.item_name_cn,'[省市]','') province_name, nvl(b.nums, 0) nums,
    row_number() over(order by nums DESC) as row_num
        from dict_data.dict_river_province a
        left join (select province_name, sum(train_class_num) nums
                    from dm_data.sts_crew_training
                    where year >=
                            to_char(add_months(trunc(sysdate, 'year'), -12), 'yyyy')
                            and year < to_char(trunc(sysdate, 'year'), 'yyyy')
                    group by province_name) b
            on a.item_name_cn = b.province_name
        order by a.orders
"""

var sinceYear = async db.dm_data.camel().select(sinceYearSql);
var fiveYear = async db.dm_data.camel().select(fiveYearSql);


for(item in sinceYear.get()){
    item.put("nums",item.get("nums")::int);
}
for(item in fiveYear.get()){
    item.put("nums",item.get("nums")::int);
}

var res = {};
res.put("sinceYear",sinceYear.get());
res.put("fiveYear",fiveYear.get());

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
});