{
  "properties" : { },
  "id" : "93abfc840eaf40368c46d4e32d7132a8",
  "script" : null,
  "groupId" : "0700e32d7c4049b9b521694c26cbcb71",
  "name" : "升级日志分页查询",
  "createTime" : null,
  "updateTime" : 1691749539711,
  "lock" : null,
  "createBy" : null,
  "updateBy" : "admin",
  "path" : "/getSystemLogPage",
  "method" : "GET",
  "parameters" : [ {
    "name" : "page",
    "value" : "1",
    "description" : null,
    "required" : true,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }, {
    "name" : "size",
    "value" : "2",
    "description" : null,
    "required" : true,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"records\": [{\n            \"totalCount\": 2,\n            \"id\": \"6648ad4bf9c44509861120c25c542cd7\",\n            \"ip\": \"xxx\",\n            \"type\": \"维护升级2\",\n            \"time\": \"2020-03-19\"\n        }, {\n            \"totalCount\": 2,\n            \"id\": \"6079d0bb842b409cb1ae1a1b304ccb87\",\n            \"ip\": \"xxx\",\n            \"type\": \"维护升级2\",\n            \"time\": \"2020-03-19\"\n        }],\n        \"total\": 2\n    }\n}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : {
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
      "name" : "resultCode",
      "value" : "200",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
      "type" : null,
      "defaultValue" : null,
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
      "defaultValue" : null,
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
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "records",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : null,
        "defaultValue" : null,
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
            "name" : "totalCount",
            "value" : "2",
            "description" : "",
            "required" : false,
            "dataType" : "Integer",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "id",
            "value" : "6648ad4bf9c44509861120c25c542cd7",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "ip",
            "value" : "xxx",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "type",
            "value" : "维护升级2",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "time",
            "value" : "2020-03-19",
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
      }, {
        "name" : "total",
        "value" : "2",
        "description" : "",
        "required" : false,
        "dataType" : "Integer",
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





var limit=""" ) a 
limit 
        (#{size}) ::bigint  offset 
         ((#{page})  ::bigint-1) * (#{size}) ::bigint 
"""      ;  

var Sql = """

select * from (
          select count(*) OVER() total_count ,
        id,
         ip,
         type,
         to_char(time,'yyyy-mm-dd') time
      from blade_system_log
      order by time desc
       

        """;


var list=db.ais.camel().select(Sql+limit);
var totalCount=0;



if(list==null){
   list=[];
} 
for(item in list){ 
    totalCount = item.get("totalCount");
}     
var back={
        "records":list,
        "total":Integer.parseInt(totalCount::string)
}

import response;
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: back 

});
