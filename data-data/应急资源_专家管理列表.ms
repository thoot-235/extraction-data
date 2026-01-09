{
  "properties" : { },
  "id" : "copy1728977407122d6901",
  "script" : null,
  "groupId" : "f8cb5b13739f455397cc22a7ae910702",
  "name" : "应急资源_专家管理列表",
  "createTime" : null,
  "updateTime" : 1731665092039,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/emResourceZjList",
  "method" : "GET",
  "parameters" : [ {
    "name" : "page",
    "value" : "1",
    "description" : "",
    "required" : true,
    "dataType" : "Integer",
    "type" : "",
    "defaultValue" : "1",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "size",
    "value" : "5",
    "description" : "",
    "required" : true,
    "dataType" : "Integer",
    "type" : "",
    "defaultValue" : "5",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"total\": 468,\n        \"list\": [{\n            \"userName\": \"宋杰\",\n            \"sex\": \"男\",\n            \"deptName\": \"芜湖海事局马鞍山海事处\",\n            \"post\": \"马鞍山港执法大队队长\",\n            \"rowId\": \"1\"\n        }, {\n            \"userName\": \"路亚朋\",\n            \"sex\": \"男\",\n            \"deptName\": \"芜湖海事局马鞍山海事处\",\n            \"post\": \"陈家圩执法大队队长\",\n            \"rowId\": \"2\"\n        }, {\n            \"userName\": \"何浩\",\n            \"sex\": \"男\",\n            \"deptName\": \"重庆海事局丰都海事处\",\n            \"post\": \"高镇巡航救助执法大队队员\",\n            \"rowId\": \"3\"\n        }, {\n            \"userName\": \"石磊\",\n            \"sex\": \"男\",\n            \"deptName\": \"重庆海事局忠县海事处\",\n            \"post\": \"新生巡航救助执法大队队长\",\n            \"rowId\": \"4\"\n        }, {\n            \"userName\": \"谭继伟\",\n            \"sex\": \"男\",\n            \"deptName\": \"重庆海事局忠县海事处\",\n            \"post\": \"新生巡航救助执法大队队员\",\n            \"rowId\": \"5\"\n        }]\n    }\n}",
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
        "name" : "total",
        "value" : "468",
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
        "name" : "list",
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
            "name" : "userName",
            "value" : "宋杰",
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
            "name" : "sex",
            "value" : "男",
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
            "name" : "deptName",
            "value" : "芜湖海事局马鞍山海事处",
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
            "name" : "post",
            "value" : "马鞍山港执法大队队长",
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
            "name" : "rowId",
            "value" : "1",
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
//专家管理  姓名、性别、所属单位、职务
var zjSql = """
    select user_name,
            case
              when sex = '1' then
                '男'
              else
                '女'
            end as sex,
            dept_name,
            post
        from yjzy_data.yjxx_chxtyjry
      where scbj = '0'
        and header = 'chxt' order by id
"""

var list = db.ods_data.camel().page(zjSql,size,(page-1)*size);

import response;
return response.json({
          resultCode: 200,
          resultMsg: "查询成功",
          result: list
  });