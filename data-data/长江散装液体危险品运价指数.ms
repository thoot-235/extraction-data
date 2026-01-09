{
  "properties" : { },
  "id" : "509247934e8b49539571538804d4d244",
  "script" : null,
  "groupId" : "f5998905462549148b80f5b1041a25ae",
  "name" : "长江散装液体危险品运价指数",
  "createTime" : null,
  "updateTime" : 1747107977083,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getDgrIndex",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"ym\": \"2023-01\",\n        \"indexOil\": 1000.0,\n        \"indexHgp\": 1000.0,\n        \"indexZh\": 1000.0\n    }, {\n        \"ym\": \"2023-02\",\n        \"indexOil\": 1018.7,\n        \"indexHgp\": 1005.4,\n        \"indexZh\": 1013.5\n    }, {\n        \"ym\": \"2023-03\",\n        \"indexOil\": 1049.6,\n        \"indexHgp\": 1010.1,\n        \"indexZh\": 1034.2\n    }, {\n        \"ym\": \"2023-04\",\n        \"indexOil\": 1064.3,\n        \"indexHgp\": 1010.1,\n        \"indexZh\": 1042.8\n    }, {\n        \"ym\": \"2023-05\",\n        \"indexOil\": 1067.7,\n        \"indexHgp\": 1007.4,\n        \"indexZh\": 1043.8\n    }, {\n        \"ym\": \"2023-06\",\n        \"indexOil\": 1077.5,\n        \"indexHgp\": 1019.2,\n        \"indexZh\": 1054.4\n    }, {\n        \"ym\": \"2023-07\",\n        \"indexOil\": 1066.2,\n        \"indexHgp\": 1011.7,\n        \"indexZh\": 1043.9\n    }, {\n        \"ym\": \"2023-08\",\n        \"indexOil\": 1057.9,\n        \"indexHgp\": 999.5,\n        \"indexZh\": 1034.1\n    }, {\n        \"ym\": \"2023-09\",\n        \"indexOil\": 1041.5,\n        \"indexHgp\": 997.6,\n        \"indexZh\": 1023.3\n    }, {\n        \"ym\": \"2023-10\",\n        \"indexOil\": 1038.8,\n        \"indexHgp\": 992.9,\n        \"indexZh\": 1019.9\n    }, {\n        \"ym\": \"2023-11\",\n        \"indexOil\": 995.0,\n        \"indexHgp\": 989.9,\n        \"indexZh\": 991.4\n    }, {\n        \"ym\": \"2023-12\",\n        \"indexOil\": 1004.1,\n        \"indexHgp\": 982.6,\n        \"indexZh\": 994.1\n    }]\n}",
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
          "name" : "ym",
          "value" : "2023-01",
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
          "name" : "indexOil",
          "value" : "1000.0",
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
          "name" : "indexHgp",
          "value" : "1000.0",
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
          "name" : "indexZh",
          "value" : "1000.0",
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
import response;

var sql = """
select * from (select a.* from 
(select t1.ym ,t1.index_oil,t2.index_hgp,t3.index_zh from
(select to_char(to_date(year_month, 'yyyy-MM'), 'yyyy-MM') YM,
          cost_num as index_oil,
          '' as index_zh,
          '' as index_hgp
     from dgr_cost
    where cost_type = '长江成品油运价指数')t1 
   left join 
   (select to_char(to_date(year_month, 'yyyy-MM'), 'yyyy-MM') YM,
          '' as index_oil,
          '' as index_zh,
          cost_num as index_hgp
     from dgr_cost
    where cost_type = '长江化工品运价指数')t2 on t2.ym=t1.ym 
    left join
   (select to_char(to_date(year_month, 'yyyy-MM'), 'yyyy-MM') YM,
          '' as index_oil,
          cost_num as index_zh,
          '' as index_hgp
     from dgr_cost
    where cost_type = '长江散装液体危险品运价指数')t3 on t1.ym=t3.ym
    order by ym desc) a where rownum<=12) order by ym
"""
var list = db.ods_data.camel().select(sql);

for(item in list){
    item.put("indexOil", item.get("indexOil")::double);
    item.put("indexHgp", item.get("indexHgp")::double);
    item.put("indexZh", item.get("indexZh")::double);
}

return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: list
});