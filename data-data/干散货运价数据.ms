{
  "properties" : { },
  "id" : "86df7b3896cd441082bb7e17d02dc3f6",
  "script" : null,
  "groupId" : "f5998905462549148b80f5b1041a25ae",
  "name" : "干散货运价数据",
  "createTime" : null,
  "updateTime" : 1755744443785,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getDryBulkIndexData",
  "method" : "GET",
  "parameters" : [ {
    "name" : "costType",
    "value" : "coal",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"data\": [{\n            \"routeType\": \"九江-张家港（1-2万DWT）\",\n            \"b1\": \"8.00\",\n            \"b2\": \"7.55\",\n            \"b3\": \"9.30\",\n            \"b4\": \"9.20\",\n            \"b5\": \"9.69\",\n            \"b6\": \"11.80\",\n            \"b7\": \"11.73\",\n            \"b8\": \"9.68\",\n            \"b9\": \"9.69\",\n            \"b10\": \"8.55\",\n            \"b11\": \"10.10\",\n            \"b12\": \"8.87\"\n        }, {\n            \"routeType\": \"铜陵-南通（0.3-0.6万DWT）\",\n            \"b1\": \"10.60\",\n            \"b2\": \"10.50\",\n            \"b3\": \"10.00\",\n            \"b4\": \"9.70\",\n            \"b5\": \"9.60\",\n            \"b6\": \"11.22\",\n            \"b7\": \"11.14\",\n            \"b8\": \"11.22\",\n            \"b9\": \"11.22\",\n            \"b10\": \"11.22\",\n            \"b11\": \"11.22\",\n            \"b12\": \"11.22\"\n        }],\n        \"ym\": [\"202506\", \"202505\", \"202504\", \"202503\", \"202502\", \"202501\", \"202412\", \"202411\", \"202410\", \"202409\", \"202408\", \"202407\"]\n    }\n}",
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
      "name" : "resultCode",
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
      "name" : "resultMsg",
      "value" : "查询成功",
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
      "name" : "result",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Array",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
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
        "children" : [ {
          "name" : "",
          "value" : "",
          "description" : "",
          "required" : false,
          "dataType" : "Object",
          "type" : null,
          "defaultValue" : null,
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ {
            "name" : "routeType",
            "value" : "九江-张家港（1-2万DWT）",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "b1",
            "value" : "8.00",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "b2",
            "value" : "7.55",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "b3",
            "value" : "9.30",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "b4",
            "value" : "9.20",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "b5",
            "value" : "9.69",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "b6",
            "value" : "11.80",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "b7",
            "value" : "11.73",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "b8",
            "value" : "9.68",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "b9",
            "value" : "9.69",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "b10",
            "value" : "8.55",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "b11",
            "value" : "10.10",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "b12",
            "value" : "8.87",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          } ]
        } ]
      }, {
        "name" : "ym",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : null,
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ {
          "name" : "",
          "value" : "202506",
          "description" : "",
          "required" : false,
          "dataType" : "Object",
          "type" : null,
          "defaultValue" : null,
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
 import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;



if(costType=="coal"){
    costType="煤炭航线运价"
}else if(costType=="metal"){
    costType="金属矿石航线运价"
}else if(costType=="mine"){
    costType="矿建材料"
}else if(costType=="noMetal"){
    costType="非金属矿石"
}



//1、查出表中最新十二个月的日期
var ymsql="""
select  YEAR_MONTH from  (
    select  distinct YEAR_MONTH from ods_hs_share.cargo_cost where  cost_type=#{costType} order by  YEAR_MONTH desc)
    where rownum<=12

"""


 var ymlist = db.ods_data.camel().select(ymsql);
var joins=[];
var ymre=[]
var i=1;
for (item in ymlist){
    ymre.add(item.get("yearMonth"))
    joins.add({"table":"ods_hs_share.cargo_cost","num":"b"+i,"condition":"a.route_type = b"+i+".route_type","andCon":"b"+i+".YEAR_MONTH='"+item.get("yearMonth")+"'","colum":"b"+i+".COST_NUM as b"+i})
   /* joins.add({"num":"b"+i})
    joins.add({"condition":"a.route_type = b"+i+".route_type"})
    joins.add({"andCon":"b"+i+".YEAR_MONTH='"+item.get("yearMonth")+"'"})
    joins.add({"colum":"b"+i+".COST_NUM as c"+i})*/
    i=i+1;
}



var  sql ="""
SELECT
	a.route_type route_type,

<foreach item="join" collection="joins" open="" separator="," close="">
    ${join.colum} 
  </foreach>

FROM
	 (
	select    distinct route_type  from  ods_hs_share.cargo_cost  where  YEAR_MONTH in (
		select  YEAR_MONTH from  (
    select  distinct YEAR_MONTH from ods_hs_share.cargo_cost  order by  YEAR_MONTH desc) where rownum<=12
		) and  cost_type=#{costType})  a
 <foreach item="join" collection="joins" open="" separator="" close="">
    LEFT JOIN ${join.table}  ${join.num} ON ${join.condition}
  </foreach>

WHERE 1=1
 <foreach item="join" collection="joins" open="" separator="" close="">
    and  ${join.andCon} 
  </foreach>

order by a.route_type 

"""


//
var list = db.ods_data.camel().select(sql);

var re={};

re.put("data",list);
re.put("ym",ymre);


return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: re
});