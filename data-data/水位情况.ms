{
  "properties" : { },
  "id" : "9bbf8cc627e34882a77bc99c772e1c55",
  "script" : null,
  "groupId" : "39ce103c23184972a79a5498216c3525",
  "name" : "水位情况",
  "createTime" : null,
  "updateTime" : 1747642704722,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getWaterLevel",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 200,\n    \"success\": \"查询成功\",\n    \"result\": {\n        \"timeNew\": \"2023-12-27 08\",\n        \"water\": [{\n            \"swzmc\": \"嘉陵江（北碚）\",\n            \"dqsw\": \"0.82\"\n        }, {\n            \"swzmc\": \"泸州（麻沙桥）\",\n            \"dqsw\": \"0.99\"\n        }, {\n            \"swzmc\": \"南京（下关）\",\n            \"dqsw\": \"2.46\"\n        }, {\n            \"swzmc\": \"黄石（黄石大桥）\",\n            \"dqsw\": \"8.29\"\n        }, {\n            \"swzmc\": \"城陵矶（岳阳关）\",\n            \"dqsw\": \"8.85\"\n        }, {\n            \"swzmc\": \"沙市（杨林矶）\",\n            \"dqsw\": \"-1.4\"\n        }, {\n            \"swzmc\": \"监利（泳协码头）\",\n            \"dqsw\": \"3.49\"\n        }, {\n            \"swzmc\": \"汉口（武汉关）\",\n            \"dqsw\": \"2.34\"\n        }]\n    }\n}",
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
      "name" : "code",
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
      "name" : "success",
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
        "name" : "timeNew",
        "value" : "2023-12-27 08",
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
        "name" : "water",
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
            "name" : "swzmc",
            "value" : "嘉陵江（北碚）",
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
            "name" : "dqsw",
            "value" : "0.82",
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
//水位
var waterLevel = """
select b.swzmc,dqsw from (
select swz_id,dqsw,jzrbh, ROW_NUMBER() over(partition by swz_id order by gxsj desc) mm from sz_rgszscsw where swz_id in (
select id from sz_swz where swzmc in  (select name from hdj_swz)
)
)a,sz_swz b where  a.swz_id=b.id and  mm=1
"""
var timeNewSql="""
select MAX(to_char(FBSJ,'yyyy-MM-dd HH')) as time_New
  from （
        select swz_id,
               dqsw,
               jzrbh,
               FBSJ,
               ROW_NUMBER() over(partition by swz_id order by gxsj desc) mm
          from ods_hs_share.sz_rgszscsw
         where swz_id in
               (select id
                  from ods_hs_share.sz_swz
                 where swzmc in (select name from ods_hs_share.hdj_swz)) ）a,
         ods_hs_share.sz_swz b
         where a.swz_id = b.id
           and mm = 1
"""

var reMap={}

var timeNew= db.ods_data.camel().selectOne(timeNewSql);

var water =  db.ods_data.camel().select(waterLevel);

reMap.put("timeNew",timeNew.get("timeNew"));
reMap.put("water",water);

import response;
return response.json({
    code: 200,
    success: "查询成功",
    result: reMap 

});