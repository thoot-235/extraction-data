{
  "properties" : { },
  "id" : "9b93aaadf6f44a468afa50a8915b275a",
  "script" : null,
  "groupId" : "c3e4a1defbdf48388a2db810ef04f628",
  "name" : "船东满意度指数",
  "createTime" : null,
  "updateTime" : 1764842060951,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getShipownerSatisfactionIndex",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"year\": \"2023\",\n        \"sy\": 90.1,\n        \"zy\": 87.8,\n        \"xy\": 90.8,\n        \"time\": \"2023上半年\"\n    }, {\n        \"year\": \"2023\",\n        \"sy\": 89.1,\n        \"zy\": 90.2,\n        \"xy\": 90.9,\n        \"time\": \"2023下半年\"\n    }, {\n        \"year\": \"2024\",\n        \"sy\": 90.4,\n        \"zy\": 89.1,\n        \"xy\": 90.5,\n        \"time\": \"2024上半年\"\n    }, {\n        \"year\": \"2024\",\n        \"sy\": 89.4,\n        \"zy\": 88.4,\n        \"xy\": 91.5,\n        \"time\": \"2024下半年\"\n    }, {\n        \"year\": \"2025\",\n        \"sy\": 90.9,\n        \"zy\": 91.5,\n        \"xy\": 92.1,\n        \"time\": \"2025上半年\"\n    }, {\n        \"year\": \"2025\",\n        \"sy\": 100.0,\n        \"zy\": 100.0,\n        \"xy\": 100.0,\n        \"time\": \"2025下半年\"\n    }]\n}",
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
          "name" : "year",
          "value" : "2023",
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
          "name" : "sy",
          "value" : "90.1",
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
          "name" : "zy",
          "value" : "87.8",
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
          "name" : "xy",
          "value" : "90.8",
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
          "name" : "time",
          "value" : "2023上半年",
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
import lombok.experimental.var
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;

/**
var second = qaIndexNameSecond != null && qaIndexNameSecond != '' ? qaIndexNameSecond : '航道建设服务';
var Sql = """select a.year, a.sy, a.zy, a.xy, a.time
  from (select distinct a0.year year,
                        nvl(a1.tjvalue, 0) sy,
                        nvl(a2.tjvalue, 0) zy,
                        nvl(a3.tjvalue, 0) xy,
                        nvl(a1.type, 1) type,
                        case
                          when nvl(a1.type, 1) = '1' then
                          substr( a0.year,3,7)  || '上半年'
                          when nvl(a1.type, 1) = '2' then
                          substr( a0.year,3,7)  || '下半年'
                        end time
          from (select extract(year from sysdate - (level - 1) * interval '1' year) year
                  from dual
                connect by level <= 6) a0
          left join (select year, tjvalue, type
                      from sub_base_data.IDX_QA_ANSWER_RESULT_TJ t
                     where QA_INDEX_NAME_SECOND = '航道建设服务'
                       and t.area = 'sy') a1
            on a0.year = a1.year
          left join (select year, tjvalue, type
                      from sub_base_data.IDX_QA_ANSWER_RESULT_TJ t
                     where QA_INDEX_NAME_SECOND = '航道建设服务'
                       and t.area = 'zy') a2
            on a0.year = a2.year
           and a1.type = a2.type 
           --and a1.import_time = a2.import_time
          left join (select year, tjvalue, type
                      from sub_base_data.IDX_QA_ANSWER_RESULT_TJ t
                     where QA_INDEX_NAME_SECOND = '航道建设服务'
                       and t.area = 'xy') a3
            on a0.year = a3.year
           and a2.type = a3.type 
           --and a1.import_time = a3.import_time
           ) a where a.year!='2024'
 order by a.year asc, a.type asc
"""; */
//最新6期数据
var sql = """
select a.* from (
select year, sy, zy, xy, time
  from dm_data.STS_DATA_APPLIED_INDEX
 where type = '5'
   and year >= '2019'
 order by time desc) a
where rownum <=6 order by a.time 
"""
var list = db.dm_data.camel().select(sql);
if (list == null) {
    list = [];
}

for (item in list) {
    item.put("sy", item.get("sy")::double);
    item.put("zy", item.get("zy")::double);
    item.put("xy", item.get("xy")::double);
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: list
});