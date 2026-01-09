{
  "properties" : { },
  "id" : "3f0ba38f23f04c4fb0779259b08a1a79",
  "script" : null,
  "groupId" : "06840557c3324b57a151875e9c1c91e7",
  "name" : "港口-智驾预离港船舶",
  "createTime" : null,
  "updateTime" : 1726025073179,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getSmartLeavePortShips",
  "method" : "GET",
  "parameters" : [ {
    "name" : "portName",
    "value" : "WUHAN",
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
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "1",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "size",
    "value" : "100",
    "description" : "",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "10",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"total\": 155,\n        \"list\": [{\n            \"rowno\": \"1\",\n            \"estimatedTime\": \"2024/09/10 01:19\",\n            \"shipId\": \"CN20142122239\",\n            \"shipNameCn\": \"鄂鑫航货1138\",\n            \"shipNameEn\": \"E XIN HANG HUO 1138\",\n            \"mmsi\": 413838833,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"1200\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"李家矶一期锚地\",\n            \"shipGrosston\": \"993\",\n            \"shipBreadth\": \"13\",\n            \"shipDepth\": \"3.06\",\n            \"draftForward\": \"2.1\",\n            \"aftDraft\": \"2.1\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 113.5997314453125,\n            \"latitude\": 30.4928466796875,\n            \"distance\": \"93.20\"\n        }, {\n            \"rowno\": \"2\",\n            \"estimatedTime\": \"2024/09/10 02:00\",\n            \"shipId\": \"CN20105703739\",\n            \"shipNameCn\": \"弘洋698\",\n            \"shipNameEn\": \"HONG YANG 698\",\n            \"mmsi\": 413970971,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉亚东水泥码头\",\n            \"shipGrosston\": \"3390\",\n            \"shipBreadth\": \"16.1\",\n            \"shipDepth\": \"7.1\",\n            \"draftForward\": \"0.6\",\n            \"aftDraft\": \"1.4\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 115.41185709635417,\n            \"latitude\": 29.903749593098958,\n            \"distance\": \"117.25\"\n        }, {\n            \"rowno\": \"3\",\n            \"estimatedTime\": \"2024/09/10 02:00\",\n            \"shipId\": \"CN20125361191\",\n            \"shipNameCn\": \"长江鼎盛\",\n            \"shipNameEn\": \"CHANG JIANG DING SHENG\",\n            \"mmsi\": 413940677,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"0\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"0\",\n            \"berthName\": \"武汉中石化阳逻水上加油站\",\n            \"shipGrosston\": \"1808\",\n            \"shipBreadth\": \"14.8\",\n            \"shipDepth\": \"4.2\",\n            \"draftForward\": \"0.08\",\n            \"aftDraft\": \"2.2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 118.34032389322917,\n            \"latitude\": 31.37143351236979,\n            \"distance\": \"370.25\"\n        }, {\n            \"rowno\": \"4\",\n            \"estimatedTime\": \"2024/09/10 02:00\",\n            \"shipId\": \"CN20196247907\",\n            \"shipNameCn\": \"哲源66\",\n            \"shipNameEn\": \"ZHE YUAN 66\",\n            \"mmsi\": 413842396,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"2997.1\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"2997.1\",\n            \"berthName\": \"长江武汉中航加油站\",\n            \"shipGrosston\": \"2268\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"5\",\n            \"draftForward\": \"3.8\",\n            \"aftDraft\": \"3.8\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 112.92149251302084,\n            \"latitude\": 29.570550537109376,\n            \"distance\": \"197.89\"\n        }, {\n            \"rowno\": \"5\",\n            \"estimatedTime\": \"2024/09/10 02:00\",\n            \"shipId\": \"CN20041019154\",\n            \"shipNameCn\": \"新宜0168\",\n            \"shipNameEn\": \"XIN YI 0168\",\n            \"mmsi\": 413819245,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"3200\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉娲石公司码头\",\n            \"shipGrosston\": \"2750\",\n            \"shipBreadth\": \"15.2\",\n            \"shipDepth\": \"6.05\",\n            \"draftForward\": \"3.5\",\n            \"aftDraft\": \"3.2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 115.40323893229167,\n            \"latitude\": 29.908479817708333,\n            \"distance\": \"116.29\"\n        }, {\n            \"rowno\": \"6\",\n            \"estimatedTime\": \"2024/09/10 02:00\",\n            \"shipId\": \"CN20107809040\",\n            \"shipNameCn\": \"鑫平619\",\n            \"shipNameEn\": \"XIN PING 619\",\n            \"mmsi\": 413801647,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉华港码头\",\n            \"shipGrosston\": \"2350\",\n            \"shipBreadth\": \"15\",\n            \"shipDepth\": \"5.75\",\n            \"draftForward\": \"0.6\",\n            \"aftDraft\": \"2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 113.30686848958334,\n            \"latitude\": 29.638429768880208,\n            \"distance\": \"164.62\"\n        }, {\n            \"rowno\": \"7\",\n            \"estimatedTime\": \"2024/09/10 02:00\",\n            \"shipId\": \"CN20107358550\",\n            \"shipNameCn\": \"巨丰3\",\n            \"shipNameEn\": \"JU FENG 3\",\n            \"mmsi\": 413781855,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"2788.89\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"2788.89\",\n            \"berthName\": \"长江武汉中石化长燃新五里加油站\",\n            \"shipGrosston\": \"2075\",\n            \"shipBreadth\": \"14.8\",\n            \"shipDepth\": \"5.1\",\n            \"draftForward\": \"3.7\",\n            \"aftDraft\": \"3.7\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 112.93609212239583,\n            \"latitude\": 29.50602010091146,\n            \"distance\": \"201.26\"\n        }, {\n            \"rowno\": \"8\",\n            \"estimatedTime\": \"2024/09/10 02:11\",\n            \"shipId\": \"CN20221281844\",\n            \"shipNameCn\": \"江渝顺鸿\",\n            \"shipNameEn\": \"JIANG YU SHUN HONG\",\n            \"mmsi\": 413876552,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"7000\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"李家矶一期锚地\",\n            \"shipGrosston\": \"3740\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"6.8\",\n            \"draftForward\": \"5.3\",\n            \"aftDraft\": \"5.3\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 113.14363606770833,\n            \"latitude\": 29.44698689778646,\n            \"distance\": \"190.76\"\n        }, {\n            \"rowno\": \"9\",\n            \"estimatedTime\": \"2024/09/10 02:19\",\n            \"shipId\": \"CN20157254125\",\n            \"shipNameCn\": \"力洲国运\",\n            \"shipNameEn\": \"LI ZHOU GUO YUN\",\n            \"mmsi\": 413997716,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"1030\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉经开港码头\",\n            \"shipGrosston\": \"2673\",\n            \"shipBreadth\": \"15.5\",\n            \"shipDepth\": \"5.8\",\n            \"draftForward\": \"2\",\n            \"aftDraft\": \"2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 112.89110514322917,\n            \"latitude\": 29.791499837239584,\n            \"distance\": \"186.41\"\n        }, {\n            \"rowno\": \"10\",\n            \"estimatedTime\": \"2024/09/10 02:23\",\n            \"shipId\": \"CN20114153329\",\n            \"shipNameCn\": \"华洋衡旺\",\n            \"shipNameEn\": \"HUA YANG HENG WANG\",\n            \"mmsi\": 413811505,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"5072\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉港集装箱有限公司2期\",\n            \"shipGrosston\": \"5439\",\n            \"shipBreadth\": \"18.6\",\n            \"shipDepth\": \"6.6\",\n            \"draftForward\": \"4.8\",\n            \"aftDraft\": \"4.8\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 113.68262532552083,\n            \"latitude\": 29.922967529296876,\n            \"distance\": \"116.56\"\n        }, {\n            \"rowno\": \"11\",\n            \"estimatedTime\": \"2024/09/10 03:00\",\n            \"shipId\": \"CN20143573132\",\n            \"shipNameCn\": \"华通6868\",\n            \"shipNameEn\": \"HUA TONG 6868\",\n            \"mmsi\": 413833087,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"1700\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉武钢物流有限公司7-9号码头\",\n            \"shipGrosston\": \"985\",\n            \"shipBreadth\": \"11.5\",\n            \"shipDepth\": \"4.2\",\n            \"draftForward\": \"3.5\",\n            \"aftDraft\": \"3.3\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 116.85453287760417,\n            \"latitude\": 30.16380615234375,\n            \"distance\": \"227.71\"\n        }, {\n            \"rowno\": \"12\",\n            \"estimatedTime\": \"2024/09/10 03:00\",\n            \"shipId\": \"CN20119530411\",\n            \"shipNameCn\": \"鸿兴1168\",\n            \"shipNameEn\": \"HONG XING 1168\",\n            \"mmsi\": 413816548,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"7000\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉中航加油站\",\n            \"shipGrosston\": \"3946\",\n            \"shipBreadth\": \"17.65\",\n            \"shipDepth\": \"7.45\",\n            \"draftForward\": \"5.2\",\n            \"aftDraft\": \"5.2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 113.39408365885417,\n            \"latitude\": 29.722066243489582,\n            \"distance\": \"152.12\"\n        }, {\n            \"rowno\": \"13\",\n            \"estimatedTime\": \"2024/09/10 04:16\",\n            \"shipId\": \"CN20145918600\",\n            \"shipNameCn\": \"华渝鸿运\",\n            \"shipNameEn\": \"HUA YU HONG YUN\",\n            \"mmsi\": 413828216,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"10000\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"中交二航局双柳基地码头\",\n            \"shipGrosston\": \"7039\",\n            \"shipBreadth\": \"21\",\n            \"shipDepth\": \"8.6\",\n            \"draftForward\": \"5.2\",\n            \"aftDraft\": \"5.1\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 113.14529622395834,\n            \"latitude\": 29.453000895182292,\n            \"distance\": \"190.17\"\n        }, {\n            \"rowno\": \"14\",\n            \"estimatedTime\": \"2024/09/10 04:30\",\n            \"shipId\": \"CN20121324579\",\n            \"shipNameCn\": \"长亚十号\",\n            \"shipNameEn\": \"CHANG YA SHI HAO\",\n            \"mmsi\": 413797848,\n            \"shipImo\": \"----\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江青山船厂长江岸壁码头\",\n            \"shipGrosston\": \"3867\",\n            \"shipBreadth\": \"17.6\",\n            \"shipDepth\": \"7.4\",\n            \"draftForward\": \"0.8\",\n            \"aftDraft\": \"2.1\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 115.40411783854167,\n            \"latitude\": 29.91329345703125,\n            \"distance\": \"115.97\"\n        }, {\n            \"rowno\": \"15\",\n            \"estimatedTime\": \"2024/09/10 05:00\",\n            \"shipId\": \"CN20081771331\",\n            \"shipNameCn\": \"铜舟369\",\n            \"shipNameEn\": \"TONG ZHOU 369\",\n            \"mmsi\": 413771017,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉青山外贸码头1-4#泊位\",\n            \"shipGrosston\": \"2526\",\n            \"shipBreadth\": \"14.6\",\n            \"shipDepth\": \"6.65\",\n            \"draftForward\": \"0.8\",\n            \"aftDraft\": \"1.2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 115.3119873046875,\n            \"latitude\": 30.087955729166666,\n            \"distance\": \"96.23\"\n        }, {\n            \"rowno\": \"16\",\n            \"estimatedTime\": \"2024/09/10 05:00\",\n            \"shipId\": \"CN20144487078\",\n            \"shipNameCn\": \"华光洋山\",\n            \"shipNameEn\": \"HUA GUANG YANG SHAN\",\n            \"mmsi\": 413620640,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"5120\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉港集装箱有限公司2期\",\n            \"shipGrosston\": \"6487\",\n            \"shipBreadth\": \"21\",\n            \"shipDepth\": \"9.3\",\n            \"draftForward\": \"5\",\n            \"aftDraft\": \"5\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 113.19695638020833,\n            \"latitude\": 29.506040445963542,\n            \"distance\": \"182.47\"\n        }, {\n            \"rowno\": \"17\",\n            \"estimatedTime\": \"2024/09/10 05:00\",\n            \"shipId\": \"CN20194374388\",\n            \"shipNameCn\": \"宁瑞扬9\",\n            \"shipNameEn\": \"NING RUI YANG 9\",\n            \"mmsi\": 413849526,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"0\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"0\",\n            \"berthName\": \"王家屋危险品船舶锚地\",\n            \"shipGrosston\": \"2789\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"5.5\",\n            \"draftForward\": \"0.2\",\n            \"aftDraft\": \"2.5\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.57457682291667,\n            \"latitude\": 30.583013916015624,\n            \"distance\": \"8.16\"\n        }, {\n            \"rowno\": \"18\",\n            \"estimatedTime\": \"2024/09/10 05:00\",\n            \"shipId\": \"CN20143169828\",\n            \"shipNameCn\": \"鄂仙桃货5678\",\n            \"shipNameEn\": \"E XIAN TAO HUO 5678\",\n            \"mmsi\": 413829519,\n            \"shipImo\": \"-\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉亚东水泥码头\",\n            \"shipGrosston\": \"993\",\n            \"shipBreadth\": \"13\",\n            \"shipDepth\": \"3.06\",\n            \"draftForward\": \"0.5\",\n            \"aftDraft\": \"1.2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.57897135416667,\n            \"latitude\": 30.60164591471354,\n            \"distance\": \"6.33\"\n        }, {\n            \"rowno\": \"19\",\n            \"estimatedTime\": \"2024/09/10 05:00\",\n            \"shipId\": \"CN20081573369\",\n            \"shipNameCn\": \"豫信货10199\",\n            \"shipNameEn\": \"YU XIN HUO 10199\",\n            \"mmsi\": 413802748,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"华航舵落口港埠公司5号泊位\",\n            \"shipGrosston\": \"1368\",\n            \"shipBreadth\": \"11.6\",\n            \"shipDepth\": \"4.95\",\n            \"draftForward\": \"0.6\",\n            \"aftDraft\": \"1.7\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.50098470052083,\n            \"latitude\": 30.678279622395834,\n            \"distance\": \"5.67\"\n        }, {\n            \"rowno\": \"20\",\n            \"estimatedTime\": \"2024/09/10 05:10\",\n            \"shipId\": \"CN20081779805\",\n            \"shipNameCn\": \"豫信货1923\",\n            \"shipNameEn\": \"YU XIN HUO 1923\",\n            \"mmsi\": 413779703,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"830\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉青山西马1-2#码头\",\n            \"shipGrosston\": \"594\",\n            \"shipBreadth\": \"9.85\",\n            \"shipDepth\": \"3.5\",\n            \"draftForward\": \"2.9\",\n            \"aftDraft\": \"2.7\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 116.6791748046875,\n            \"latitude\": 30.029646809895834,\n            \"distance\": \"215.82\"\n        }, {\n            \"rowno\": \"21\",\n            \"estimatedTime\": \"2024/09/10 05:17\",\n            \"shipId\": \"CN20127641287\",\n            \"shipNameCn\": \"华青6166\",\n            \"shipNameEn\": \"HUA QING 6166\",\n            \"mmsi\": 413819276,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"3200\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"舵落口港埠公司六码头\",\n            \"shipGrosston\": \"1559\",\n            \"shipBreadth\": \"13.5\",\n            \"shipDepth\": \"5.05\",\n            \"draftForward\": \"4.4\",\n            \"aftDraft\": \"4.3\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 115.94205729166667,\n            \"latitude\": 29.718145751953124,\n            \"distance\": \"169.29\"\n        }, {\n            \"rowno\": \"22\",\n            \"estimatedTime\": \"2024/09/10 05:19\",\n            \"shipId\": \"CN20049422156\",\n            \"shipNameCn\": \"宏远118\",\n            \"shipNameEn\": \"HONG YUAN 118\",\n            \"mmsi\": \"413781407\",\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"350\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉国际集装箱有限公司1期\",\n            \"shipGrosston\": \"989\",\n            \"shipBreadth\": \"10.3\",\n            \"shipDepth\": \"3.6\",\n            \"draftForward\": \"1.6\",\n            \"aftDraft\": \"2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\"\n        }, {\n            \"rowno\": \"23\",\n            \"estimatedTime\": \"2024/09/10 05:20\",\n            \"shipId\": \"CN20114376874\",\n            \"shipNameCn\": \"豫信货11706\",\n            \"shipNameEn\": \"YU XIN HUO 11706\",\n            \"mmsi\": 413815294,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"880\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉武钢物流有限公司7-9号码头\",\n            \"shipGrosston\": \"540\",\n            \"shipBreadth\": \"9.6\",\n            \"shipDepth\": \"3.6\",\n            \"draftForward\": \"3\",\n            \"aftDraft\": \"3\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 116.83387044270833,\n            \"latitude\": 30.133485921223958,\n            \"distance\": \"226.65\"\n        }, {\n            \"rowno\": \"24\",\n            \"estimatedTime\": \"2024/09/10 06:00\",\n            \"shipId\": \"CN20149472748\",\n            \"shipNameCn\": \"锐航999\",\n            \"shipNameEn\": \"RUIHANG999\",\n            \"mmsi\": 413788593,\n            \"shipImo\": \"--\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"李家矶一期锚地\",\n            \"shipGrosston\": \"6557\",\n            \"shipBreadth\": \"21.6\",\n            \"shipDepth\": \"8.5\",\n            \"draftForward\": \"0.8\",\n            \"aftDraft\": \"2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 115.11346842447917,\n            \"latitude\": 30.3395263671875,\n            \"distance\": \"64.11\"\n        }, {\n            \"rowno\": \"25\",\n            \"estimatedTime\": \"2024/09/10 06:00\",\n            \"shipId\": \"CN20092796834\",\n            \"shipNameCn\": \"海茂6899\",\n            \"shipNameEn\": \"HAI MAO 6899\",\n            \"mmsi\": 413786649,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"800\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉青山外贸码头3号沥青泊位\",\n            \"shipGrosston\": \"1089\",\n            \"shipBreadth\": \"12.8\",\n            \"shipDepth\": \"3.2\",\n            \"draftForward\": \"1\",\n            \"aftDraft\": \"1.8\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 113.216650390625,\n            \"latitude\": 29.534407552083334,\n            \"distance\": \"178.91\"\n        }, {\n            \"rowno\": \"26\",\n            \"estimatedTime\": \"2024/09/10 06:00\",\n            \"shipId\": \"CN20205922227\",\n            \"shipNameCn\": \"苏中油018\",\n            \"shipNameEn\": \"SU ZHONG YOU 018\",\n            \"mmsi\": 413858387,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉鑫龙粮油码头\",\n            \"shipGrosston\": \"2514\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"5.4\",\n            \"draftForward\": \"0.2\",\n            \"aftDraft\": \"2.4\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 116.244775390625,\n            \"latitude\": 29.797347005208334,\n            \"distance\": \"188.52\"\n        }, {\n            \"rowno\": \"27\",\n            \"estimatedTime\": \"2024/09/10 06:30\",\n            \"shipId\": \"CN20099994335\",\n            \"shipNameCn\": \"武汉机渡60076\",\n            \"shipNameEn\": \"WU HAN JI DU 60076\",\n            \"mmsi\": 413821829,\n            \"shipImo\": \"----\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉邓家口渡口\",\n            \"shipGrosston\": \"91\",\n            \"shipBreadth\": \"6\",\n            \"shipDepth\": \"1.2\",\n            \"draftForward\": \"0.7\",\n            \"aftDraft\": \"1.2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.003466796875,\n            \"latitude\": 30.27979939778646,\n            \"distance\": \"67.16\"\n        }, {\n            \"rowno\": \"28\",\n            \"estimatedTime\": \"2024/09/10 06:30\",\n            \"shipId\": \"CN20108370955\",\n            \"shipNameCn\": \"江城2号\",\n            \"shipNameEn\": \"JIANG CHENG 2 HAO\",\n            \"mmsi\": 413841901,\n            \"shipImo\": \"----\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"9\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉关轮渡码头\",\n            \"shipGrosston\": \"668\",\n            \"shipBreadth\": \"9\",\n            \"shipDepth\": \"2.9\",\n            \"draftForward\": \"1.4\",\n            \"aftDraft\": \"2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.29012044270833,\n            \"latitude\": 30.556693522135415,\n            \"distance\": \"27.45\"\n        }, {\n            \"rowno\": \"29\",\n            \"estimatedTime\": \"2024/09/10 06:30\",\n            \"shipId\": \"CN20204505048\",\n            \"shipNameCn\": \"鄂宏顺0777\",\n            \"shipNameEn\": \"E HONG SHUN 0777\",\n            \"mmsi\": 413867517,\n            \"shipImo\": \"-\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉长航集团军山船厂\",\n            \"shipGrosston\": \"2304\",\n            \"shipBreadth\": \"15\",\n            \"shipDepth\": \"5.5\",\n            \"draftForward\": \"0.5\",\n            \"aftDraft\": \"1.5\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.56975911458333,\n            \"latitude\": 30.618855794270832,\n            \"distance\": \"4.23\"\n        }, {\n            \"rowno\": \"30\",\n            \"estimatedTime\": \"2024/09/10 06:30\",\n            \"shipId\": \"CN20109635489\",\n            \"shipNameCn\": \"江城5号\",\n            \"shipNameEn\": \"JIANG CHENG 5 HAO\",\n            \"mmsi\": 413841903,\n            \"shipImo\": \"----\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"5\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉中华路轮渡码头\",\n            \"shipGrosston\": \"668\",\n            \"shipBreadth\": \"9\",\n            \"shipDepth\": \"2.9\",\n            \"draftForward\": \"1.8\",\n            \"aftDraft\": \"2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.29361165364584,\n            \"latitude\": 30.576739501953124,\n            \"distance\": \"26.33\"\n        }, {\n            \"rowno\": \"31\",\n            \"estimatedTime\": \"2024/09/10 06:30\",\n            \"shipId\": \"CN20156431711\",\n            \"shipNameCn\": \"兆基油8\",\n            \"shipNameEn\": \"ZHAO JI YOU 8\",\n            \"mmsi\": \"413833507\",\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"80\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"80\",\n            \"berthName\": \"长江武汉中航加油站\",\n            \"shipGrosston\": \"229\",\n            \"shipBreadth\": \"7.2\",\n            \"shipDepth\": \"3\",\n            \"draftForward\": \"1.7\",\n            \"aftDraft\": \"1.8\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\"\n        }, {\n            \"rowno\": \"32\",\n            \"estimatedTime\": \"2024/09/10 06:55\",\n            \"shipId\": \"CN20059775962\",\n            \"shipNameCn\": \"金海洋油16号\",\n            \"shipNameEn\": \"JIN HAI YANG YOU 16 HAO\",\n            \"mmsi\": 413970749,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"1500\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"1500\",\n            \"berthName\": \"王家屋危险品船舶锚地\",\n            \"shipGrosston\": \"978\",\n            \"shipBreadth\": \"12\",\n            \"shipDepth\": \"3.6\",\n            \"draftForward\": \"2.8\",\n            \"aftDraft\": \"2.8\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 115.88430989583334,\n            \"latitude\": 29.731170654296875,\n            \"distance\": \"164.02\"\n        }, {\n            \"rowno\": \"33\",\n            \"estimatedTime\": \"2024/09/10 07:00\",\n            \"shipId\": \"CN20149939223\",\n            \"shipNameCn\": \"渝通968\",\n            \"shipNameEn\": \"YU TONG 968\",\n            \"mmsi\": 413829943,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉新洲石油分公司码头\",\n            \"shipGrosston\": \"3104\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"5.6\",\n            \"draftForward\": \"0.8\",\n            \"aftDraft\": \"2.2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.58372395833334,\n            \"latitude\": 30.58571573893229,\n            \"distance\": \"8.14\"\n        }, {\n            \"rowno\": \"34\",\n            \"estimatedTime\": \"2024/09/10 07:30\",\n            \"shipId\": \"CN20201306587\",\n            \"shipNameCn\": \"轮渡清洁环保1\",\n            \"shipNameEn\": \"LUN DU QING JIE HUAN BAO 1\",\n            \"mmsi\": 413856748,\n            \"shipImo\": \"----\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"汉江武汉集家嘴轮渡码头\",\n            \"shipGrosston\": \"125\",\n            \"shipBreadth\": \"6.4\",\n            \"shipDepth\": \"2.4\",\n            \"draftForward\": \"0.7\",\n            \"aftDraft\": \"1.7\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.28086751302084,\n            \"latitude\": 30.558199055989583,\n            \"distance\": \"28.20\"\n        }, {\n            \"rowno\": \"35\",\n            \"estimatedTime\": \"2024/09/10 07:46\",\n            \"shipId\": \"CN20196763421\",\n            \"shipNameCn\": \"汉供1\",\n            \"shipNameEn\": \"HAN GONG 1\",\n            \"mmsi\": 413847436,\n            \"shipImo\": \"----\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉亚东水泥码头\",\n            \"shipGrosston\": \"189\",\n            \"shipBreadth\": \"6.5\",\n            \"shipDepth\": \"1.6\",\n            \"draftForward\": \"0.6\",\n            \"aftDraft\": \"0.8\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.522998046875,\n            \"latitude\": 30.672487386067708,\n            \"distance\": \"3.53\"\n        }, {\n            \"rowno\": \"36\",\n            \"estimatedTime\": \"2024/09/10 08:00\",\n            \"shipId\": \"CN20109924896\",\n            \"shipNameCn\": \"华通油12\",\n            \"shipNameEn\": \"HUA TONG YOU 12\",\n            \"mmsi\": 413794067,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"2716\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"2716\",\n            \"berthName\": \"王家屋危险品船舶锚地\",\n            \"shipGrosston\": \"2042\",\n            \"shipBreadth\": \"14.75\",\n            \"shipDepth\": \"4.8\",\n            \"draftForward\": \"3.8\",\n            \"aftDraft\": \"3.8\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.53614908854166,\n            \"latitude\": 30.664412434895834,\n            \"distance\": \"1.99\"\n        }, {\n            \"rowno\": \"37\",\n            \"estimatedTime\": \"2024/09/10 08:09\",\n            \"shipId\": \"CN20102215390\",\n            \"shipNameCn\": \"新宜顺航\",\n            \"shipNameEn\": \"XIN YI SHUN HANG\",\n            \"mmsi\": 413802195,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉武钢物流有限公司7-9号码头\",\n            \"shipGrosston\": \"5673\",\n            \"shipBreadth\": \"18.8\",\n            \"shipDepth\": \"8.6\",\n            \"draftForward\": \"0.6\",\n            \"aftDraft\": \"2.6\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 115.58855794270833,\n            \"latitude\": 29.84193318684896,\n            \"distance\": \"134.31\"\n        }, {\n            \"rowno\": \"38\",\n            \"estimatedTime\": \"2024/09/10 08:20\",\n            \"shipId\": \"CN20117954142\",\n            \"shipNameCn\": \"赣长江66号\",\n            \"shipNameEn\": \"GAN CHANG JIANG 66 HAO\",\n            \"mmsi\": 413801362,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"4400\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"4400\",\n            \"berthName\": \"长江武汉中航加油站\",\n            \"shipGrosston\": \"3585\",\n            \"shipBreadth\": \"17.2\",\n            \"shipDepth\": \"6\",\n            \"draftForward\": \"4.3\",\n            \"aftDraft\": \"4.2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 113.09481608072916,\n            \"latitude\": 29.48123575846354,\n            \"distance\": \"191.52\"\n        }, {\n            \"rowno\": \"39\",\n            \"estimatedTime\": \"2024/09/10 09:00\",\n            \"shipId\": \"CN20086696149\",\n            \"shipNameCn\": \"嘉航966\",\n            \"shipNameEn\": \"JIA HANG 966\",\n            \"mmsi\": \"721\",\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"650\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"阳逻汽渡北岸码头\",\n            \"shipGrosston\": \"721\",\n            \"shipBreadth\": \"10.8\",\n            \"shipDepth\": \"2.5\",\n            \"draftForward\": \"1.7\",\n            \"aftDraft\": \"1.8\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\"\n        }, {\n            \"rowno\": \"40\",\n            \"estimatedTime\": \"2024/09/10 09:00\",\n            \"shipId\": \"CN20071670673\",\n            \"shipNameCn\": \"申燃油1\",\n            \"shipNameEn\": \"SHEN RAN YOU 1\",\n            \"mmsi\": \"413768685\",\n            \"shipImo\": \"- -\",\n            \"actualCarryingCapacity\": \"3000\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"3000\",\n            \"berthName\": \"王家屋危险品船舶锚地\",\n            \"shipGrosston\": \"1592\",\n            \"shipBreadth\": \"14.8\",\n            \"shipDepth\": \"5.4\",\n            \"draftForward\": \"4.1\",\n            \"aftDraft\": \"4.1\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\"\n        }, {\n            \"rowno\": \"41\",\n            \"estimatedTime\": \"2024/09/10 09:00\",\n            \"shipId\": \"CN20059510503\",\n            \"shipNameCn\": \"凌杰1号\",\n            \"shipNameEn\": \"LING JIE 1 HAO\",\n            \"mmsi\": \"413771265\",\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉华新水泥4号码头\",\n            \"shipGrosston\": \"1413\",\n            \"shipBreadth\": \"13.6\",\n            \"shipDepth\": \"4.2\",\n            \"draftForward\": \"0.2\",\n            \"aftDraft\": \"1.2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\"\n        }, {\n            \"rowno\": \"42\",\n            \"estimatedTime\": \"2024/09/10 09:10\",\n            \"shipId\": \"CN20077100073\",\n            \"shipNameCn\": \"供应888\",\n            \"shipNameEn\": \"GONG YING 888\",\n            \"mmsi\": 413820587,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"其他泊位(武汉港--武汉市新洲区海事处)\",\n            \"shipGrosston\": \"275\",\n            \"shipBreadth\": \"8\",\n            \"shipDepth\": \"1.9\",\n            \"draftForward\": \"1\",\n            \"aftDraft\": \"1\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.511669921875,\n            \"latitude\": 30.677632649739582,\n            \"distance\": \"4.75\"\n        }, {\n            \"rowno\": \"43\",\n            \"estimatedTime\": \"2024/09/10 09:30\",\n            \"shipId\": \"CN20165633283\",\n            \"shipNameCn\": \"集海之俊\",\n            \"shipNameEn\": \"JI HAI ZHI JUN\",\n            \"mmsi\": 413381190,\n            \"shipImo\": \"- -\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉国际集装箱有限公司1期\",\n            \"shipGrosston\": \"8214\",\n            \"shipBreadth\": \"21.4\",\n            \"shipDepth\": \"10.2\",\n            \"draftForward\": \"1.5\",\n            \"aftDraft\": \"3.5\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.57910970052083,\n            \"latitude\": 30.59136962890625,\n            \"distance\": \"7.40\"\n        }, {\n            \"rowno\": \"44\",\n            \"estimatedTime\": \"2024/09/10 09:30\",\n            \"shipId\": \"CN20098924964\",\n            \"shipNameCn\": \"湘长沙机1035\",\n            \"shipNameEn\": \"XIANG CHANG SHA JI 1035\",\n            \"mmsi\": 413833799,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武桥恒庆码头\",\n            \"shipGrosston\": \"2705\",\n            \"shipBreadth\": \"16\",\n            \"shipDepth\": \"5.2\",\n            \"draftForward\": \"0.6\",\n            \"aftDraft\": \"1.2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.13734537760416,\n            \"latitude\": 30.371759033203126,\n            \"distance\": \"50.74\"\n        }, {\n            \"rowno\": \"45\",\n            \"estimatedTime\": \"2024/09/10 09:33\",\n            \"shipId\": \"CN20102882422\",\n            \"shipNameCn\": \"江城4号\",\n            \"shipNameEn\": \"JIANG CHENG 4 HAO\",\n            \"mmsi\": 413841904,\n            \"shipImo\": \"----\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"5\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"晴川轮渡码头\",\n            \"shipGrosston\": \"668\",\n            \"shipBreadth\": \"9\",\n            \"shipDepth\": \"2.9\",\n            \"draftForward\": \"1.6\",\n            \"aftDraft\": \"2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.28118489583333,\n            \"latitude\": 30.55848592122396,\n            \"distance\": \"28.16\"\n        }, {\n            \"rowno\": \"46\",\n            \"estimatedTime\": \"2024/09/10 09:50\",\n            \"shipId\": \"CN20134257210\",\n            \"shipNameCn\": \"邦尼8号\",\n            \"shipNameEn\": \"BANG NI 8 HAO\",\n            \"mmsi\": 413826537,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉武钢有限公司1-6#码头\",\n            \"shipGrosston\": \"4727\",\n            \"shipBreadth\": \"18\",\n            \"shipDepth\": \"7.8\",\n            \"draftForward\": \"0.8\",\n            \"aftDraft\": \"2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 115.7956787109375,\n            \"latitude\": 29.77694091796875,\n            \"distance\": \"154.17\"\n        }, {\n            \"rowno\": \"47\",\n            \"estimatedTime\": \"2024/09/10 09:50\",\n            \"shipId\": \"CN20112208157\",\n            \"shipNameCn\": \"江城9号\",\n            \"shipNameEn\": \"JIANG CHENG 9 HAO\",\n            \"mmsi\": 413841981,\n            \"shipImo\": \"----\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"1\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉中华路轮渡码头\",\n            \"shipGrosston\": \"357\",\n            \"shipBreadth\": \"10\",\n            \"shipDepth\": \"2.9\",\n            \"draftForward\": \"1.4\",\n            \"aftDraft\": \"1.8\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.28865559895833,\n            \"latitude\": 30.552846272786457,\n            \"distance\": \"27.75\"\n        }, {\n            \"rowno\": \"48\",\n            \"estimatedTime\": \"2024/09/10 10:00\",\n            \"shipId\": \"CN20152203974\",\n            \"shipNameCn\": \"豫信货17809\",\n            \"shipNameEn\": \"YU XIN HUO 17809\",\n            \"mmsi\": 413835615,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉武钢物流有限公司7-9号码头\",\n            \"shipGrosston\": \"3668\",\n            \"shipBreadth\": \"17.8\",\n            \"shipDepth\": \"6.8\",\n            \"draftForward\": \"1.3\",\n            \"aftDraft\": \"1.5\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.47989095052084,\n            \"latitude\": 30.679494222005207,\n            \"distance\": \"7.56\"\n        }, {\n            \"rowno\": \"49\",\n            \"estimatedTime\": \"2024/09/10 10:00\",\n            \"shipId\": \"CN20146505117\",\n            \"shipNameCn\": \"西马38号\",\n            \"shipNameEn\": \"XI MA 38 HAO\",\n            \"mmsi\": 413829451,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉沌口散货码头\",\n            \"shipGrosston\": \"854\",\n            \"shipBreadth\": \"11.2\",\n            \"shipDepth\": \"4\",\n            \"draftForward\": \"0.2\",\n            \"aftDraft\": \"1.2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.4572509765625,\n            \"latitude\": 30.673307291666667,\n            \"distance\": \"9.44\"\n        }, {\n            \"rowno\": \"50\",\n            \"estimatedTime\": \"2024/09/10 10:00\",\n            \"shipId\": \"CN20066115008\",\n            \"shipNameCn\": \"荆楚2136\",\n            \"shipNameEn\": \"JING CHU 2136\",\n            \"mmsi\": 413772492,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"0\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"0\",\n            \"berthName\": \"长江武汉中石油湖北武汉油库中石油鄂3号囤\",\n            \"shipGrosston\": \"1588\",\n            \"shipBreadth\": \"14\",\n            \"shipDepth\": \"4\",\n            \"draftForward\": \"0.2\",\n            \"aftDraft\": \"2.4\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.68273111979167,\n            \"latitude\": 30.5770263671875,\n            \"distance\": \"15.08\"\n        }, {\n            \"rowno\": \"51\",\n            \"estimatedTime\": \"2024/09/10 10:20\",\n            \"shipId\": \"CN20115819209\",\n            \"shipNameCn\": \"江城10号\",\n            \"shipNameEn\": \"JIANG CHENG 10 HAO\",\n            \"mmsi\": 413842001,\n            \"shipImo\": \"----\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"19\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉中华路轮渡码头\",\n            \"shipGrosston\": \"357\",\n            \"shipBreadth\": \"10\",\n            \"shipDepth\": \"2.9\",\n            \"draftForward\": \"1.4\",\n            \"aftDraft\": \"1.8\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.28811848958334,\n            \"latitude\": 30.552099609375,\n            \"distance\": \"27.83\"\n        }, {\n            \"rowno\": \"52\",\n            \"estimatedTime\": \"2024/09/10 10:24\",\n            \"shipId\": \"CN20126517860\",\n            \"shipNameCn\": \"银河261\",\n            \"shipNameEn\": \"YINHE261\",\n            \"mmsi\": 413844788,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"王家屋干散货船舶锚地\",\n            \"shipGrosston\": \"459\",\n            \"shipBreadth\": \"10.5\",\n            \"shipDepth\": \"2.3\",\n            \"draftForward\": \"0.8\",\n            \"aftDraft\": \"1\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 113.89298502604167,\n            \"latitude\": 30.629986572265626,\n            \"distance\": \"63.35\"\n        }, {\n            \"rowno\": \"53\",\n            \"estimatedTime\": \"2024/09/10 10:30\",\n            \"shipId\": \"CN20106844939\",\n            \"shipNameCn\": \"扬子江物流681\",\n            \"shipNameEn\": \"YANG ZI JIANG WU LIU 681\",\n            \"mmsi\": \"413972032\",\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"4800\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉中航加油站\",\n            \"shipGrosston\": \"3053\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"5.3\",\n            \"draftForward\": \"4.3\",\n            \"aftDraft\": \"4.3\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\"\n        }, {\n            \"rowno\": \"54\",\n            \"estimatedTime\": \"2024/09/10 10:30\",\n            \"shipId\": \"CN20152137986\",\n            \"shipNameCn\": \"百川建成\",\n            \"shipNameEn\": \"BAI CHUAN JIAN CHENG\",\n            \"mmsi\": 413833496,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉飞旋螺旋桨码头\",\n            \"shipGrosston\": \"7101\",\n            \"shipBreadth\": \"21.8\",\n            \"shipDepth\": \"8.8\",\n            \"draftForward\": \"1\",\n            \"aftDraft\": \"2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 115.31458333333333,\n            \"latitude\": 30.08564656575521,\n            \"distance\": \"96.59\"\n        }, {\n            \"rowno\": \"55\",\n            \"estimatedTime\": \"2024/09/10 11:00\",\n            \"shipId\": \"CN20102868008\",\n            \"shipNameCn\": \"东方6689\",\n            \"shipNameEn\": \"DONG FANG 6689\",\n            \"mmsi\": 413777299,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉飞旋螺旋桨码头\",\n            \"shipGrosston\": \"3296\",\n            \"shipBreadth\": \"15.5\",\n            \"shipDepth\": \"7.2\",\n            \"draftForward\": \"0.8\",\n            \"aftDraft\": \"1.5\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 115.403759765625,\n            \"latitude\": 29.91092732747396,\n            \"distance\": \"116.13\"\n        }, {\n            \"rowno\": \"56\",\n            \"estimatedTime\": \"2024/09/10 11:00\",\n            \"shipId\": \"CN20142394450\",\n            \"shipNameCn\": \"江集运1271\",\n            \"shipNameEn\": \"JIANG JI YUN 1271\",\n            \"mmsi\": 413941051,\n            \"shipImo\": \"---\",\n            \"actualCarryingCapacity\": \"3100\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉港务国际集装箱有限公司3期\",\n            \"shipGrosston\": \"3585\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"5.3\",\n            \"draftForward\": \"3.3\",\n            \"aftDraft\": \"3.4\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 113.95777180989583,\n            \"latitude\": 30.29849650065104,\n            \"distance\": \"69.46\"\n        }, {\n            \"rowno\": \"57\",\n            \"estimatedTime\": \"2024/09/10 11:06\",\n            \"shipId\": \"CN20098342454\",\n            \"shipNameCn\": \"大建698\",\n            \"shipNameEn\": \"DA JIAN 698\",\n            \"mmsi\": 413806162,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武桥恒庆码头\",\n            \"shipGrosston\": \"1592\",\n            \"shipBreadth\": \"13.6\",\n            \"shipDepth\": \"4.7\",\n            \"draftForward\": \"0.8\",\n            \"aftDraft\": \"1.4\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.499609375,\n            \"latitude\": 30.679319254557292,\n            \"distance\": \"5.84\"\n        }, {\n            \"rowno\": \"58\",\n            \"estimatedTime\": \"2024/09/10 11:15\",\n            \"shipId\": \"CN20189061828\",\n            \"shipNameCn\": \"宁化502\",\n            \"shipNameEn\": \"NING HUA 502\",\n            \"mmsi\": 413849914,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"4336.75\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"4336.75\",\n            \"berthName\": \"王家屋危险品船舶锚地\",\n            \"shipGrosston\": \"2995\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"5.5\",\n            \"draftForward\": \"4.4\",\n            \"aftDraft\": \"4.4\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.59398600260417,\n            \"latitude\": 30.55977986653646,\n            \"distance\": \"11.18\"\n        }, {\n            \"rowno\": \"59\",\n            \"estimatedTime\": \"2024/09/10 11:29\",\n            \"shipId\": \"CN20195102124\",\n            \"shipNameCn\": \"润兴集588\",\n            \"shipNameEn\": \"RUN XING JI 588\",\n            \"mmsi\": 413847068,\n            \"shipImo\": \"-\",\n            \"actualCarryingCapacity\": \"750\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉港集装箱有限公司2期\",\n            \"shipGrosston\": \"1984\",\n            \"shipBreadth\": \"13.4\",\n            \"shipDepth\": \"5.2\",\n            \"draftForward\": \"2.6\",\n            \"aftDraft\": \"2.6\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 113.65370279947916,\n            \"latitude\": 29.91444091796875,\n            \"distance\": \"119.23\"\n        }, {\n            \"rowno\": \"60\",\n            \"estimatedTime\": \"2024/09/10 11:30\",\n            \"shipId\": \"CN20109253309\",\n            \"shipNameCn\": \"华林618\",\n            \"shipNameEn\": \"HUA LIN 618\",\n            \"mmsi\": 413816475,\n            \"shipImo\": \"-\",\n            \"actualCarryingCapacity\": \"3700\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"李家矶一期锚地\",\n            \"shipGrosston\": \"1893\",\n            \"shipBreadth\": \"13.96\",\n            \"shipDepth\": \"5.65\",\n            \"draftForward\": \"4.8\",\n            \"aftDraft\": \"4.6\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.15152180989584,\n            \"latitude\": 30.378387451171875,\n            \"distance\": \"49.21\"\n        }, {\n            \"rowno\": \"61\",\n            \"estimatedTime\": \"2024/09/10 11:30\",\n            \"shipId\": \"CN20170287209\",\n            \"shipNameCn\": \"通达化03\",\n            \"shipNameEn\": \"TONGDAHUA03\",\n            \"mmsi\": 413849937,\n            \"shipImo\": \"--\",\n            \"actualCarryingCapacity\": \"1860\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"1860\",\n            \"berthName\": \"武汉港青山港区中韩(武汉)石化码头3#\",\n            \"shipGrosston\": \"2782\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"5.5\",\n            \"draftForward\": \"2.6\",\n            \"aftDraft\": \"2.6\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 117.23680013020834,\n            \"latitude\": 30.634733072916667,\n            \"distance\": \"257.24\"\n        }, {\n            \"rowno\": \"62\",\n            \"estimatedTime\": \"2024/09/10 11:58\",\n            \"shipId\": \"CN20094570500\",\n            \"shipNameCn\": \"西马8号\",\n            \"shipNameEn\": \"XI MA 8 HAO\",\n            \"mmsi\": \"413811338\",\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"1099\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉青山西马1-2#码头\",\n            \"shipGrosston\": \"624\",\n            \"shipBreadth\": \"9\",\n            \"shipDepth\": \"3.8\",\n            \"draftForward\": \"3.1\",\n            \"aftDraft\": \"3.1\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\"\n        }, {\n            \"rowno\": \"63\",\n            \"estimatedTime\": \"2024/09/10 11:59\",\n            \"shipId\": \"CN20146654003\",\n            \"shipNameCn\": \"南海翔\",\n            \"shipNameEn\": \"NAN HAI XIANG\",\n            \"mmsi\": 413828604,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"1150\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉娲石公司码头\",\n            \"shipGrosston\": \"973\",\n            \"shipBreadth\": \"11.5\",\n            \"shipDepth\": \"4.05\",\n            \"draftForward\": \"2.5\",\n            \"aftDraft\": \"2.3\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.116943359375,\n            \"latitude\": 30.355173746744793,\n            \"distance\": \"53.42\"\n        }, {\n            \"rowno\": \"64\",\n            \"estimatedTime\": \"2024/09/10 12:00\",\n            \"shipId\": \"CN20197017649\",\n            \"shipNameCn\": \"湘水运26\",\n            \"shipNameEn\": \"XIANG SHUI YUN26\",\n            \"mmsi\": 413253910,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"5126\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"1200\",\n            \"berthName\": \"武汉国际集装箱有限公司1期\",\n            \"shipGrosston\": \"9191\",\n            \"shipBreadth\": \"21.6\",\n            \"shipDepth\": \"9.2\",\n            \"draftForward\": \"4.7\",\n            \"aftDraft\": \"4.8\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 113.63251953125,\n            \"latitude\": 29.908589680989582,\n            \"distance\": \"121.16\"\n        }, {\n            \"rowno\": \"65\",\n            \"estimatedTime\": \"2024/09/10 12:00\",\n            \"shipId\": \"CN20127235704\",\n            \"shipNameCn\": \"新宜6666\",\n            \"shipNameEn\": \"XIN YI 6666\",\n            \"mmsi\": 413822279,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"888\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉金口港区重件多用码头\",\n            \"shipGrosston\": \"967\",\n            \"shipBreadth\": \"11.5\",\n            \"shipDepth\": \"4\",\n            \"draftForward\": \"2\",\n            \"aftDraft\": \"2.2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.43782552083333,\n            \"latitude\": 30.666280110677082,\n            \"distance\": \"11.14\"\n        }, {\n            \"rowno\": \"66\",\n            \"estimatedTime\": \"2024/09/10 12:00\",\n            \"shipId\": \"CN20157189559\",\n            \"shipNameCn\": \"远海696\",\n            \"shipNameEn\": \"YUAN HAI 696\",\n            \"mmsi\": 413830287,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"12000\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"王家屋干散货船舶锚地\",\n            \"shipGrosston\": \"7591\",\n            \"shipBreadth\": \"21.8\",\n            \"shipDepth\": \"8.8\",\n            \"draftForward\": \"6\",\n            \"aftDraft\": \"5.8\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.45589192708333,\n            \"latitude\": 30.673160807291666,\n            \"distance\": \"9.56\"\n        }, {\n            \"rowno\": \"67\",\n            \"estimatedTime\": \"2024/09/10 12:00\",\n            \"shipId\": \"CN20173936826\",\n            \"shipNameCn\": \"久源\",\n            \"shipNameEn\": \"JIU YUAN\",\n            \"mmsi\": \"413381160\",\n            \"shipImo\": \"- -\",\n            \"actualCarryingCapacity\": \"649\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"541\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉沌口滚装码头\",\n            \"shipGrosston\": \"8807\",\n            \"shipBreadth\": \"16.8\",\n            \"shipDepth\": \"5.3\",\n            \"draftForward\": \"2.6\",\n            \"aftDraft\": \"2.6\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\"\n        }, {\n            \"rowno\": \"68\",\n            \"estimatedTime\": \"2024/09/10 12:06\",\n            \"shipId\": \"CN20197392240\",\n            \"shipNameCn\": \"长燃70\",\n            \"shipNameEn\": \"CHANG RAN 70\",\n            \"mmsi\": 413848235,\n            \"shipImo\": \"----\",\n            \"actualCarryingCapacity\": \"50\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"50\",\n            \"berthName\": \"长江武汉中石化长燃新五里加油站\",\n            \"shipGrosston\": \"378\",\n            \"shipBreadth\": \"8\",\n            \"shipDepth\": \"3.15\",\n            \"draftForward\": \"0.5\",\n            \"aftDraft\": \"2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.24745279947916,\n            \"latitude\": 30.51043701171875,\n            \"distance\": \"33.38\"\n        }, {\n            \"rowno\": \"69\",\n            \"estimatedTime\": \"2024/09/10 12:08\",\n            \"shipId\": \"CN20176812695\",\n            \"shipNameCn\": \"湘津市货1598\",\n            \"shipNameEn\": \"XIANG JIN SHI HUO 1598\",\n            \"mmsi\": 413836112,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉长利玻璃公司码头\",\n            \"shipGrosston\": \"1720\",\n            \"shipBreadth\": \"14.6\",\n            \"shipDepth\": \"3.7\",\n            \"draftForward\": \"0.8\",\n            \"aftDraft\": \"1.2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 113.23722330729167,\n            \"latitude\": 29.553753662109376,\n            \"distance\": \"175.99\"\n        }, {\n            \"rowno\": \"70\",\n            \"estimatedTime\": \"2024/09/10 12:18\",\n            \"shipId\": \"CN20116983799\",\n            \"shipNameCn\": \"宇洋09\",\n            \"shipNameEn\": \"YU YANG 09\",\n            \"mmsi\": 413818043,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉武钢有限公司1-6#码头\",\n            \"shipGrosston\": \"4840\",\n            \"shipBreadth\": \"18\",\n            \"shipDepth\": \"8\",\n            \"draftForward\": \"1\",\n            \"aftDraft\": \"1.5\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 115.43479817708334,\n            \"latitude\": 29.88346964518229,\n            \"distance\": \"120.40\"\n        }, {\n            \"rowno\": \"71\",\n            \"estimatedTime\": \"2024/09/10 12:20\",\n            \"shipId\": \"CN20193016062\",\n            \"shipNameCn\": \"湘州金运15919\",\n            \"shipNameEn\": \"XIANG ZHOU JIN YUN 15919\",\n            \"mmsi\": 413841979,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"110\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉新洲石油分公司码头\",\n            \"shipGrosston\": \"993\",\n            \"shipBreadth\": \"11\",\n            \"shipDepth\": \"4.2\",\n            \"draftForward\": \"0.8\",\n            \"aftDraft\": \"1.4\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.8364013671875,\n            \"latitude\": 30.52143758138021,\n            \"distance\": \"30.90\"\n        }, {\n            \"rowno\": \"72\",\n            \"estimatedTime\": \"2024/09/10 12:50\",\n            \"shipId\": \"CN20137738549\",\n            \"shipNameCn\": \"豫信货13219\",\n            \"shipNameEn\": \"YU XIN HUO 13219\",\n            \"mmsi\": 413827429,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉武钢有限公司1-6#码头\",\n            \"shipGrosston\": \"6745\",\n            \"shipBreadth\": \"21\",\n            \"shipDepth\": \"8.6\",\n            \"draftForward\": \"0.6\",\n            \"aftDraft\": \"1.8\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 115.4049072265625,\n            \"latitude\": 29.91110636393229,\n            \"distance\": \"116.20\"\n        }, {\n            \"rowno\": \"73\",\n            \"estimatedTime\": \"2024/09/10 13:00\",\n            \"shipId\": \"CN20108096502\",\n            \"shipNameCn\": \"豫信货13338\",\n            \"shipNameEn\": \"YU XIN HUO 13338\",\n            \"mmsi\": 413804141,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武桥恒庆码头\",\n            \"shipGrosston\": \"3472\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"6.6\",\n            \"draftForward\": \"0.6\",\n            \"aftDraft\": \"1.8\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 113.6124267578125,\n            \"latitude\": 29.88800048828125,\n            \"distance\": \"124.14\"\n        }, {\n            \"rowno\": \"74\",\n            \"estimatedTime\": \"2024/09/10 13:10\",\n            \"shipId\": \"CN20124426804\",\n            \"shipNameCn\": \"通达起顺\",\n            \"shipNameEn\": \"TONG DA QI SHUN\",\n            \"mmsi\": 413817319,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"72\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉港务国际集装箱有限公司3期\",\n            \"shipGrosston\": \"3226\",\n            \"shipBreadth\": \"14\",\n            \"shipDepth\": \"5.6\",\n            \"draftForward\": \"1.8\",\n            \"aftDraft\": \"1.8\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.72568359375,\n            \"latitude\": 30.60055948893229,\n            \"distance\": \"17.57\"\n        }, {\n            \"rowno\": \"75\",\n            \"estimatedTime\": \"2024/09/10 13:12\",\n            \"shipId\": \"CN20122564346\",\n            \"shipNameCn\": \"东兴608\",\n            \"shipNameEn\": \"DONG XING 608\",\n            \"mmsi\": 413792233,\n            \"shipImo\": \"-\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"大咀抛石区\",\n            \"shipGrosston\": \"502\",\n            \"shipBreadth\": \"9.8\",\n            \"shipDepth\": \"2.4\",\n            \"draftForward\": \"0.4\",\n            \"aftDraft\": \"0.9\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.16910807291667,\n            \"latitude\": 30.393625895182293,\n            \"distance\": \"46.84\"\n        }, {\n            \"rowno\": \"76\",\n            \"estimatedTime\": \"2024/09/10 13:15\",\n            \"shipId\": \"CN20159986135\",\n            \"shipNameCn\": \"江苏集555555\",\n            \"shipNameEn\": \"JIANG SU JI 555555\",\n            \"mmsi\": 413839018,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"90\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉国际集装箱有限公司1期\",\n            \"shipGrosston\": \"1530\",\n            \"shipBreadth\": \"13.6\",\n            \"shipDepth\": \"4.6\",\n            \"draftForward\": \"1.1\",\n            \"aftDraft\": \"1.1\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.54574381510416,\n            \"latitude\": 30.666560872395834,\n            \"distance\": \"1.54\"\n        }, {\n            \"rowno\": \"77\",\n            \"estimatedTime\": \"2024/09/10 13:23\",\n            \"shipId\": \"CN19871172774\",\n            \"shipNameCn\": \"钢港作壹号\",\n            \"shipNameEn\": \"GANG GANG ZUO YI HAO\",\n            \"mmsi\": 413820045,\n            \"shipImo\": \"----\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉武钢有限公司1-6#码头\",\n            \"shipGrosston\": \"458\",\n            \"shipBreadth\": \"11\",\n            \"shipDepth\": \"2.5\",\n            \"draftForward\": \"0.8\",\n            \"aftDraft\": \"1.2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.56693522135417,\n            \"latitude\": 30.624894205729166,\n            \"distance\": \"3.51\"\n        }, {\n            \"rowno\": \"78\",\n            \"estimatedTime\": \"2024/09/10 13:43\",\n            \"shipId\": \"CN20231410551\",\n            \"shipNameCn\": \"鄂宏顺9138\",\n            \"shipNameEn\": \"E HONG SHUN 9138\",\n            \"mmsi\": 413881327,\n            \"shipImo\": \"-\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武桥恒庆码头\",\n            \"shipGrosston\": \"2492\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"5.3\",\n            \"draftForward\": \"0.6\",\n            \"aftDraft\": \"2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.26140950520833,\n            \"latitude\": 30.524239095052085,\n            \"distance\": \"31.48\"\n        }, {\n            \"rowno\": \"79\",\n            \"estimatedTime\": \"2024/09/10 14:00\",\n            \"shipId\": \"CN20235696771\",\n            \"shipNameCn\": \"华夏辉煌\",\n            \"shipNameEn\": \"HUA XIA HUI HUANG\",\n            \"mmsi\": 413881907,\n            \"shipImo\": \"-\",\n            \"actualCarryingCapacity\": \"4000\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉港务国际集装箱有限公司3期\",\n            \"shipGrosston\": \"7143\",\n            \"shipBreadth\": \"19\",\n            \"shipDepth\": \"8\",\n            \"draftForward\": \"4\",\n            \"aftDraft\": \"4\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 115.220263671875,\n            \"latitude\": 30.20733642578125,\n            \"distance\": \"81.00\"\n        }, {\n            \"rowno\": \"80\",\n            \"estimatedTime\": \"2024/09/10 14:00\",\n            \"shipId\": \"CN20136940185\",\n            \"shipNameCn\": \"金洲粮油999\",\n            \"shipNameEn\": \"JIN ZHOU LIANG YOU 999\",\n            \"mmsi\": 413855882,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"0\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉市第六粮库食用油码头\",\n            \"shipGrosston\": \"596\",\n            \"shipBreadth\": \"11\",\n            \"shipDepth\": \"3.44\",\n            \"draftForward\": \"0.8\",\n            \"aftDraft\": \"1.2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 116.4361083984375,\n            \"latitude\": 29.88060099283854,\n            \"distance\": \"200.45\"\n        }, {\n            \"rowno\": \"81\",\n            \"estimatedTime\": \"2024/09/10 14:00\",\n            \"shipId\": \"CN20209819491\",\n            \"shipNameCn\": \"民东\",\n            \"shipNameEn\": \"MIN DONG\",\n            \"mmsi\": 413847424,\n            \"shipImo\": \"---\",\n            \"actualCarryingCapacity\": \"4680\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉中航加油站\",\n            \"shipGrosston\": \"4544\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"5.8\",\n            \"draftForward\": \"4.2\",\n            \"aftDraft\": \"4.1\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 113.71123860677083,\n            \"latitude\": 29.926863606770834,\n            \"distance\": \"114.30\"\n        }, {\n            \"rowno\": \"82\",\n            \"estimatedTime\": \"2024/09/10 14:00\",\n            \"shipId\": \"CN20097379481\",\n            \"shipNameCn\": \"豫信货10262\",\n            \"shipNameEn\": \"YV XIN HUO 10262\",\n            \"mmsi\": 413814137,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"470\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"华航舵落口港埠公司5号泊位\",\n            \"shipGrosston\": \"331\",\n            \"shipBreadth\": \"8.4\",\n            \"shipDepth\": \"3\",\n            \"draftForward\": \"2.4\",\n            \"aftDraft\": \"2.4\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 115.69916178385417,\n            \"latitude\": 29.842020670572918,\n            \"distance\": \"142.38\"\n        }, {\n            \"rowno\": \"83\",\n            \"estimatedTime\": \"2024/09/10 14:08\",\n            \"shipId\": \"CN20207413388\",\n            \"shipNameCn\": \"鹄茂999\",\n            \"shipNameEn\": \"HU MAO 999\",\n            \"mmsi\": \"413865032\",\n            \"shipImo\": \"----\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"王家屋干散货船舶锚地\",\n            \"shipGrosston\": \"121\",\n            \"shipBreadth\": \"6\",\n            \"shipDepth\": \"2.2\",\n            \"draftForward\": \"0.2\",\n            \"aftDraft\": \"0.8\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\"\n        }, {\n            \"rowno\": \"84\",\n            \"estimatedTime\": \"2024/09/10 14:08\",\n            \"shipId\": \"CN20121802887\",\n            \"shipNameCn\": \"华翔2696\",\n            \"shipNameEn\": \"HUA XIANG 2696\",\n            \"mmsi\": 413993879,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉亚东水泥码头\",\n            \"shipGrosston\": \"4040\",\n            \"shipBreadth\": \"17.6\",\n            \"shipDepth\": \"7.4\",\n            \"draftForward\": \"0.6\",\n            \"aftDraft\": \"2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 115.27255045572916,\n            \"latitude\": 30.151953125,\n            \"distance\": \"88.76\"\n        }, {\n            \"rowno\": \"85\",\n            \"estimatedTime\": \"2024/09/10 14:20\",\n            \"shipId\": \"CN20112489950\",\n            \"shipNameCn\": \"世纪传奇\",\n            \"shipNameEn\": \"SHI JI CHUAN QI\",\n            \"mmsi\": 413823708,\n            \"shipImo\": \"---\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"284\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉汉港20码头\",\n            \"shipGrosston\": \"12565\",\n            \"shipBreadth\": \"19\",\n            \"shipDepth\": \"4.2\",\n            \"draftForward\": \"2.83\",\n            \"aftDraft\": \"2.88\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 113.1418701171875,\n            \"latitude\": 29.43843994140625,\n            \"distance\": \"191.55\"\n        }, {\n            \"rowno\": \"86\",\n            \"estimatedTime\": \"2024/09/10 14:30\",\n            \"shipId\": \"CN20109542046\",\n            \"shipNameCn\": \"民华\",\n            \"shipNameEn\": \"MIN HUA\",\n            \"mmsi\": 413762839,\n            \"shipImo\": \"---\",\n            \"actualCarryingCapacity\": \"467\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"311\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉沌口滚装码头\",\n            \"shipGrosston\": \"13550\",\n            \"shipBreadth\": \"21.7\",\n            \"shipDepth\": \"5.2\",\n            \"draftForward\": \"2\",\n            \"aftDraft\": \"2.7\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 111.41175944010416,\n            \"latitude\": 30.517777506510416,\n            \"distance\": \"301.68\"\n        }, {\n            \"rowno\": \"87\",\n            \"estimatedTime\": \"2024/09/10 14:30\",\n            \"shipId\": \"CN20132155347\",\n            \"shipNameCn\": \"龙航116\",\n            \"shipNameEn\": \"LONG HANG 116\",\n            \"mmsi\": 413821794,\n            \"shipImo\": \"-\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉盛大码头\",\n            \"shipGrosston\": \"2114\",\n            \"shipBreadth\": \"14.6\",\n            \"shipDepth\": \"5.7\",\n            \"draftForward\": \"2\",\n            \"aftDraft\": \"0.5\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.9344970703125,\n            \"latitude\": 30.403810628255208,\n            \"distance\": \"45.93\"\n        }, {\n            \"rowno\": \"88\",\n            \"estimatedTime\": \"2024/09/10 15:00\",\n            \"shipId\": \"CN20109992266\",\n            \"shipNameCn\": \"长燃55\",\n            \"shipNameEn\": \"CHANG RAN 55\",\n            \"mmsi\": 413781538,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"0\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"0\",\n            \"berthName\": \"长江武汉中石化长燃新五里加油站\",\n            \"shipGrosston\": \"1516\",\n            \"shipBreadth\": \"14\",\n            \"shipDepth\": \"5.1\",\n            \"draftForward\": \"0.4\",\n            \"aftDraft\": \"3\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 115.8060302734375,\n            \"latitude\": 29.765997314453124,\n            \"distance\": \"155.71\"\n        }, {\n            \"rowno\": \"89\",\n            \"estimatedTime\": \"2024/09/10 15:00\",\n            \"shipId\": \"CN20227612787\",\n            \"shipNameCn\": \"富发7\",\n            \"shipNameEn\": \"FU FA 7\",\n            \"mmsi\": 413872147,\n            \"shipImo\": \"---\",\n            \"actualCarryingCapacity\": \"6300\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"中交二航局双柳基地码头\",\n            \"shipGrosston\": \"4739\",\n            \"shipBreadth\": \"16.26\",\n            \"shipDepth\": \"7\",\n            \"draftForward\": \"4.3\",\n            \"aftDraft\": \"4.3\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.01931966145834,\n            \"latitude\": 30.161409505208333,\n            \"distance\": \"74.95\"\n        }, {\n            \"rowno\": \"90\",\n            \"estimatedTime\": \"2024/09/10 15:00\",\n            \"shipId\": \"CN20086972390\",\n            \"shipNameCn\": \"嘉航099\",\n            \"shipNameEn\": \"JIA HANG 099\",\n            \"mmsi\": 413820617,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"其他泊位(武汉港--武汉市蔡甸区海事处)\",\n            \"shipGrosston\": \"714\",\n            \"shipBreadth\": \"10.8\",\n            \"shipDepth\": \"2.5\",\n            \"draftForward\": \"0.6\",\n            \"aftDraft\": \"1.2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.80381673177084,\n            \"latitude\": 30.609513346354166,\n            \"distance\": \"24.53\"\n        }, {\n            \"rowno\": \"91\",\n            \"estimatedTime\": \"2024/09/10 15:00\",\n            \"shipId\": \"CN20043053014\",\n            \"shipNameCn\": \"豫信货11112\",\n            \"shipNameEn\": \"YU XIN HUO 11112\",\n            \"mmsi\": \"413804444\",\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉长航集团军山船厂\",\n            \"shipGrosston\": \"1332\",\n            \"shipBreadth\": \"12.2\",\n            \"shipDepth\": \"4.7\",\n            \"draftForward\": \"0.6\",\n            \"aftDraft\": \"1\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\"\n        }, {\n            \"rowno\": \"92\",\n            \"estimatedTime\": \"2024/09/10 15:35\",\n            \"shipId\": \"CN20126023940\",\n            \"shipNameCn\": \"顺航6689\",\n            \"shipNameEn\": \"SHUN HANG 6689\",\n            \"mmsi\": 413792706,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"港通装卸码头\",\n            \"shipGrosston\": \"982\",\n            \"shipBreadth\": \"12.2\",\n            \"shipDepth\": \"4.1\",\n            \"draftForward\": \"0.8\",\n            \"aftDraft\": \"1\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.49078776041667,\n            \"latitude\": 30.6800537109375,\n            \"distance\": \"6.63\"\n        }, {\n            \"rowno\": \"93\",\n            \"estimatedTime\": \"2024/09/10 15:46\",\n            \"shipId\": \"CN20148892914\",\n            \"shipNameCn\": \"皖海顺5188\",\n            \"shipNameEn\": \"WAN HAI SHUN 5188\",\n            \"mmsi\": 413842327,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉亚东水泥码头\",\n            \"shipGrosston\": \"2988\",\n            \"shipBreadth\": \"15.5\",\n            \"shipDepth\": \"6.3\",\n            \"draftForward\": \"0.8\",\n            \"aftDraft\": \"1.2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 115.10440266927084,\n            \"latitude\": 30.36507364908854,\n            \"distance\": \"61.86\"\n        }, {\n            \"rowno\": \"94\",\n            \"estimatedTime\": \"2024/09/10 15:56\",\n            \"shipId\": \"CN20116510264\",\n            \"shipNameCn\": \"祥云09\",\n            \"shipNameEn\": \"XIANG YUN 09\",\n            \"mmsi\": 413787165,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"2800\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉金控粮食码头\",\n            \"shipGrosston\": \"2191\",\n            \"shipBreadth\": \"14.8\",\n            \"shipDepth\": \"4.8\",\n            \"draftForward\": \"3.5\",\n            \"aftDraft\": \"3.2\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 113.89860026041667,\n            \"latitude\": 30.270487467447918,\n            \"distance\": \"75.91\"\n        }, {\n            \"rowno\": \"95\",\n            \"estimatedTime\": \"2024/09/10 15:58\",\n            \"shipId\": \"CN20241605302\",\n            \"shipNameCn\": \"豫信货18895\",\n            \"shipNameEn\": \"YU XIN HUO 18895\",\n            \"mmsi\": 413882923,\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"1900\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"王家屋干散货船舶锚地\",\n            \"shipGrosston\": \"994\",\n            \"shipBreadth\": \"11.46\",\n            \"shipDepth\": \"4.3\",\n            \"draftForward\": \"3.59\",\n            \"aftDraft\": \"3.6\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 116.19974772135417,\n            \"latitude\": 29.76297607421875,\n            \"distance\": \"186.80\"\n        }, {\n            \"rowno\": \"96\",\n            \"estimatedTime\": \"2024/09/10 16:00\",\n            \"shipId\": \"CN20176485205\",\n            \"shipNameCn\": \"安吉208\",\n            \"shipNameEn\": \"AN JI 208\",\n            \"mmsi\": 413870622,\n            \"shipImo\": \"--\",\n            \"actualCarryingCapacity\": \"590\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"359\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"汉南港汽车滚装码头\",\n            \"shipGrosston\": \"8582\",\n            \"shipBreadth\": \"16.6\",\n            \"shipDepth\": \"5.2\",\n            \"draftForward\": \"2.6\",\n            \"aftDraft\": \"2.6\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.1606689453125,\n            \"latitude\": 30.386476643880208,\n            \"distance\": \"47.97\"\n        }, {\n            \"rowno\": \"97\",\n            \"estimatedTime\": \"2024/09/10 16:00\",\n            \"shipId\": \"CN20109415625\",\n            \"shipNameCn\": \"航旭805\",\n            \"shipNameEn\": \"HANG XU 805\",\n            \"mmsi\": 413810583,\n            \"shipImo\": \"--\",\n            \"actualCarryingCapacity\": \"4220\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉花山重件码头\",\n            \"shipGrosston\": \"4450\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"5.6\",\n            \"draftForward\": \"3.35\",\n            \"aftDraft\": \"3.55\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 114.0780517578125,\n            \"latitude\": 30.129720052083332,\n            \"distance\": \"73.94\"\n        }, {\n            \"rowno\": \"98\",\n            \"estimatedTime\": \"2024/09/10 16:00\",\n            \"shipId\": \"CN20157511243\",\n            \"shipNameCn\": \"华嘉2号\",\n            \"shipNameEn\": \"HUA JIA 2 HAO\",\n            \"mmsi\": 413834492,\n            \"shipImo\": \"——\",\n            \"actualCarryingCapacity\": \"933\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"746\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉江盛物流滚装码头\",\n            \"shipGrosston\": \"8103\",\n            \"shipBreadth\": \"17.16\",\n            \"shipDepth\": \"5\",\n            \"draftForward\": \"2.7\",\n            \"aftDraft\": \"2.7\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 115.7189453125,\n            \"latitude\": 29.829833984375,\n            \"distance\": \"144.71\"\n        }, {\n            \"rowno\": \"99\",\n            \"estimatedTime\": \"2024/09/10 16:00\",\n            \"shipId\": \"CN20229037637\",\n            \"shipNameCn\": \"光华888\",\n            \"shipNameEn\": \"GUANG HUA 888\",\n            \"mmsi\": 413869035,\n            \"shipImo\": \"——\",\n            \"actualCarryingCapacity\": \"4800\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"水洪口普货锚地\",\n            \"shipGrosston\": \"3851\",\n            \"shipBreadth\": \"16.26\",\n            \"shipDepth\": \"6.6\",\n            \"draftForward\": \"4\",\n            \"aftDraft\": \"3.9\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\",\n            \"longitude\": 113.8972412109375,\n            \"latitude\": 30.268117268880207,\n            \"distance\": \"76.17\"\n        }, {\n            \"rowno\": \"100\",\n            \"estimatedTime\": \"2024/09/10 16:00\",\n            \"shipId\": \"CN20195342586\",\n            \"shipNameCn\": \"俞垛2828\",\n            \"shipNameEn\": \"YU DUO 2828\",\n            \"mmsi\": \"413838612\",\n            \"shipImo\": \"\",\n            \"actualCarryingCapacity\": \"1350\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"1350\",\n            \"berthName\": \"王家屋危险品船舶锚地\",\n            \"shipGrosston\": \"997\",\n            \"shipBreadth\": \"12.96\",\n            \"shipDepth\": \"3.88\",\n            \"draftForward\": \"2.7\",\n            \"aftDraft\": \"2.7\",\n            \"status\": \"离港\",\n            \"totalCount\": \"155\"\n        }]\n    }\n}",
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
      "defaultValue" : null,
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
      "defaultValue" : null,
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
        "name" : "total",
        "value" : "155",
        "description" : "",
        "required" : false,
        "dataType" : "Integer",
        "type" : null,
        "defaultValue" : null,
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "list",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : null,
        "defaultValue" : null,
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
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "estimatedTime",
            "value" : "2024/09/10 01:19",
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
            "name" : "shipId",
            "value" : "CN20142122239",
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
            "name" : "shipNameCn",
            "value" : "鄂鑫航货1138",
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
            "name" : "shipNameEn",
            "value" : "E XIN HANG HUO 1138",
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
            "name" : "mmsi",
            "value" : "413838833",
            "description" : "",
            "required" : false,
            "dataType" : "Integer",
            "type" : null,
            "defaultValue" : null,
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
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "actualCarryingCapacity",
            "value" : "1200",
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
            "name" : "actualCapacity",
            "value" : "0",
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
            "name" : "realVehicle",
            "value" : "0",
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
            "name" : "realDangerCargo",
            "value" : "",
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
            "name" : "berthName",
            "value" : "李家矶一期锚地",
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
            "name" : "shipGrosston",
            "value" : "993",
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
            "name" : "shipBreadth",
            "value" : "13",
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
            "name" : "shipDepth",
            "value" : "3.06",
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
            "name" : "draftForward",
            "value" : "2.1",
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
            "name" : "aftDraft",
            "value" : "2.1",
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
            "name" : "status",
            "value" : "离港",
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
            "name" : "totalCount",
            "value" : "155",
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
            "name" : "longitude",
            "value" : "113.5997314453125",
            "description" : "",
            "required" : false,
            "dataType" : "Double",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "latitude",
            "value" : "30.4928466796875",
            "description" : "",
            "required" : false,
            "dataType" : "Double",
            "type" : null,
            "defaultValue" : null,
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "distance",
            "value" : "93.20",
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
      } ]
    } ]
  }
}
================================
import response;
import 'com.success.data.tag.TagUtils' as TagUtils;

var port;
var cityName;
var flag;
var portCodeList = [];
if (portName != null || portName != "") {
    var portSql = """
    select city_name,matching_flag from dict_data.d_cb_port_cockpit where port_pinyin = UPPER(#{portName})
  """
    port = db.dm_data.camel().selectOne(portSql);
    cityName = port.get("cityName");
    flag = port.get("matchingFlag");
    var portCodeListSql = """"""
    if (flag == "1") { //根据城市名称匹配port_code
        portCodeListSql = """
      select distinct port_code
        from dict_data.dim_l_t_location_info
      where basin = '干线'
        and berth_name NOT LIKE '%服务区%'
        and berth_name NOT LIKE '%锚地%'
        and berth_name NOT LIKE '%停泊区%'
        and city_name like concat(#{cityName},'%')
    """
    } else if (flag == "2") { //根据港口名称匹配port_code
        portCodeListSql = """
      select distinct port_code
        from dict_data.dim_l_t_location_info
      where basin = '干线'
        and berth_name NOT LIKE '%服务区%'
        and berth_name NOT LIKE '%锚地%'
        and berth_name NOT LIKE '%停泊区%'
        and port_name like concat(concat('%',#{cityName}),'%')
    """
    }
    portCodeList = db.dm_data.camel().select(portCodeListSql);
}
var portCodeArray = [];
if (portCodeList.size() > 0) {
    for (item in portCodeList) {
        portCodeArray.add(item.get("portCode")::string);
    }
}
var portCodeArraySize = portCodeArray.size();



var pageNum = page;
pageNum = pageNum != null & pageNum != '' ? pageNum : 1

var pageSize = size;
pageSize = pageSize != null & pageSize != '' ? pageSize : 10


var pageStart = """ select *
        from (select rownum rowno, b.*
              from (""";
var pageEnd = """ ) b
        where rownum <= ( #{pageNum} * #{pageSize})) a
        where a.rowno > ( ( #{pageNum} - 1 ) * #{pageSize} )""";

var sql = """
SELECT leave_TIME estimated_time,
       ship_id,
       ship_name_cn,
       ship_name_en,
       mmsi,
       SHIP_IMO,
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
       '离港' status,
       count(*) OVER() total_count
  from (select a.PORT_CODE,
               leave_TIME,
               ship_id,
               ship_name_cn,
               ship_name_en,
               mmsi,
               SHIP_IMO,
               ACTUAL_CARRYING_CAPACITY,
               ACTUAL_CAPACITY,
               REAL_VEHICLE,
               REAL_DANGER_CARGO,
               a.BERTH_name,
               SHIP_GROSSTON,
               SHIP_BREADTH,
               SHIP_DEPTH,
               DRAFT_FORWARD,
               AFT_DRAFT
        
          from (select *
                  from (select REPORT_PORT_CODE PORT_CODE，to_CHAR(EXPECT_TIME, 'YYYY/MM/DD hh24:mi') leave_TIME,
                               ship_id,
                               ship_name_cn,
                               ship_name_en,
                               mmsi,
                               SHIP_IMO,
                               ARRIVAL_OR_LEAVE,
                               ACTUAL_CARRYING_CAPACITY,
                               ACTUAL_CAPACITY,
                               REAL_VEHICLE,
                               REAL_DANGER_CARGO,
                               BERTH_name,
                               berth_code,
                               SHIP_GROSSTON,
                               SHIP_BREADTH,
                               SHIP_DEPTH,
                               DRAFT_FORWARD,
                               AFT_DRAFT,
                               ROW_NUMBER() OVER(PARTITION BY  mmsi ORDER BY EXPECT_TIME DESC) AS rn
                          from bds_biz_data.RPT_SHIP_EEP_REPORT_REC
                         where DELETE_FLAG != '1'
                           and if_revoke != '1'
                           and ARRIVAL_OR_LEAVE = '1'
                           and EXPECT_TIME >= sysdate
                            --and EXPECT_TIME >= trunc(sysdate) - 1
                           and EXPECT_TIME < trunc(sysdate) + 1) t
                 WHERE t.rn = 1) a,
               dict_data.dim_l_t_location_info p
         where a.BERTH_CODE = p.BERTH_CODE
                <if test="portCodeArraySize > 0" >
                  and p.port_code in
                  <foreach collection="portCodeArray" item = 'item'  open="(" separator="," close=")" >
                    #{item}
                  </foreach>
                </if>
      )
 order by leave_TIME
"""
//var  ret=db.biz_data.camel().page(sql);
var ret = db.biz_data.camel().select(pageStart + sql + pageEnd);

var list = ret;
var totalCount = 0;
if (list == null) {
    list = [];
}
for (item in list) {
    totalCount = item.get("totalCount");
}

var list2;
if (list != null && list != "") {
    var idList = [];
    for (itData in list) { //查询预进港所有船舶，然后去pg库查询实时位置
        if (itData.get("mmsi") != null && itData.get("mmsi") != "") {
            idList.add(Integer.decode(itData.get("mmsi")))
        }

    }
    if (idList.size() >= 1) {

        var sqlLon = """select longitude,latitude,mmsi, 
                         round(cast(public.ST_Distance(public.geography(public.ST_MakePoint          
                                      ("longitude","latitude")),
                                        public.geography(public.ST_MakePoint(b.lon , b.lat )))/1000  as numeric),2) as distance
                                        from  ais_pos_new_all a  left join SEARCH_GK_QQGKQD  b on 1=1
                                        where  1=1 and a.mmsi in                                  
                                                <foreach collection="idList"  open="(" separator="," close=")" item="item">
                                                #{item}
        </foreach> and  upper(replace(b.gkywmc,' ','')) = upper(replace(#{portName},' ',''))  """;
        list2 = db.ais.camel().select(sqlLon);

        if (list2 != null && list != null) {
            for (item in list) {
                for (item2 in list2) {
                    if (item.get("mmsi") != null && item2.get("mmsi") != null) {
                        if (item.get("mmsi").toString().equals(item2.get("mmsi").toString())) {
                            item.putAll(item2);
                        }
                    }
                }
            }
        }


    }

}
var dataBack = {
    "total": Integer.parseInt(totalCount::string),
    "list": list
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: dataBack

});