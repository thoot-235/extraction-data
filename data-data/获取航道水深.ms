{
  "properties" : { },
  "id" : "f3c825c8cbab4c40aa931c53896f8d1c",
  "script" : null,
  "groupId" : "39ce103c23184972a79a5498216c3525",
  "name" : "获取航道水深",
  "createTime" : null,
  "updateTime" : 1743408794082,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getChannelDeep",
  "method" : "GET",
  "parameters" : [ {
    "name" : "ybzc",
    "value" : "01",
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
    "name" : "ybYear",
    "value" : "2025",
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
  "responseBody" : "{\n    \"code\": 200,\n    \"message\": \"success\",\n    \"data\": []\n}",
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
      "name" : "message",
      "value" : "success",
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
      "dataType" : "Array",
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
import 'com.alibaba.fastjson.JSON' as JSONA
import com.alibaba.fastjson.JSONArray
import com.alibaba.fastjson.JSONObject
import log;
import response;


var sql ="""


select  ORDERS,HD_NAME,YBSS,JHSS,YBHK FROM   ODS_HS_SHARE.Hd_Hdzybcdfwb_New WHERE  YB_YEAR= TO_CHAR(sysdate,'YYYY') 
--AND YBZC =( SELECT MAX(YBZC) FROM  ODS_HS_SHARE.Hd_Hdzybcdfwb_New WHERE  YB_YEAR= TO_CHAR(sysdate,'YYYY') ) 
AND  ORDERS IN ('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16')
 and YBZC  = #{ybzc}
 and YB_YEAR = #{ybYear}

 ORDER  BY  ORDERS

"""
var reMapList=db.ods_data.camel().select(sql);


return response.json({
        code: 200,
        message: "success",
        data: reMapList,
       
});