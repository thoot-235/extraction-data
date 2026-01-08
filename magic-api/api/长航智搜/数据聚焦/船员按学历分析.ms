{
  "properties" : { },
  "id" : "88d05a62f533438cbde65e78fa7f5c90",
  "script" : null,
  "groupId" : "71c52af0421741f3baab0e40a108f071",
  "name" : "船员按学历分析",
  "createTime" : null,
  "updateTime" : 1693305711493,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/crewAnalysedByEducation",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"educationCn\": \"初中及以下\",\n        \"num\": \"1458\"\n    }, {\n        \"educationCn\": \"高中\",\n        \"num\": \"13039\"\n    }, {\n        \"educationCn\": \"大专\",\n        \"num\": \"10205\"\n    }, {\n        \"educationCn\": \"本科\",\n        \"num\": \"2498\"\n    }, {\n        \"educationCn\": \"本科以上\",\n        \"num\": \"242\"\n    }, {\n        \"educationCn\": \"其他\",\n        \"num\": \"284031\"\n    }]\n}",
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
      "dataType" : "Object",
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
          "name" : "educationCn",
          "value" : "初中及以下",
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
          "name" : "num",
          "value" : "1458",
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
select name education_Cn, num FROM(
 SELECT target_name NAME, SUM(target_val) NUM
  FROM (SELECT (CASE
                 WHEN target_name = 'A2' OR target_name = 'A3' OR
                      target_name = 'A4' OR target_name = '01' OR
                      target_name = '02' THEN
                  '初中及以下'
                 when target_name = '03' OR target_name = '04' OR
                      target_name = '05' OR target_name = '06' THEN
                  '高中'
                 when target_name = '07' OR target_name = '11' OR
                      target_name = '12' THEN
                  '大专'
                 when target_name = '08' THEN
                  '本科'
                 when target_name = '09' or target_name = '10' THEN
                  '本科以上'
                 else
                  '其他'
               END) target_name,
               target_val
          FROM dm_data.sts_basic_info
         WHERE sts_code = '05' and to_char(sts_date,'yyyy-MM-dd') = to_char(sysdate,'yyyy-MM-dd'))
 GROUP BY target_name) order by decode(education_Cn,
                 '初中及以下',
                 1,
                 '高中',
                 2,
                 '大专',
                 3,
                 '本科',
                 4,
                 '本科以上',
                 5,
                 '其他',
                 6
                 )
        """
var list = db.dm_data.camel().select(Sql);

// list.add({
//     "num": "3",
//     "education": "05",
//     "educationCn": "中专"
// });
// list.add({
//     "num": "4",
//     "education": "04",
//     "educationCn": "职高"
// });
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: list
});