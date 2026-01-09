{
  "properties" : { },
  "id" : "44e0b567f85d4dcf8465def0ccff7370",
  "script" : null,
  "groupId" : "39ce103c23184972a79a5498216c3525",
  "name" : "获取航道水深本年度周次",
  "createTime" : null,
  "updateTime" : 1743408836902,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getChannelDeepWeek",
  "method" : "GET",
  "parameters" : [ {
    "name" : "ybYear",
    "value" : "2024",
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
  "responseBody" : "{\n    \"code\": 200,\n    \"message\": \"success\",\n    \"data\": [{\n        \"ybzc\": \"52\"\n    }, {\n        \"ybzc\": \"51\"\n    }, {\n        \"ybzc\": \"50\"\n    }, {\n        \"ybzc\": \"49\"\n    }, {\n        \"ybzc\": \"48\"\n    }]\n}",
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
      "name" : "code",
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
      "name" : "message",
      "value" : "success",
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
          "name" : "ybzc",
          "value" : "52",
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

import response;

var  sql  ="""select  YBZC from ODS_HS_SHARE.Hd_Hdzybcdfwb_New WHERE  YB_YEAR = #{ybYear}
--AND YBZC =( SELECT MAX(YBZC) FROM  ODS_HS_SHARE.Hd_Hdzybcdfwb_New WHERE  YB_YEAR= TO_CHAR(sysdate,'YYYY') ) 
AND  ORDERS IN ('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16') 
GROUP BY YBZC ORDER  BY  YBZC desc
"""

var reMapList=db.ods_data.camel().select(sql);

return response.json({
        code: 200,
        message: "success",
        data: reMapList,
       

});