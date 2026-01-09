{
  "properties" : { },
  "id" : "8ce8a0fec5004a45960c397098867c3c",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "气象站圆搜",
  "createTime" : null,
  "updateTime" : 1691749538573,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getlistWeatherStationYS",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"ysLat\": \"30.51734674592841\",\r\n    \"ysLon\": \"114.66513512011711\",\r\n   \"ysRadius\": \"100.704860928545358\",\r\n    \"current\":1,\r\n    \"size\":10,\r\n    \"stationname\":\"\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 200,\n    \"success\": \"查询成功\",\n    \"data\": {\n        \"records\": [],\n        \"total\": 0\n    }\n}",
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
      "name" : "ysLat",
      "value" : "30.51734674592841",
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
      "name" : "ysLon",
      "value" : "114.66513512011711",
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
      "name" : "ysRadius",
      "value" : "100.704860928545358",
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
      "name" : "current",
      "value" : "1",
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
      "name" : "size",
      "value" : "10",
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
      "name" : "stationname",
      "value" : "",
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
      "name" : "success",
      "value" : "查询成功",
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
        "name" : "records",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : "",
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "total",
        "value" : "0",
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
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;



var ysLat=body.ysLat;
var ysLon=body.ysLon;
var ysRadius=body.ysRadius;

var limit=""" ) a 
limit 
        (#{body.size}) ::bigint  offset 
         ((#{body.current})  ::bigint-1) * (#{body.size}) ::bigint 
"""      ;  

var Sql = """

select * from (
          select count(*) OVER() total_count ,
        id,
         stationname,
         longitude,
         latitude
      from search_dmgd_nws_object
        WHERE   
        public.st_contains(
public.st_buffer(public.st_geometryfromtext ('POINT ("""+ysLon+""" """+ysLat+""")',4326),"""+ysRadius+"""),
public.st_geometryfromtext (concat('POINT (',longitude,' ',latitude,')'),4326)    
)
 ?{body.stationname,  and stationname like  '%'||#{body.stationname}||'%' }

        """;


var list=db.ais.camel().select(Sql+limit);
var totalCount=0;



if(list==null){
   list=[];
} 
for(item in list){ 
    totalCount = item.get("totalCount");
}     
var back={
        "records":list,
        "total":Integer.parseInt(totalCount::string)
}

import response;
return response.json({
    code: 200,
    success: "查询成功",
    data: back 

});
