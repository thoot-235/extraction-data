{
  "properties" : { },
  "id" : "969212dfa9624145a5108e035070c74a",
  "script" : null,
  "groupId" : "e4f5142bedb24c9bbc2981102d51e07a",
  "name" : "分支机构",
  "createTime" : null,
  "updateTime" : 1752830184679,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getOrgBranch",
  "method" : "GET",
  "parameters" : [ {
    "name" : "orgName",
    "value" : "机关直属机构",
    "description" : "",
    "required" : true,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [\"长江武穴航道处\", \"长江九江航道处\", \"长江湖口航道处\", \"长江彭泽航道处\", \"长江华阳航道处\", \"长江安庆航道处\", \"长江太子矶航道处\", \"长江池州航道处\", \"长江铜陵航道处\", \"长江新港航道处\", \"长江芜湖航道处\", \"长江裕溪口航道处\", \"长江马鞍山航道处\", \"长江大胜关航道处\", \"长江南京航道处\", \"长江栖霞航道处\", \"长江扬中航道处\", \"长江镇江航道处\", \"长江泰州航道处\", \"长江泰兴航道处\", \"长江江阴航道处\", \"长江靖江航道处\", \"长江张家港航道处\", \"长江南通航道处\", \"长江常熟航道处\", \"长江太仓航道处\", \"长江海门航道处\", \"长江上海航道处\"]\n}",
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
        "value" : "长江武穴航道处",
        "description" : "",
        "required" : false,
        "dataType" : "String",
        "type" : null,
        "defaultValue" : null,
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      } ]
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;

var sql = """
  select org_name from CHANGHANG_ORGANIZATION_CHART where parent_org_name = #{orgName}
"""

var list = db.ods_data.camel().select(sql);
var res = [];
for(item in list){
  res.add(item.get("orgName"));
}


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
});