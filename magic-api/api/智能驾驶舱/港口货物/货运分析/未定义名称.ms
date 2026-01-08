{
  "properties" : { },
  "id" : "677b17c511a24dabb657a9ff193e66db",
  "script" : null,
  "groupId" : "c41bce8c9d11400293c67cb04153e13a",
  "name" : "未定义名称",
  "createTime" : 1751963085329,
  "updateTime" : null,
  "lock" : null,
  "createBy" : "admin",
  "updateBy" : null,
  "path" : "/getCargoFlowDirectionDetailLx",
  "method" : "GET",
  "parameters" : [ {
    "name" : "portName",
    "value" : "CHONGQING",
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
  "responseBody" : null,
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : null
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;
import http;

var url = "http://172.17.192.99/throgh-analysis/api/bm/getCargoFlowDirectionDetail";

var res = http.connect(url).param("portName",portName).get();
if(res.getBody() == null){
    return [];
}

var list = res.getBody().get("result");
var resultCode = res.getBody().get("resultCode");
var resultMsg = res.getBody().get("resultMsg");
return response.json({
        resultCode: resultCode,
        resultMsg: resultMsg,
        result: list
});