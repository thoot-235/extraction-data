{
  "properties" : { },
  "id" : "5b53f65f8b6c46089a65b12a039e43b0",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "气象站方搜",
  "createTime" : null,
  "updateTime" : 1691749538586,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getlistWeatherStationFs",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"fsList\":[\r\n        \"(110.04332420703118,30.55579864290877)\",\r\n        \"(117.73375389453118,31.533582013671833)\",\r\n        \"(118.82140037890618,28.116833966796833)\",\r\n        \"(111.29576561328118,27.402722638671833)\",\r\n        \"(110.04332420703118,30.55579864290877)\"\r\n    ],\r\n    \"current\":1,\r\n    \"size\":10,\r\n    \"swzmc\":\"\"\r\n    \r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1683185769937,\n    \"executeTime\": 49\n}",
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
      "name" : "fsList",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Array",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "",
        "value" : "(110.04332420703118,30.55579864290877)",
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
      "name" : "swzmc",
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
    "type" : null,
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
      "type" : null,
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
      "dataType" : "Object",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "timestamp",
      "value" : "1683185769937",
      "description" : "",
      "required" : false,
      "dataType" : "Long",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "executeTime",
      "value" : "49",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
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

var fsList="";
for(val in body.fsList){
    fsList = fsList +val.replace(","," ").replace("(","").replace(")","") +",";
}
fsList=fsList.substring(0,fsList.length()-1);



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
     where
           
        public.ST_Contains(
public.st_geometryfromtext ('polygon (("""+fsList+"""))',4326) ,
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
