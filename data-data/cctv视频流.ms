{
  "properties" : { },
  "id" : "39bf4ff19d9d4f578fa38830ab07efcf",
  "script" : null,
  "groupId" : "26b088cc467c4fc0a3f16fed3416308b",
  "name" : "cctv视频流",
  "createTime" : null,
  "updateTime" : 1764555054188,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getCctvWs",
  "method" : "GET",
  "parameters" : [ {
    "name" : "code",
    "value" : "48",
    "description" : "",
    "required" : true,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "type",
    "value" : "1",
    "description" : "1内网 2外网",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "1",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"取流成功\",\n    \"result\": {\n        \"url\": \"wss://jsc.cjhy.com.cn:6014/proxy/jsc.cjhy.com.cn:559/openUrl/TBMWzK0\",\n        \"cctvName\": \"北线船闸\"\n    }\n}",
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
      "dataType" : "Object",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "url",
        "value" : "wss://jsc.cjhy.com.cn:6014/proxy/jsc.cjhy.com.cn:559/openUrl/TBMWzK0",
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
        "name" : "cctvName",
        "value" : "北线船闸",
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
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;
import http;
//19 20
//获取视频唯一编码
var map = {};
var sql ;
if(code.length() > 3){
  sql = """
    select indexcode,name from dict_data.HIKVISION_CCTV_DATA_131 where indexcode = #{code}
  """
}else{
  sql = """
    select indexcode,name from dict_data.HIKVISION_CCTV_DATA_131 where orders = #{code}
  """
}
   

var map = db.biz_data.camel().selectOne(sql);
var indexcode = map.get("indexcode");
var cctvName = map.get("name");

var url = "http://172.17.192.46:8080/dts/artemis/getCamersPreviewURLS?indexCode="
if(indexcode != null || indexcode != ""){
  url = url + indexcode;
  if(type == "2"){
    url = url + "&protocol=wss";
  }
}else{
  return response.json({
        resultCode: 500,
        resultMsg: "取流失败",
        result: null
  });
}

var res = http.connect(url).get();
if(res.getBody().get("data")==null){
  return response.json({
        resultCode: 500,
        resultMsg: "取流失败",
        result: null
  });
}
var wsUrl = res.getBody().get("data");
var videoUrl = "";
videoUrl = wsUrl.get("url");
if(videoUrl == null || videoUrl == ""){
  return response.json({
        resultCode: 500,
        resultMsg: "取流失败",
        result: null
  });
}
if(type == "2"){
  videoUrl = videoUrl.replace("172.17.14.22","jsc.cjhy.com.cn");
  wsUrl.put("url",videoUrl);
}

wsUrl.put("cctvName",cctvName);


return response.json({
        resultCode: 200,
        resultMsg: "取流成功",
        result: wsUrl
});