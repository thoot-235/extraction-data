{
  "properties" : { },
  "id" : "ea59baeaaea14b1ea83d3435e79d6944",
  "script" : null,
  "groupId" : "39ce103c23184972a79a5498216c3525",
  "name" : "气象站方搜",
  "createTime" : null,
  "updateTime" : 1700304395398,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getlistWeatherStationFs",
  "method" : "GET",
  "parameters" : [ {
    "name" : "code",
    "value" : "9",
    "description" : "",
    "required" : true,
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
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 200,\n    \"success\": \"查询成功\",\n    \"data\": {\n        \"records\": [{\n            \"totalCount\": 14,\n            \"id\": \"ECA0B3416B1BEAAEE050007F010031E8\",\n            \"stationname\": \"镇江113至1浮南岸\",\n            \"longitude\": \"119.5369400000\",\n            \"latitude\": \"32.1936100000\"\n        }, {\n            \"totalCount\": 14,\n            \"id\": \"ECA0B3416B1CEAAEE050007F010031E8\",\n            \"stationname\": \"扬州120浮北岸\",\n            \"longitude\": \"119.2188900000\",\n            \"latitude\": \"32.2350000000\"\n        }, {\n            \"totalCount\": 14,\n            \"id\": \"ECA0B3416B1DEAAEE050007F010031E8\",\n            \"stationname\": \"南京137浮北岸\",\n            \"longitude\": \"118.8788900000\",\n            \"latitude\": \"32.1900000000\"\n        }, {\n            \"totalCount\": 14,\n            \"id\": \"ECA0B3416B1EEAAEE050007F010031E8\",\n            \"stationname\": \"南京四桥上游南岸\",\n            \"longitude\": \"118.9355550000\",\n            \"latitude\": \"32.1686100000\"\n        }, {\n            \"totalCount\": 14,\n            \"id\": \"ECA0B3416B1FEAAEE050007F010031E8\",\n            \"stationname\": \"镇江94至95浮北岸\",\n            \"longitude\": \"119.6788900000\",\n            \"latitude\": \"32.2650000000\"\n        }, {\n            \"totalCount\": 14,\n            \"id\": \"ECA0B3416B25EAAEE050007F010031E8\",\n            \"stationname\": \"镇江112浮南岸\",\n            \"longitude\": \"119.3525000000\",\n            \"latitude\": \"32.1941680000\"\n        }, {\n            \"totalCount\": 14,\n            \"id\": \"ECA0B3416B27EAAEE050007F010031E8\",\n            \"stationname\": \"南京长江大桥南岸\",\n            \"longitude\": \"118.7347200000\",\n            \"latitude\": \"32.1022220000\"\n        }, {\n            \"totalCount\": 14,\n            \"id\": \"ECA0B3416B2BEAAEE050007F010031E8\",\n            \"stationname\": \"扬州122浮北岸\",\n            \"longitude\": \"119.4641650000\",\n            \"latitude\": \"32.2761100000\"\n        }, {\n            \"totalCount\": 14,\n            \"id\": \"ECA0B3416B2CEAAEE050007F010031E8\",\n            \"stationname\": \"镇江95浮北岸\",\n            \"longitude\": \"119.6758350000\",\n            \"latitude\": \"32.2438900000\"\n        }, {\n            \"totalCount\": 14,\n            \"id\": \"ECA0B3416B2DEAAEE050007F010031E8\",\n            \"stationname\": \"镇江98浮南岸\",\n            \"longitude\": \"119.6400850000\",\n            \"latitude\": \"32.1954830000\"\n        }, {\n            \"totalCount\": 14,\n            \"id\": \"ECA0B3416B33EAAEE050007F010031E8\",\n            \"stationname\": \"泰州88至87浮北岸\",\n            \"longitude\": \"119.8433300000\",\n            \"latitude\": \"32.2994420000\"\n        }, {\n            \"totalCount\": 14,\n            \"id\": \"ECA0B3416B37EAAEE050007F010031E8\",\n            \"stationname\": \"扬州润扬大桥北汊北岸\",\n            \"longitude\": \"119.3602750000\",\n            \"latitude\": \"32.2322240000\"\n        }, {\n            \"totalCount\": 14,\n            \"id\": \"ECA0B3416B38EAAEE050007F010031E8\",\n            \"stationname\": \"镇江117至116浮南岸\",\n            \"longitude\": \"119.3016700000\",\n            \"latitude\": \"32.1863900000\"\n        }, {\n            \"totalCount\": 14,\n            \"id\": \"ECA0B3416B39EAAEE050007F010031E8\",\n            \"stationname\": \"南京131浮南岸\",\n            \"longitude\": \"118.9445170000\",\n            \"latitude\": \"32.1706860000\"\n        }],\n        \"total\": 14\n    }\n}",
  "description" : "",
  "requestBodyDefinition" : {
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
            "name" : "totalCount",
            "value" : "14",
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
            "name" : "id",
            "value" : "ECA0B3416B1BEAAEE050007F010031E8",
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
            "name" : "stationname",
            "value" : "镇江113至1浮南岸",
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
            "name" : "longitude",
            "value" : "119.5369400000",
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
            "name" : "latitude",
            "value" : "32.1936100000",
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
      }, {
        "name" : "total",
        "value" : "14",
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

//获取方搜的点位信息
var fsListSql = """
    select point_lon_lat from chais.cockpit_squa_search_point where id = #{code}
"""
var fsList = db.ais.selectValue(fsListSql);
fsList = fsList::string;
fsList = fsList.replace(" ","").replace(","," ").replace("[","").replace("]","").replace("，",",")

var Sql = """
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
        ?{stationname,  and stationname like  '%'||#{stationname}||'%' }
        """;


var list=db.ais.camel().select(Sql);
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
