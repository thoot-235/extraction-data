{
  "properties" : { },
  "id" : "1102c70c619740dcb672ea65c571ba6d",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "获取全球港口列表",
  "createTime" : null,
  "updateTime" : 1740120740310,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getCompangList",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"gkzwmc\":\"重庆\",\r\n    \"gj\":\"中国\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : null,
  "description" : "",
  "requestBodyDefinition" : {
    "name" : "root",
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
      "name" : "gkzwmc",
      "value" : "重庆",
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
      "name" : "gj",
      "value" : "中国",
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



var Sql = """
            select id           as "id",
                --gkdm         "gkdm",
                gkzwmc       "gkzwmc",
                --gkywmc       "gkywmc",
                --gj           "gj",
                hx           "hx",
                --gjywmc       "gjywmc",
                --js           "js",
                lon          "lon",
                lat          "lat",
                --clbz         "clbz",
                country_code "country_code"
                --,ifAddFlag    "ifAddFlag"
            from SEARCH_GK_QQGKQD b
            where 1 = 1
            ?{body.gkzwmc, and b.gkzwmc like  '%'||#{body.gkzwmc}||'%' }
            ?{body.gj,and b.gj like  '%'||#{body.gj}||'%' }
        """;
var list=db.ais.select(Sql);
if(list==null||list==''){
   list=[];
}
import response;
return response.json({
    code: 200,
    success: "查询成功",
    data: list 

});
