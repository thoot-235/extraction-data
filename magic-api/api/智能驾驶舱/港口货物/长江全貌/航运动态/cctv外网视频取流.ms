{
  "properties" : { },
  "id" : "027fffbc39c141d19f3ad7f7270c80dd",
  "script" : null,
  "groupId" : "26b088cc467c4fc0a3f16fed3416308b",
  "name" : "cctv外网视频取流",
  "createTime" : null,
  "updateTime" : 1763022776297,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getOutCctvFlv",
  "method" : "GET",
  "parameters" : [ {
    "name" : "code",
    "value" : "2",
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
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1763016901613,\n    \"executeTime\": 10224\n}",
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
      "name" : "code",
      "value" : "-1",
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
      "name" : "message",
      "value" : "系统内部出现错误",
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
      "name" : "data",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Object",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "timestamp",
      "value" : "1763016901613",
      "description" : "",
      "required" : false,
      "dataType" : "Long",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "executeTime",
      "value" : "10224",
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
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;
import http;
import com.alibaba.fastjson.JSONObject;
import org.ssssssss.magic.utils.CommonUtil;

//19 20
//获取视频唯一编码
var sql = """
  select indexcode,name from dict_data.HIKVISION_CCTV_DATA_131 where orders = #{code}
"""
var map = db.biz_data.camel().selectOne(sql);
var indexcode = map.get("indexcode");
var cctvName = map.get("name");
log.info(map.get("indexcode")::string);
log.info(map.get("name")::string);

if(indexcode == null || indexcode == ""){
    return response.json({
        resultCode: 500,
        resultMsg: "取流失败",
        result: null
    });
}

/**
 * 调用第三方的token接口
 */
var username = "beiming";
//var password = "beiming@2024";
var password = "aLD53zXivud45k8ztSVoduVbsvZKKFp9FZ0GIIB7v42bm0vVfd6-kTHvk7Kv75v49YJKfX_cUnbrQUU0rfdGrA";
//var tokenUrl = "https://172.17.14.80:9940/login";
var tokenUrl = "https://jsc-cctv.cjhy.com.cn:9940/login";
//var tokenUrl = "https://172.17.14.80:9940/login?username=beiming&password=aLD53zXivud45k8ztSVoduVbsvZKKFp9FZ0GIIB7v42bm0vVfd6-kTHvk7Kv75v49YJKfX_cUnbrQUU0rfdGrA";
var tokenMap = http.connect(tokenUrl).param("username",username).param("password",password).post();
//var tokenMap = http.connect(tokenUrl).post();
var token = tokenMap.getBody().get("token");
if(token == null || token == ""){
  return response.json({
        resultCode: 500,
        resultMsg: "token获取失败",
        result: null
    });
}
log.info("----------------token----------------------"+token);

/**
 * 调用外网取流接口
 */
//var cctvUrl = "http://172.17.14.80:9940/yunen/camera/get_camera_stream"
var cctvUrl = "https://jsc-cctv.cjhy.com.cn:9940/yunen/camera/get_camera_stream"
var reqBody = {"cameraId": indexcode};
var cctvMap = http.connect(cctvUrl).header("access_token",token).body(reqBody).post();
if(cctvMap.getBody().get("data") == null){
  return response.json({
        resultCode: 500,
        resultMsg: "取流失败",
        result: null
  });
}
var cctvUrl = cctvMap.getBody().get("data").get(0).get("https-flv");
var resMap = {};
resMap.put("url",cctvUrl.replace("172.17.14.80","Jsc-cctv.cjhy.com.cn"));
resMap.put("cctvName",cctvName);

return response.json({
        resultCode: 200,
        resultMsg: "取流成功",
        result: resMap
});