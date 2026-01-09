{
  "properties" : { },
  "id" : "ab099dfbf6d34b79a1fb84bcf0f481d8",
  "script" : null,
  "groupId" : "3be4aa935dfe40da812c1ddaa5d26276",
  "name" : "长江沿线14省市船舶碳排放分析",
  "createTime" : null,
  "updateTime" : 1751851354308,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getCarbonByMonth",
  "method" : "GET",
  "parameters" : [ {
    "name" : "ym",
    "value" : "202407",
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
  "responseBody" : null,
  "description" : "",
  "requestBodyDefinition" : {
    "name" : null,
    "value" : null,
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  },
  "responseBodyDefinition" : {
    "name" : null,
    "value" : null,
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }
}
================================
import http;
import response;


var url = "http://172.17.192.99/throgh-analysis/api/carbon/prov_by_month";
var resu = http.connect(url).param("ym",ym).get();
if (resu.getBody() == null) {
    return [];
}

var list = resu.getBody().get("data");
var code = resu.getBody().get("code");
var message = resu.getBody().get("message");
var timestamp =resu.getBody().get("timestamp");
var requestTime = resu.getBody().get("requestTime");
var executeTime = resu.getBody().get("executeTime");
return response.json({
    code: code,   
    message: message,
    data: list,
    timestamp:timestamp,
    requestTime: requestTime,
    executeTime: executeTime
});