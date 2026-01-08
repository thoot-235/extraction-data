{
  "properties" : { },
  "id" : "ba80732bc2374f5794ebc46e53fe7e9d",
  "script" : null,
  "groupId" : "c3e4a1defbdf48388a2db810ef04f628",
  "name" : "船员平均工资",
  "createTime" : null,
  "updateTime" : 1763690333801,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getSalaryAverage",
  "method" : "GET",
  "parameters" : [ {
    "name" : "yearq",
    "value" : "25-Q3",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"yearq\": \"25年第二季度\",\n    \"data\": [{\n        \"positionType\": \"船长\",\n        \"comonGoods\": \"12242\",\n        \"liquidCargo\": \"14395\",\n        \"containerDeclare\": \"16284\",\n        \"roRoGoods\": \"11867\",\n        \"cruiseTrans\": \"13400\",\n        \"riverSeaClassOne\": \"42292\",\n        \"riverSeaClassTwo\": \"37571\"\n    }, {\n        \"positionType\": \"大副\",\n        \"comonGoods\": \"10180\",\n        \"liquidCargo\": \"12472\",\n        \"containerDeclare\": \"13951\",\n        \"roRoGoods\": \"10324\",\n        \"cruiseTrans\": \"10113\",\n        \"riverSeaClassOne\": \"30519\",\n        \"riverSeaClassTwo\": \"29714\"\n    }, {\n        \"positionType\": \"二副\",\n        \"comonGoods\": \"8649\",\n        \"liquidCargo\": \"10992\",\n        \"containerDeclare\": \"12193\",\n        \"roRoGoods\": \"8324\",\n        \"cruiseTrans\": \"8895\",\n        \"riverSeaClassOne\": \"20353\",\n        \"riverSeaClassTwo\": \"20167\"\n    }, {\n        \"positionType\": \"三副\",\n        \"comonGoods\": \"7302\",\n        \"liquidCargo\": \"9712\",\n        \"containerDeclare\": \"9295\",\n        \"roRoGoods\": \"6133\",\n        \"cruiseTrans\": \"7808\",\n        \"riverSeaClassOne\": \"14300\",\n        \"riverSeaClassTwo\": \"15000\"\n    }, {\n        \"positionType\": \"水手\",\n        \"comonGoods\": \"4712\",\n        \"liquidCargo\": \"6381\",\n        \"containerDeclare\": \"7150\",\n        \"roRoGoods\": \"4882\",\n        \"cruiseTrans\": \"5105\",\n        \"riverSeaClassOne\": \"8308\",\n        \"riverSeaClassTwo\": \"8357\"\n    }, {\n        \"positionType\": \"轮机长\",\n        \"comonGoods\": \"10200\",\n        \"liquidCargo\": \"12260\",\n        \"containerDeclare\": \"14131\",\n        \"roRoGoods\": \"10739\",\n        \"cruiseTrans\": \"12102\",\n        \"riverSeaClassOne\": \"33775\",\n        \"riverSeaClassTwo\": \"30429\"\n    }, {\n        \"positionType\": \"大管轮\",\n        \"comonGoods\": \"8297\",\n        \"liquidCargo\": \"10586\",\n        \"containerDeclare\": \"12353\",\n        \"roRoGoods\": \"8782\",\n        \"cruiseTrans\": \"10302\",\n        \"riverSeaClassOne\": \"25491\",\n        \"riverSeaClassTwo\": \"24286\"\n    }, {\n        \"positionType\": \"二管轮\",\n        \"comonGoods\": \"7142\",\n        \"liquidCargo\": \"9078\",\n        \"containerDeclare\": \"11336\",\n        \"roRoGoods\": \"7753\",\n        \"cruiseTrans\": \"8684\",\n        \"riverSeaClassOne\": \"16576\",\n        \"riverSeaClassTwo\": \"19000\"\n    }, {\n        \"positionType\": \"三管轮\",\n        \"comonGoods\": \"6981\",\n        \"liquidCargo\": \"8225\",\n        \"containerDeclare\": \"9548\",\n        \"roRoGoods\": \"7591\",\n        \"cruiseTrans\": \"7547\",\n        \"riverSeaClassOne\": \"13164\",\n        \"riverSeaClassTwo\": \"15000\"\n    }, {\n        \"positionType\": \"机工\",\n        \"comonGoods\": \"4796\",\n        \"liquidCargo\": \"6822\",\n        \"containerDeclare\": \"7161\",\n        \"roRoGoods\": \"4967\",\n        \"cruiseTrans\": \"5513\",\n        \"riverSeaClassOne\": \"8308\",\n        \"riverSeaClassTwo\": \"8457\"\n    }, {\n        \"positionType\": \"船员岗位平均工资\",\n        \"comonGoods\": \"8050\",\n        \"liquidCargo\": \"10092\",\n        \"containerDeclare\": \"11340\",\n        \"roRoGoods\": \"8136\",\n        \"cruiseTrans\": \"8947\",\n        \"riverSeaClassOne\": \"21308\",\n        \"riverSeaClassTwo\": \"20798\"\n    }]\n}",
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
      "name" : "yearq",
      "value" : "25年第二季度",
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
          "name" : "positionType",
          "value" : "船长",
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
          "name" : "comonGoods",
          "value" : "12242",
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
          "name" : "liquidCargo",
          "value" : "14395",
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
          "name" : "containerDeclare",
          "value" : "16284",
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
          "name" : "roRoGoods",
          "value" : "11867",
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
          "name" : "cruiseTrans",
          "value" : "13400",
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
          "name" : "riverSeaClassOne",
          "value" : "42292",
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
          "name" : "riverSeaClassTwo",
          "value" : "37571",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : null,
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
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;




var  sql ="""
select 
POSITION_TYPE ,
COMON_GOODS ,
LIQUID_CARGO ,
CONTAINER_DECLARE,
RO_RO_GOODS  ,
CRUISE_TRANS ,
RIVER_SEA_CLASS_ONE ,
RIVER_SEA_CLASS_TWO
from  ods_hs_share.crew_weges where  QUARTER_YEAR='20'||#{yearq}

"""

var sqlRe=db.ods_data.camel().select(sql);

for(item in sqlRe){
  item.get
}

yearq=yearq.replace("-","年");
if (yearq.indexOf("Q1")!=-1){
   yearq=yearq.replace("Q1","第一季度") 
    
}
if (yearq.indexOf("Q2")!=-1){
   yearq=yearq.replace("Q2","第二季度") 
    
}
if (yearq.indexOf("Q3")!=-1){
  yearq= yearq.replace("Q3","第三季度") 
    
}
if (yearq.indexOf("Q4")!=-1){
   yearq=yearq.replace("Q4","第四季度") 
    
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    yearq:yearq,
    data: sqlRe
});