{
  "properties" : { },
  "id" : "b409b6c348a041f099f7c14bd2360b3a",
  "script" : null,
  "groupId" : "2617acd8a59b4b858be8913ba63b1f30",
  "name" : "ai调用接口",
  "createTime" : null,
  "updateTime" : 1702114023816,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "getAiApiTest",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"input\":\"航道\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"output\": \"\\\"1、安航58008去年的总运量为27300吨。\\\\n2、根据数据分析，安航58008去年全年的运输量相较于前年有所下降，减少了30.69%。从月度数据来看，每个月的运量几乎都有所减少，特别是下半年（7月至12月）降幅更为明显。此外，船舶营运效率指标也显示，去年全年的营运率和负载率都较前年有所下降，而闲置率有所上升。这些数据反映了安航58008去年运营情况的不佳，可能与市场需求、竞争环境等因素有关。\\\"\",\n    \"callback_events\": [],\n    \"metadata\": {\n        \"run_id\": \"9adc008b-9cee-48cb-abd3-0b83eece8269\"\n    }\n}",
  "description" : "",
  "requestBodyDefinition" : {
    "name" : "",
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ {
      "name" : "input",
      "value" : "航道",
      "description" : "",
      "required" : false,
      "dataType" : "String",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    } ]
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
      "name" : "output",
      "value" : "\\\"1、安航58008去年的总运量为27300吨。\\\\n2、根据数据分析，安航58008去年全年的运输量相较于前年有所下降，减少了30.69%。从月度数据来看，每个月的运量几乎都有所减少，特别是下半年（7月至12月）降幅更为明显。此外，船舶营运效率指标也显示，去年全年的营运率和负载率都较前年有所下降，而闲置率有所上升。这些数据反映了安航58008去年运营情况的不佳，可能与市场需求、竞争环境等因素有关。\\\"",
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
      "name" : "callback_events",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Array",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "metadata",
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
        "name" : "run_id",
        "value" : "9adc008b-9cee-48cb-abd3-0b83eece8269",
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
  }
}
================================
import log;
import response;
import http;

var input = body.input;

var url = "http://172.17.105.194:8001/ch_chain/invoke"

var res = http.connect(url).body({"input": input}).post();

var output = res.getBody().get("output");

return response.json(res.getBody());