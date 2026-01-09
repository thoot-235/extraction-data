{
  "properties" : { },
  "id" : "31b6d8e4f2d34f58bb4e8811df0d82b8",
  "script" : null,
  "groupId" : "f5998905462549148b80f5b1041a25ae",
  "name" : "集装箱运价数据",
  "createTime" : null,
  "updateTime" : 1742803307558,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getContainersIndexData",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1741687748569,\n    \"executeTime\": 117\n}",
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
      "value" : "-1",
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
      "value" : "系统内部出现错误",
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
      "children" : [ ]
    }, {
      "name" : "timestamp",
      "value" : "1741687748569",
      "description" : "",
      "required" : false,
      "dataType" : "Long",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "executeTime",
      "value" : "117",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
      "type" : "",
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
import response;

 

 //1、查出表中最新十二个月的日期
var ymsql="""
select  YEAR_MONTH from  (
    select  distinct YEAR_MONTH from ods_hs_share.container_cost 
    where is_delete='0'
    order by  YEAR_MONTH desc)
    where rownum<=12

"""


 var ymlist = db.ods_data.camel().select(ymsql);
var joins=[];
var ymre=[]
var i=1;
for (item in ymlist){
    ymre.add(item.get("yearMonth"))
    joins.add({"table":"ods_hs_share.container_cost","num":"b"+i,"condition":"a.CONTAINER_ROUTE = b"+i+".CONTAINER_ROUTE","andCon":"b"+i+".YEAR_MONTH='"+item.get("yearMonth")+"'","colum":"b"+i+".COST_NUM as b"+i})

    i=i+1;
}
var  sql ="""
SELECT
	a.container_route CONTAINER_ROUTE,
  a.inner_out,
	<foreach item="join" collection="joins" open="" separator="," close="">
    ${join.colum} 
  </foreach>
FROM
	( select    distinct CONTAINER_ROUTE,inner_out  from  ods_hs_share.container_cost  where is_delete='0' and YEAR_MONTH in (
		select  YEAR_MONTH from  (
    select  distinct YEAR_MONTH from ods_hs_share.container_cost where is_delete='0'  order by  YEAR_MONTH desc) where rownum<=12
		) ) a
<foreach item="join" collection="joins" open="" separator="" close="">
    LEFT JOIN ${join.table}  ${join.num} ON ${join.condition}
  </foreach>
WHERE 1=1
 <foreach item="join" collection="joins" open="" separator="" close="">
    and  ${join.andCon} 
  </foreach>
order  by  inner_out

"""
var list = db.ods_data.camel().select(sql);

var re={};

re.put("data",list);
re.put("ym",ymre);

return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: re
});