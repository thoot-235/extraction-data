{
  "properties" : { },
  "id" : "37c3d91d938944e686faadd3d8afe37a",
  "script" : null,
  "groupId" : "26b088cc467c4fc0a3f16fed3416308b",
  "name" : "cctv视频数",
  "createTime" : null,
  "updateTime" : 1739148878852,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getCctvNums",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : null,
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
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;
import http;

//获取视频唯一编码
var cctvNumsSql = """
  select count(1) from sub_biz_data.hikvision_cctv_data
"""

var cctvNums =  db.biz_data.selectInt(cctvNumsSql);
var map = {};
map.put("cctvNums",cctvNums)


return response.json({
        resultCode: 200,
        resultMsg: "取流成功",
        result: map
});