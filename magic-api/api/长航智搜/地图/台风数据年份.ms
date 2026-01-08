{
  "properties" : { },
  "id" : "06db695a449447128a01c2b8a32855ac",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "台风数据年份",
  "createTime" : 1690183846722,
  "updateTime" : 1691749538429,
  "lock" : null,
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getTipYear",
  "method" : "GET",
  "parameters" : [ ],
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

import "java.util.stream.Collectors" as Collectors;

var Sql = """ select
       distinct  to_char(t.arrival_time ,'yyyy')  as year
        from
        qx_typhoon.typhoon t order by to_char(t.arrival_time ,'yyyy')  desc
        """;
var backMap;
var list = db.ais.select(Sql);

import response;
return response.json({
    code: 200,
    success: "查询成功",
    data: list

});