{
  "properties" : { },
  "id" : "70def996441a44d3a31b83bfb35140db",
  "script" : null,
  "groupId" : "39ce103c23184972a79a5498216c3525",
  "name" : "获取航道水深年度",
  "createTime" : null,
  "updateTime" : 1705889119926,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getChannelDeepYera",
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
import 'com.alibaba.fastjson.JSON' as JSONA
import com.alibaba.fastjson.JSONArray
import com.alibaba.fastjson.JSONObject
import log;
import response;

var  sql  ="""select  YB_YEAR from ODS_HS_SHARE.Hd_Hdzybcdfwb_New 
where    ORDERS IN ('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16') 
GROUP BY YB_YEAR ORDER  BY  YB_YEAR desc
"""

var reMapList=db.ods_data.camel().select(sql);

return response.json({
        code: 200,
        message: "success",
        data: reMapList,
       

});