{
  "properties" : { },
  "id" : "96b07843d6c14cec80461cd94981e21d",
  "script" : null,
  "groupId" : "71c52af0421741f3baab0e40a108f071",
  "name" : "船员按照专业分析",
  "createTime" : null,
  "updateTime" : 1700186104516,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "crewAnalysedByMajor",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"num\": \"83\",\n        \"ratio\": \"0.01%\",\n        \"applMajorName\": \"通信\"\n    }, {\n        \"num\": \"111384\",\n        \"ratio\": \"17.63%\",\n        \"applMajorName\": \"轮机\"\n    }, {\n        \"num\": \"158839\",\n        \"ratio\": \"25.14%\",\n        \"applMajorName\": \"驾驶\"\n    }, {\n        \"num\": \"361489\",\n        \"ratio\": \"57.22%\",\n        \"applMajorName\": \"普通\"\n    }]\n}",
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
      "name" : "data",
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
          "name" : "num",
          "value" : "83",
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
          "name" : "ratio",
          "value" : "0.01%",
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
          "name" : "applMajorName",
          "value" : "通信",
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

var Sql = """ 
select target_val num,
       to_char((round(target_val / sum(target_val) over(), 4) * 100),
               'FM999,999,999,999,990.00') || '%' ratio,
       target_name appl_major_name
  from dm_data.sts_basic_info WHERE sts_code = '06'  and to_char(sts_date,'yyyy-MM-dd') = to_char(sysdate,'yyyy-MM-dd') order by num asc

""";
var list = db.dm_data.camel().select(Sql);
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: list
});