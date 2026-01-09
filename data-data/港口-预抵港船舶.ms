{
  "properties" : { },
  "id" : "ca9d88dbef3841e88247e505abd06fba",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "港口-预抵港船舶",
  "createTime" : null,
  "updateTime" : 1706061862622,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getArrivePortShips",
  "method" : "GET",
  "parameters" : [ {
    "name" : "portName",
    "value" : "武汉",
    "description" : "",
    "required" : true,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "page",
    "value" : "1",
    "description" : "",
    "required" : true,
    "dataType" : "String",
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
    "required" : true,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "arriveOrLeave",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"list\": [{\n            \"rowno\": \"1\",\n            \"estimatedTime\": \"2024-01-24 10:10:00\",\n            \"shipId\": \"CN20129736492\",\n            \"shipNameCn\": \"荆淮99\",\n            \"shipNameEn\": \"JING HUAI 99\",\n            \"mmsi\": 413991126,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-01-24 06:08:53\",\n            \"actualCarryingCapacity\": \"600\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉国际集装箱有限公司1期\",\n            \"shipGrosston\": \"2043\",\n            \"shipBreadth\": \"13.2\",\n            \"shipDepth\": \"5.3\",\n            \"draftForward\": \"1.8\",\n            \"aftDraft\": \"2\",\n            \"typeCode\": \"\",\n            \"realContainerQay\": \"28\",\n            \"shipLength\": \"76.5\",\n            \"totalCount\": \"75\",\n            \"longitude\": 114.54396158854166,\n            \"latitude\": 30.669767252604167,\n            \"distance\": \"1.93\"\n        }, {\n            \"rowno\": \"2\",\n            \"estimatedTime\": \"2024-01-24 10:30:00\",\n            \"shipId\": \"CN20221104872\",\n            \"shipNameCn\": \"安达盛远\",\n            \"shipNameEn\": \"ANDASHENGYUAN\",\n            \"mmsi\": 413873658,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-01-24 06:21:57\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"王家屋干散货船舶锚地\",\n            \"shipGrosston\": \"2963\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"5.5\",\n            \"draftForward\": \"0.9\",\n            \"aftDraft\": \"1.8\",\n            \"typeCode\": \"\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"105\",\n            \"totalCount\": \"75\",\n            \"longitude\": 114.50327962239584,\n            \"latitude\": 30.68114013671875,\n            \"distance\": \"5.64\"\n        }, {\n            \"rowno\": \"3\",\n            \"estimatedTime\": \"2024-01-24 10:47:00\",\n            \"shipId\": \"CN20203270709\",\n            \"shipNameCn\": \"长喆66\",\n            \"shipNameEn\": \"CHANG ZHE 66\",\n            \"mmsi\": 413865038,\n            \"shipImo\": \"----\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-01-24 05:48:20\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"亿钧耀能新材码头\",\n            \"shipGrosston\": \"132\",\n            \"shipBreadth\": \"6.2\",\n            \"shipDepth\": \"2.6\",\n            \"draftForward\": \"0.7\",\n            \"aftDraft\": \"1\",\n            \"typeCode\": \"\",\n            \"realContainerQay\": \"0\",\n            \"shipLength\": \"28\",\n            \"totalCount\": \"75\",\n            \"longitude\": 114.21288248697917,\n            \"latitude\": 30.468682861328126,\n            \"distance\": \"38.59\"\n        }, {\n            \"rowno\": \"4\",\n            \"estimatedTime\": \"2024-01-24 11:00:00\",\n            \"shipId\": \"CN20156476144\",\n            \"shipNameCn\": \"振湘598\",\n            \"shipNameEn\": \"ZHEN XIANG 598\",\n            \"mmsi\": 413831931,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-01-24 02:13:32\",\n            \"actualCarryingCapacity\": \"2600\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉长航集团军山船厂\",\n            \"shipGrosston\": \"1900\",\n            \"shipBreadth\": \"14.86\",\n            \"shipDepth\": \"3.8\",\n            \"draftForward\": \"3\",\n            \"aftDraft\": \"3\",\n            \"typeCode\": \"\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"83.6\",\n            \"totalCount\": \"75\",\n            \"longitude\": 114.08853352864584,\n            \"latitude\": 30.276322428385416,\n            \"distance\": \"61.21\"\n        }, {\n            \"rowno\": \"5\",\n            \"estimatedTime\": \"2024-01-24 11:12:00\",\n            \"shipId\": \"CN20109885468\",\n            \"shipNameCn\": \"振荣989\",\n            \"shipNameEn\": \"ZHEN RONG 989\",\n            \"mmsi\": 413802692,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-01-24 07:08:37\",\n            \"actualCarryingCapacity\": \"1680\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"王家屋干散货船舶锚地\",\n            \"shipGrosston\": \"995\",\n            \"shipBreadth\": \"11.54\",\n            \"shipDepth\": \"4\",\n            \"draftForward\": \"3.2\",\n            \"aftDraft\": \"3.2\",\n            \"typeCode\": \"\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"69.85\",\n            \"totalCount\": \"75\",\n            \"longitude\": 114.4862548828125,\n            \"latitude\": 30.68064982096354,\n            \"distance\": \"7.05\"\n        }, {\n            \"rowno\": \"6\",\n            \"estimatedTime\": \"2024-01-24 11:35:00\",\n            \"shipId\": \"CN20143654481\",\n            \"shipNameCn\": \"融兴6\",\n            \"shipNameEn\": \"RONG XING 6\",\n            \"mmsi\": 413829412,\n            \"shipImo\": \"-\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-01-24 03:27:06\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"李家矶锚地\",\n            \"shipGrosston\": \"1802\",\n            \"shipBreadth\": \"15\",\n            \"shipDepth\": \"3.8\",\n            \"draftForward\": \"0.2\",\n            \"aftDraft\": \"1.4\",\n            \"typeCode\": \"\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"79.8\",\n            \"totalCount\": \"75\",\n            \"longitude\": 114.66554361979166,\n            \"latitude\": 30.57203369140625,\n            \"distance\": \"14.11\"\n        }, {\n            \"rowno\": \"7\",\n            \"estimatedTime\": \"2024-01-24 11:55:00\",\n            \"shipId\": \"CN20132992686\",\n            \"shipNameCn\": \"豫信货12285\",\n            \"shipNameEn\": \"YU XIN HUO 12285\",\n            \"mmsi\": 413819432,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-01-24 07:50:57\",\n            \"actualCarryingCapacity\": \"950\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉盛大码头\",\n            \"shipGrosston\": \"537\",\n            \"shipBreadth\": \"9.68\",\n            \"shipDepth\": \"3.7\",\n            \"draftForward\": \"3\",\n            \"aftDraft\": \"2.9\",\n            \"typeCode\": \"\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"49.8\",\n            \"totalCount\": \"75\",\n            \"longitude\": 114.56079915364583,\n            \"latitude\": 30.61728312174479,\n            \"distance\": \"4.16\"\n        }, {\n            \"rowno\": \"8\",\n            \"estimatedTime\": \"2024-01-24 12:00:00\",\n            \"shipId\": \"CN20141826946\",\n            \"shipNameCn\": \"胜涛号\",\n            \"shipNameEn\": \"SHENG TAO HAO\",\n            \"mmsi\": 413830893,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-01-24 07:48:12\",\n            \"actualCarryingCapacity\": \"3000\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武桥恒庆码头\",\n            \"shipGrosston\": \"2530\",\n            \"shipBreadth\": \"14.8\",\n            \"shipDepth\": \"6\",\n            \"draftForward\": \"3.9\",\n            \"aftDraft\": \"3.9\",\n            \"typeCode\": \"\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"83\",\n            \"totalCount\": \"75\",\n            \"longitude\": 114.11241048177084,\n            \"latitude\": 30.349436442057293,\n            \"distance\": \"54.15\"\n        }, {\n            \"rowno\": \"9\",\n            \"estimatedTime\": \"2024-01-24 12:00:00\",\n            \"shipId\": \"CN20155157781\",\n            \"shipNameCn\": \"怀安江集\",\n            \"shipNameEn\": \"HUAI AN JIANG JI\",\n            \"mmsi\": 413827928,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-01-24 05:22:44\",\n            \"actualCarryingCapacity\": \"7200\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉国际集装箱有限公司1期\",\n            \"shipGrosston\": \"6835\",\n            \"shipBreadth\": \"18.6\",\n            \"shipDepth\": \"7.6\",\n            \"draftForward\": \"5.7\",\n            \"aftDraft\": \"5.7\",\n            \"typeCode\": \"\",\n            \"realContainerQay\": \"259\",\n            \"shipLength\": \"123.8\",\n            \"totalCount\": \"75\",\n            \"longitude\": 114.82896321614584,\n            \"latitude\": 30.479854329427084,\n            \"distance\": \"32.77\"\n        }, {\n            \"rowno\": \"10\",\n            \"estimatedTime\": \"2024-01-24 12:00:00\",\n            \"shipId\": \"CN20183525837\",\n            \"shipNameCn\": \"镔港819\",\n            \"shipNameEn\": \"BIN GANG 819\",\n            \"mmsi\": 413837328,\n            \"shipImo\": \"---\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-01-24 05:53:01\",\n            \"actualCarryingCapacity\": \"2600\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉国际集装箱有限公司1期\",\n            \"shipGrosston\": \"4646\",\n            \"shipBreadth\": \"17\",\n            \"shipDepth\": \"5.8\",\n            \"draftForward\": \"2.8\",\n            \"aftDraft\": \"2.8\",\n            \"typeCode\": \"\",\n            \"realContainerQay\": \"227\",\n            \"shipLength\": \"109.9\",\n            \"totalCount\": \"75\",\n            \"longitude\": 114.28677571614584,\n            \"latitude\": 30.556400553385416,\n            \"distance\": \"27.76\"\n        }],\n        \"total\": 75\n    }\n}",
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
      "children" : [ {
        "name" : "list",
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
            "name" : "rowno",
            "value" : "1",
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
            "name" : "estimatedTime",
            "value" : "2024-01-24 10:10:00",
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
            "name" : "shipId",
            "value" : "CN20129736492",
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
            "name" : "shipNameCn",
            "value" : "荆淮99",
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
            "name" : "shipNameEn",
            "value" : "JING HUAI 99",
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
            "name" : "mmsi",
            "value" : "413991126",
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
            "name" : "shipImo",
            "value" : "",
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
            "name" : "status",
            "value" : "进港",
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
            "name" : "reportTime",
            "value" : "2024-01-24 06:08:53",
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
            "name" : "actualCarryingCapacity",
            "value" : "600",
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
            "name" : "actualCapacity",
            "value" : "",
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
            "name" : "realVehicle",
            "value" : "",
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
            "name" : "realDangerCargo",
            "value" : "",
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
            "name" : "berthName",
            "value" : "武汉国际集装箱有限公司1期",
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
            "name" : "shipGrosston",
            "value" : "2043",
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
            "name" : "shipBreadth",
            "value" : "13.2",
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
            "name" : "shipDepth",
            "value" : "5.3",
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
            "name" : "draftForward",
            "value" : "1.8",
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
            "name" : "aftDraft",
            "value" : "2",
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
            "name" : "typeCode",
            "value" : "",
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
            "name" : "realContainerQay",
            "value" : "28",
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
            "name" : "shipLength",
            "value" : "76.5",
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
            "name" : "totalCount",
            "value" : "75",
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
            "name" : "longitude",
            "value" : "114.54396158854166",
            "description" : "",
            "required" : false,
            "dataType" : "Double",
            "type" : null,
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "latitude",
            "value" : "30.669767252604167",
            "description" : "",
            "required" : false,
            "dataType" : "Double",
            "type" : null,
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "distance",
            "value" : "1.93",
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
      }, {
        "name" : "total",
        "value" : "75",
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
    } ]
  }
}
================================
import response;
import 'com.success.data.tag.TagUtils' as TagUtils;

var pageNum = page;
pageNum= pageNum!=null&pageNum!=''? pageNum :1

var pageSize = size;
pageSize= pageSize!=null&pageSize!=''? pageSize :10


var pageStart = """ select *
        from (select rownum rowno, b.*
              from (""";
var pageEnd = """ ) b
        where rownum <= ( #{pageNum} * #{pageSize})) a
        where a.rowno > ( ( #{pageNum} - 1 ) * #{pageSize} )""";
        
var sql="""
select ARRIVE_TIME estimated_time,
       ship_id,
       ship_name_cn,
       ship_name_en,
       mmsi,
       SHIP_IMO,
       (case
         when ARRIVAL_OR_LEAVE = '0' then
          '进港'
         when ARRIVAL_OR_LEAVE = '1' then
          '出港'
         else
          ''
       end) status,
       report_TIME,
       ACTUAL_CARRYING_CAPACITY,
       ACTUAL_CAPACITY,
       REAL_VEHICLE,
       REAL_DANGER_CARGO,
       BERTH_name,
       SHIP_GROSSTON,
       SHIP_BREADTH,
       SHIP_DEPTH,
       DRAFT_FORWARD,
       AFT_DRAFT,
       type_code,
       REAL_CONTAINER_QAY,
       SHIP_LENGTH,
       count(*) OVER() total_count
  from (select *
          from (select PORT_CODE,
                       ARRIVE_TIME,
                       ship_id,
                       ship_name_cn,
                       ship_name_en,
                       mmsi,
                       SHIP_IMO,
                       row_number() over(partition by a.mmsi order by ARRIVE_TIME desc) rn,
                       ARRIVAL_OR_LEAVE,
                       report_TIME,
                       ACTUAL_CARRYING_CAPACITY,
                       ACTUAL_CAPACITY,
                       REAL_VEHICLE,
                       REAL_DANGER_CARGO,
                       BERTH_name,
                       SHIP_GROSSTON,
                       SHIP_BREADTH,
                       SHIP_DEPTH,
                       DRAFT_FORWARD,
                       AFT_DRAFT,
                       type_code,
                       REAL_CONTAINER_QAY,
                       SHIP_LENGTH
                  from (select distinct a.SHIP_LENGTH,
                                        a.REAL_CONTAINER_QAY,
                                        a.REPORT_PORT_CODE PORT_CODE，to_CHAR(a.EXPECT_TIME, 'YYYY-MM-DD HH24:MI:SS') ARRIVE_TIME,
                                        a.ship_id,
                                        a.ship_name_cn,
                                        a.ship_name_en,
                                        a.mmsi,
                                        a.SHIP_IMO,
                                        a.ARRIVAL_OR_LEAVE,
                                        a.report_TIME,
                                        a.ACTUAL_CARRYING_CAPACITY,
                                        a.ACTUAL_CAPACITY,
                                        a.REAL_VEHICLE,
                                        a.REAL_DANGER_CARGO,
                                        a.BERTH_name,
                                        a.SHIP_GROSSTON,
                                        a.SHIP_BREADTH,
                                        a.SHIP_DEPTH,
                                        a.DRAFT_FORWARD,
                                        a.AFT_DRAFT,
                                        b.type_code
                          from bds_biz_data.RPT_SHIP_EEP_REPORT_REC a
                          left join bds_biz_data.rpt_cargo_declare_rec b
                            on a.report_id = b.report_id
                         where a.DELETE_FLAG = '0'
                                and a.if_revoke != '1'
                                and a.EXPECT_TIME >= sysdate
                                and a.EXPECT_TIME < trunc(sysdate) + 1) a,
                       dict_data.D_CB_PORT p
                 where a.PORT_CODE = p.code
                   and p.item_name_cn = #{portName})
         order by ARRIVE_TIME)
 where rn = 1 
        <if test = "arriveOrLeave != null and arriveOrLeave != ''">
                and ARRIVAL_OR_LEAVE = #{arriveOrLeave} 
        </if>
 order by ARRIVAL_OR_LEAVE, ARRIVE_TIME

"""
var list=db.biz_data.camel().select(pageStart+sql+pageEnd);
var totalCount=0;
if(list==null){
   list=[];
} 
for(item in list){ 
    totalCount = item.get("totalCount");
}  

var list2;  
if(list!=null&&list!=""){
        var idList=[];
        for(itData in list){//查询预进港所有船舶，然后去pg库查询实时位置
                if(itData.get("typeCode")!=null&&itData.get("typeCode")!=''){
                     itData.put("typeCode",
                        TagUtils.getTagNameByCode("cargoType", itData.get("typeCode")));
               }
                if(itData.get("mmsi")!=null&&itData.get("mmsi")!=""){
                        idList.add(Integer.decode(itData.get("mmsi")))
                }
              
        }
        if(idList.size()>=1){
               
                        var sqlLon="""select distinct longitude,latitude,mmsi, 
                         round(cast(public.ST_Distance(public.geography(public.ST_MakePoint          
                                      ("longitude","latitude")),
                                        public.geography(public.ST_MakePoint(b.lon , b.lat )))/1000  as numeric),2) as distance
                                        from  ais_pos_new_all a  left join SEARCH_GK_QQGKQD  b on 1=1
                                        where  1=1 and a.mmsi in                                  
                                                <foreach collection="idList"  open="(" separator="," close=")" item="item">
                                                #{item}
                                                </foreach> and  b.gkzwmc=#{portName}  """;
                                        list2=db.ais.camel().select(sqlLon);
                
            if(list2!=null&&list!=null)  {
                for(item in list){
                                for(item2 in list2){
                                    if(item.get("mmsi")!=null&&item2.get("mmsi")!=null){
                                                 if(item.get("mmsi").toString().equals(item2.get("mmsi").toString())){     
                                                                    item.putAll(item2);
                                                                    }
                                                }
                                }
                            }  
            }  
                
               
        }
        
}
var back={
        "list":list,
        "total":Integer.parseInt(totalCount::string)
}
//var  ret=db.biz_data.camel().page(sql);
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: back 

});