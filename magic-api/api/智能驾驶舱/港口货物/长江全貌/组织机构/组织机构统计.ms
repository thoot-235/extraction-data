{
  "properties" : { },
  "id" : "93981da388584dab90ae0311902d3c54",
  "script" : null,
  "groupId" : "e4f5142bedb24c9bbc2981102d51e07a",
  "name" : "组织机构统计",
  "createTime" : null,
  "updateTime" : 1756008687954,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getOrgNum",
  "method" : "GET",
  "parameters" : [ {
    "name" : "code",
    "value" : "4",
    "description" : "",
    "required" : true,
    "dataType" : "Integer",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"indexName\": \"局系统人员\",\n        \"indexNum\": 34869\n    }, {\n        \"indexName\": \"企业人员\",\n        \"indexNum\": 2913\n    }, {\n        \"indexName\": \"离退休人员\",\n        \"indexNum\": 14361\n    }, {\n        \"indexName\": \"公务员\",\n        \"indexNum\": 5008\n    }, {\n        \"indexName\": \"事业人员\",\n        \"indexNum\": 9142\n    }, {\n        \"indexName\": \"社会化用工人员\",\n        \"indexNum\": 3445\n    }]\n}",
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
          "name" : "indexName",
          "value" : "局系统人员",
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
          "name" : "indexNum",
          "value" : "34869",
          "description" : "",
          "required" : false,
          "dataType" : "Integer",
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

//局系统人员34869 和 社会化用工 3445

log.info("code==============="+code::string);
var data = [];
if(code == "2"){
  var sql = """
    select INDEX_NAME,INDEX_NUM,round(INDEX_NUM/#{data2},4)*100 percents from ZT_FULL_VIEW_ORG a 
    where INDEX_TYPE_CODE = #{code} group by INDEX_NAME,INDEX_NUM
  """
  var sql2 = """
    select sum(INDEX_NUM) from ZT_FULL_VIEW_ORG a 
    where INDEX_TYPE_CODE = #{code}
  """
  data2 = db.dm_data.camel().selectInt(sql2);
  log.info("data2-------------------"+data2::string)
  data = db.dm_data.camel().select(sql);
  
  for(item in data){
    item.put("indexNum",item.get("indexNum")::int);
    item.put("percents",item.get("percents")::double);
  }
}else{
//机构、人员
  var sql = """
    select INDEX_NAME,INDEX_NUM from ZT_FULL_VIEW_ORG
    where INDEX_TYPE_CODE = #{code}
  """

  data = db.dm_data.camel().select(sql);
  for(item in data){
    item.put("indexNum",item.get("indexNum")::int);
  }
} 

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: data
});