{
  "properties" : { },
  "id" : "d75a29f84b0742bf851fa97f7d8d6f8e",
  "script" : null,
  "groupId" : "0700e32d7c4049b9b521694c26cbcb71",
  "name" : "系统访问量统计_前一日",
  "createTime" : null,
  "updateTime" : 1699929266115,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getSystemAccessNums",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"取流成功\",\n    \"result\": [{\n        \"dailyDate\": \"2023-11-12\",\n        \"nums\": 436\n    }, {\n        \"dailyDate\": \"2023-11-11\",\n        \"nums\": 1071\n    }, {\n        \"dailyDate\": \"2023-11-10\",\n        \"nums\": 968\n    }, {\n        \"dailyDate\": \"2023-11-09\",\n        \"nums\": 781\n    }, {\n        \"dailyDate\": \"2023-11-08\",\n        \"nums\": 1204\n    }, {\n        \"dailyDate\": \"2023-11-07\",\n        \"nums\": 908\n    }, {\n        \"dailyDate\": \"2023-11-06\",\n        \"nums\": 631\n    }]\n}",
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
      "value" : "取流成功",
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
      "dataType" : "Integer",
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
          "name" : "dailyDate",
          "value" : "2023-11-12",
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
          "value" : "436",
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


//获取视频唯一编码
var accessNumsSql = """
  SELECT
    to_char( operation_time, 'YYYY-MM-DD' ) AS daily_date,
    COUNT ( 1 ) AS NUMS 
  FROM
    "log_management" 
  WHERE
    operation_time > CURRENT_DATE - INTERVAL '7 day' 
    AND operation_time <= CURRENT_DATE 
    AND interface_type NOT IN (
      '地图',
      '个人中心',
      '订阅服务',
      '用户与角色',
      '数据服务',
      '快捷入口模块',
      '长航ais',
      '长航岸电',
      '资源全景',
      '数据目录',
      '专题服务',
      '数据分析',
      '数据应用',
      '数据聚焦',
      '热词搜索',
      '用户',
      '资源全景',
      '资源申请/审核',
      '长航typhoon',
      '首页' 
    ) 
    AND ip NOT LIKE'172.17%' 
  GROUP BY
    to_char( operation_time, 'YYYY-MM-DD' ) 
  ORDER BY
    daily_date DESC
"""
var accessNums = db.bladex.camel().select(accessNumsSql);


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: accessNums
});