{
  "properties" : { },
  "id" : "92a3d8b303e34797bc1cc1b8a2abb1f9",
  "script" : null,
  "groupId" : "71c52af0421741f3baab0e40a108f071",
  "name" : "船员按省份分析",
  "createTime" : null,
  "updateTime" : 1695612575067,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/crewAnalysedByProvince",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"orgname\": \"湖北省\",\n        \"regcrewnum\": \"61996\"\n    }, {\n        \"orgname\": \"湖北省\",\n        \"regcrewnum\": \"61995\"\n    }, {\n        \"orgname\": \"湖北省\",\n        \"regcrewnum\": \"61988\"\n    }, {\n        \"orgname\": \"湖北省\",\n        \"regcrewnum\": \"61988\"\n    }, {\n        \"orgname\": \"湖北省\",\n        \"regcrewnum\": \"61980\"\n    }, {\n        \"orgname\": \"湖北省\",\n        \"regcrewnum\": \"61966\"\n    }, {\n        \"orgname\": \"湖北省\",\n        \"regcrewnum\": \"61962\"\n    }, {\n        \"orgname\": \"湖北省\",\n        \"regcrewnum\": \"61948\"\n    }, {\n        \"orgname\": \"湖北省\",\n        \"regcrewnum\": \"61944\"\n    }, {\n        \"orgname\": \"湖北省\",\n        \"regcrewnum\": \"61941\"\n    }]\n}",
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
          "name" : "orgname",
          "value" : "湖北省",
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
          "name" : "regcrewnum",
          "value" : "61996",
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

   select * from (
            select target_name "orgName" ,target_val "regCrewNum" from dm_data.sts_basic_info where sts_code ='07'
             and to_char(sts_date,'yyyy-MM-dd') = to_char(sysdate,'yyyy-MM-dd')
            order by target_val desc) where rownum<=10

        """;
var list = db.dm_data.camel().select(Sql);
if (list == null) {
    list = [];
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: list
});