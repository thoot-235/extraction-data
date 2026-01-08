{
  "properties" : { },
  "id" : "2b5ffb2b958c44c6b52446732aabf398",
  "script" : null,
  "groupId" : "06840557c3324b57a151875e9c1c91e7",
  "name" : "港口-智驾预抵港船舶",
  "createTime" : null,
  "updateTime" : 1740476002691,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getSmartArrivePortShips",
  "method" : "GET",
  "parameters" : [ {
    "name" : "portName",
    "value" : "CHONGQING",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"total\": 141,\n        \"list\": [{\n            \"rowno\": \"1\",\n            \"estimatedTime\": \"2024/09/10 01:00\",\n            \"shipId\": \"CN20107358550\",\n            \"shipNameCn\": \"巨丰3\",\n            \"shipNameEn\": \"JU FENG 3\",\n            \"mmsi\": 413781855,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 19:04:24\",\n            \"actualCarryingCapacity\": \"2800\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"2800\",\n            \"berthName\": \"长江武汉中石化长燃新五里加油站\",\n            \"shipGrosston\": \"2075\",\n            \"shipBreadth\": \"14.8\",\n            \"shipDepth\": \"5.1\",\n            \"draftForward\": \"3.8\",\n            \"aftDraft\": \"3.8\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"87\",\n            \"totalCount\": \"141\",\n            \"longitude\": 112.9361083984375,\n            \"latitude\": 29.5060302734375,\n            \"distance\": \"201.26\"\n        }, {\n            \"rowno\": \"2\",\n            \"estimatedTime\": \"2024/09/10 01:00\",\n            \"shipId\": \"CN20196247907\",\n            \"shipNameCn\": \"哲源66\",\n            \"shipNameEn\": \"ZHE YUAN 66\",\n            \"mmsi\": 413842396,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 18:59:37\",\n            \"actualCarryingCapacity\": \"2997.1\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"2997.1\",\n            \"berthName\": \"长江武汉中航加油站\",\n            \"shipGrosston\": \"2268\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"5\",\n            \"draftForward\": \"3.8\",\n            \"aftDraft\": \"3.8\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"90\",\n            \"totalCount\": \"141\",\n            \"longitude\": 112.92159016927083,\n            \"latitude\": 29.570139567057293,\n            \"distance\": \"197.91\"\n        }, {\n            \"rowno\": \"3\",\n            \"estimatedTime\": \"2024/09/10 01:46\",\n            \"shipId\": \"CN20196763421\",\n            \"shipNameCn\": \"汉供1\",\n            \"shipNameEn\": \"HAN GONG 1\",\n            \"mmsi\": 413847436,\n            \"shipImo\": \"----\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 20:46:47\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉亚东水泥码头\",\n            \"shipGrosston\": \"189\",\n            \"shipBreadth\": \"6.5\",\n            \"shipDepth\": \"1.6\",\n            \"draftForward\": \"0.6\",\n            \"aftDraft\": \"0.8\",\n            \"realContainerQay\": \"0\",\n            \"shipLength\": \"28.8\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.52372233072917,\n            \"latitude\": 30.672300211588542,\n            \"distance\": \"3.46\"\n        }, {\n            \"rowno\": \"4\",\n            \"estimatedTime\": \"2024/09/10 02:00\",\n            \"shipId\": \"CN20173936826\",\n            \"shipNameCn\": \"久源\",\n            \"shipNameEn\": \"JIU YUAN\",\n            \"mmsi\": \"413381160\",\n            \"shipImo\": \"- -\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 10:21:15\",\n            \"actualCarryingCapacity\": \"762\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"635\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉沌口滚装码头\",\n            \"shipGrosston\": \"8807\",\n            \"shipBreadth\": \"16.8\",\n            \"shipDepth\": \"5.3\",\n            \"draftForward\": \"2.7\",\n            \"aftDraft\": \"2.7\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"110\",\n            \"totalCount\": \"141\"\n        }, {\n            \"rowno\": \"5\",\n            \"estimatedTime\": \"2024/09/10 02:00\",\n            \"shipId\": \"CN20238110359\",\n            \"shipNameCn\": \"航顺远洋\",\n            \"shipNameEn\": \"HANG SHUN YUAN YANG\",\n            \"mmsi\": 413881337,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 21:31:01\",\n            \"actualCarryingCapacity\": \"1840\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"潘家湾综合码头\",\n            \"shipGrosston\": \"991\",\n            \"shipBreadth\": \"11.48\",\n            \"shipDepth\": \"4.3\",\n            \"draftForward\": \"3.4\",\n            \"aftDraft\": \"3.4\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"67.34\",\n            \"totalCount\": \"141\",\n            \"longitude\": 113.85400390625,\n            \"latitude\": 29.966796875,\n            \"distance\": \"101.64\"\n        }, {\n            \"rowno\": \"6\",\n            \"estimatedTime\": \"2024/09/10 02:36\",\n            \"shipId\": \"CN20202952152\",\n            \"shipNameCn\": \"苏顺发998\",\n            \"shipNameEn\": \"SU SHUN FA 998\",\n            \"mmsi\": 413871069,\n            \"shipImo\": \"-\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 21:54:52\",\n            \"actualCarryingCapacity\": \"240\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉港务国际集装箱有限公司3期\",\n            \"shipGrosston\": \"1494\",\n            \"shipBreadth\": \"13.6\",\n            \"shipDepth\": \"4.6\",\n            \"draftForward\": \"1.5\",\n            \"aftDraft\": \"1.9\",\n            \"realContainerQay\": \"13\",\n            \"shipLength\": \"67.6\",\n            \"totalCount\": \"141\",\n            \"longitude\": 115.3299560546875,\n            \"latitude\": 30.02943318684896,\n            \"distance\": \"101.86\"\n        }, {\n            \"rowno\": \"7\",\n            \"estimatedTime\": \"2024/09/10 03:11\",\n            \"shipId\": \"CN20046779773\",\n            \"shipNameCn\": \"远顺89\",\n            \"shipNameEn\": \"YUAN SHUN 89\",\n            \"mmsi\": 413780432,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 23:12:04\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉中远海运码头\",\n            \"shipGrosston\": \"2271\",\n            \"shipBreadth\": \"13.2\",\n            \"shipDepth\": \"5.2\",\n            \"draftForward\": \"0.6\",\n            \"aftDraft\": \"1.2\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"75.2\",\n            \"totalCount\": \"141\",\n            \"longitude\": 115.89152018229167,\n            \"latitude\": 29.72453409830729,\n            \"distance\": \"165.02\"\n        }, {\n            \"rowno\": \"8\",\n            \"estimatedTime\": \"2024/09/10 03:14\",\n            \"shipId\": \"CN20132169789\",\n            \"shipNameCn\": \"华运988\",\n            \"shipNameEn\": \"HUA YUN 988\",\n            \"mmsi\": 413794075,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 23:07:45\",\n            \"actualCarryingCapacity\": \"5000\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉抬船路一号煤码头\",\n            \"shipGrosston\": \"2536\",\n            \"shipBreadth\": \"15.2\",\n            \"shipDepth\": \"6.2\",\n            \"draftForward\": \"5\",\n            \"aftDraft\": \"5\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"86\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.22042643229166,\n            \"latitude\": 30.47812703450521,\n            \"distance\": \"37.42\"\n        }, {\n            \"rowno\": \"9\",\n            \"estimatedTime\": \"2024/09/10 04:00\",\n            \"shipId\": \"CN20235569969\",\n            \"shipNameCn\": \"中海1698\",\n            \"shipNameEn\": \"ZHONG HAI 1698\",\n            \"mmsi\": 413880018,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 21:22:18\",\n            \"actualCarryingCapacity\": \"1300\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉华港码头\",\n            \"shipGrosston\": \"992\",\n            \"shipBreadth\": \"11.5\",\n            \"shipDepth\": \"4.3\",\n            \"draftForward\": \"2.8\",\n            \"aftDraft\": \"2.6\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"67.6\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.584423828125,\n            \"latitude\": 30.586956787109376,\n            \"distance\": \"8.04\"\n        }, {\n            \"rowno\": \"10\",\n            \"estimatedTime\": \"2024/09/10 04:00\",\n            \"shipId\": \"CN20198399245\",\n            \"shipNameCn\": \"富航之鑫\",\n            \"shipNameEn\": \"FU HANG ZHI XIN\",\n            \"mmsi\": 413231690,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 21:22:32\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"李家矶一期锚地\",\n            \"shipGrosston\": \"5265\",\n            \"shipBreadth\": \"19\",\n            \"shipDepth\": \"9\",\n            \"draftForward\": \"2.7\",\n            \"aftDraft\": \"2.8\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"110\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.71385091145834,\n            \"latitude\": 30.591473388671876,\n            \"distance\": \"16.90\"\n        }, {\n            \"rowno\": \"11\",\n            \"estimatedTime\": \"2024/09/10 04:00\",\n            \"shipId\": \"CN20142394450\",\n            \"shipNameCn\": \"江集运1271\",\n            \"shipNameEn\": \"JIANG JI YUN 1271\",\n            \"mmsi\": 413941051,\n            \"shipImo\": \"---\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 23:31:10\",\n            \"actualCarryingCapacity\": \"2800\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉港务国际集装箱有限公司3期\",\n            \"shipGrosston\": \"3585\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"5.3\",\n            \"draftForward\": \"2.8\",\n            \"aftDraft\": \"3\",\n            \"realContainerQay\": \"102\",\n            \"shipLength\": \"95\",\n            \"totalCount\": \"141\",\n            \"longitude\": 113.95821126302083,\n            \"latitude\": 30.298520914713542,\n            \"distance\": \"69.42\"\n        }, {\n            \"rowno\": \"12\",\n            \"estimatedTime\": \"2024/09/10 04:11\",\n            \"shipId\": \"CN20117954142\",\n            \"shipNameCn\": \"赣长江66号\",\n            \"shipNameEn\": \"GAN CHANG JIANG 66 HAO\",\n            \"mmsi\": 413801362,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 01:11:22\",\n            \"actualCarryingCapacity\": \"4400\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"4400\",\n            \"berthName\": \"长江武汉中航加油站\",\n            \"shipGrosston\": \"3585\",\n            \"shipBreadth\": \"17.2\",\n            \"shipDepth\": \"6\",\n            \"draftForward\": \"4.3\",\n            \"aftDraft\": \"4.2\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"99.85\",\n            \"totalCount\": \"141\",\n            \"longitude\": 113.09474283854166,\n            \"latitude\": 29.481374104817707,\n            \"distance\": \"191.52\"\n        }, {\n            \"rowno\": \"13\",\n            \"estimatedTime\": \"2024/09/10 04:30\",\n            \"shipId\": \"CN20141018945\",\n            \"shipNameCn\": \"皖鸿运6288\",\n            \"shipNameEn\": \"WAN HONG YUN 6288\",\n            \"mmsi\": 413830957,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 22:34:40\",\n            \"actualCarryingCapacity\": \"3400\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉娲石公司码头\",\n            \"shipGrosston\": \"2469\",\n            \"shipBreadth\": \"14.8\",\n            \"shipDepth\": \"6.3\",\n            \"draftForward\": \"4.2\",\n            \"aftDraft\": \"4.1\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"83\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.58465169270833,\n            \"latitude\": 30.582779947916666,\n            \"distance\": \"8.48\"\n        }, {\n            \"rowno\": \"14\",\n            \"estimatedTime\": \"2024/09/10 05:30\",\n            \"shipId\": \"CN20195102124\",\n            \"shipNameCn\": \"润兴集588\",\n            \"shipNameEn\": \"RUN XING JI 588\",\n            \"mmsi\": 413847068,\n            \"shipImo\": \"-\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 01:02:13\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉港集装箱有限公司2期\",\n            \"shipGrosston\": \"1984\",\n            \"shipBreadth\": \"13.4\",\n            \"shipDepth\": \"5.2\",\n            \"draftForward\": \"1.1\",\n            \"aftDraft\": \"1.2\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"76\",\n            \"totalCount\": \"141\",\n            \"longitude\": 113.65370279947916,\n            \"latitude\": 29.91444091796875,\n            \"distance\": \"119.23\"\n        }, {\n            \"rowno\": \"15\",\n            \"estimatedTime\": \"2024/09/10 06:00\",\n            \"shipId\": \"CN20119051580\",\n            \"shipNameCn\": \"星邦01\",\n            \"shipNameEn\": \"XING BANG 01\",\n            \"mmsi\": 413818982,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 21:10:22\",\n            \"actualCarryingCapacity\": \"9500\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉武钢有限公司1-6#码头\",\n            \"shipGrosston\": \"5189\",\n            \"shipBreadth\": \"19.2\",\n            \"shipDepth\": \"7.8\",\n            \"draftForward\": \"6\",\n            \"aftDraft\": \"6\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"112\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.5124267578125,\n            \"latitude\": 30.682729085286457,\n            \"distance\": \"5.02\"\n        }, {\n            \"rowno\": \"16\",\n            \"estimatedTime\": \"2024/09/10 06:00\",\n            \"shipId\": \"CN20194374388\",\n            \"shipNameCn\": \"宁瑞扬9\",\n            \"shipNameEn\": \"NING RUI YANG 9\",\n            \"mmsi\": 413849526,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 23:35:26\",\n            \"actualCarryingCapacity\": \"0\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"0\",\n            \"berthName\": \"中韩石化武汉乙烯液体码头\",\n            \"shipGrosston\": \"2789\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"5.5\",\n            \"draftForward\": \"0.2\",\n            \"aftDraft\": \"2.5\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"95.26\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.57457682291667,\n            \"latitude\": 30.583013916015624,\n            \"distance\": \"8.16\"\n        }, {\n            \"rowno\": \"17\",\n            \"estimatedTime\": \"2024/09/10 06:00\",\n            \"shipId\": \"CN20235696771\",\n            \"shipNameCn\": \"华夏辉煌\",\n            \"shipNameEn\": \"HUA XIA HUI HUANG\",\n            \"mmsi\": 413881907,\n            \"shipImo\": \"-\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 18:21:13\",\n            \"actualCarryingCapacity\": \"7000\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉港务国际集装箱有限公司3期\",\n            \"shipGrosston\": \"7143\",\n            \"shipBreadth\": \"19\",\n            \"shipDepth\": \"8\",\n            \"draftForward\": \"5.7\",\n            \"aftDraft\": \"5.7\",\n            \"realContainerQay\": \"349\",\n            \"shipLength\": \"119.8\",\n            \"totalCount\": \"141\",\n            \"longitude\": 115.21963704427084,\n            \"latitude\": 30.208160400390625,\n            \"distance\": \"80.90\"\n        }, {\n            \"rowno\": \"18\",\n            \"estimatedTime\": \"2024/09/10 06:11\",\n            \"shipId\": \"CN20084519673\",\n            \"shipNameCn\": \"鄂潜江货0688\",\n            \"shipNameEn\": \"E QIAN JIANG HUO 0688\",\n            \"mmsi\": 413849681,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 01:11:25\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉金口港区重件多用码头\",\n            \"shipGrosston\": \"505\",\n            \"shipBreadth\": \"10\",\n            \"shipDepth\": \"2.4\",\n            \"draftForward\": \"0.2\",\n            \"aftDraft\": \"1\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"52.8\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.1692626953125,\n            \"latitude\": 30.393599446614584,\n            \"distance\": \"46.83\"\n        }, {\n            \"rowno\": \"19\",\n            \"estimatedTime\": \"2024/09/10 07:00\",\n            \"shipId\": \"CN20118272117\",\n            \"shipNameCn\": \"远洋9201\",\n            \"shipNameEn\": \"YUAN YANG 9201\",\n            \"mmsi\": 413958724,\n            \"shipImo\": \"--\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 19:58:06\",\n            \"actualCarryingCapacity\": \"0\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"0\",\n            \"berthName\": \"王家屋危险品船舶锚地\",\n            \"shipGrosston\": \"3585\",\n            \"shipBreadth\": \"17.2\",\n            \"shipDepth\": \"6\",\n            \"draftForward\": \"0.2\",\n            \"aftDraft\": \"2.6\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"100\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.42766927083333,\n            \"latitude\": 30.662479654947916,\n            \"distance\": \"12.07\"\n        }, {\n            \"rowno\": \"20\",\n            \"estimatedTime\": \"2024/09/10 07:00\",\n            \"shipId\": \"CN20117064408\",\n            \"shipNameCn\": \"领航星\",\n            \"shipNameEn\": \"LING HANG XING\",\n            \"mmsi\": \"413812734\",\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 00:18:05\",\n            \"actualCarryingCapacity\": \"9920\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"王家屋干散货船舶锚地\",\n            \"shipGrosston\": \"5276\",\n            \"shipBreadth\": \"19\",\n            \"shipDepth\": \"8.15\",\n            \"draftForward\": \"6.2\",\n            \"aftDraft\": \"6\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"109.9\",\n            \"totalCount\": \"141\"\n        }, {\n            \"rowno\": \"21\",\n            \"estimatedTime\": \"2024/09/10 07:16\",\n            \"shipId\": \"CN20053626552\",\n            \"shipNameCn\": \"鄂潜江货0113\",\n            \"shipNameEn\": \"E QIAN JIANG HUO 0113\",\n            \"mmsi\": 413970684,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 14:17:04\",\n            \"actualCarryingCapacity\": \"500\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"大咀抛石区\",\n            \"shipGrosston\": \"510\",\n            \"shipBreadth\": \"10.5\",\n            \"shipDepth\": \"2.4\",\n            \"draftForward\": \"1.8\",\n            \"aftDraft\": \"1.8\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"55\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.01842447916667,\n            \"latitude\": 30.26368611653646,\n            \"distance\": \"67.18\"\n        }, {\n            \"rowno\": \"22\",\n            \"estimatedTime\": \"2024/09/10 07:43\",\n            \"shipId\": \"CN20196952808\",\n            \"shipNameCn\": \"友顺集008\",\n            \"shipNameEn\": \"YOU SHUN JI 008\",\n            \"mmsi\": 413841704,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 17:45:17\",\n            \"actualCarryingCapacity\": \"500\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉港集装箱有限公司2期\",\n            \"shipGrosston\": \"1485\",\n            \"shipBreadth\": \"13.6\",\n            \"shipDepth\": \"4.6\",\n            \"draftForward\": \"1.5\",\n            \"aftDraft\": \"1.5\",\n            \"realContainerQay\": \"20\",\n            \"shipLength\": \"67.6\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.89166666666667,\n            \"latitude\": 30.418375651041668,\n            \"distance\": \"41.70\"\n        }, {\n            \"rowno\": \"23\",\n            \"estimatedTime\": \"2024/09/10 07:46\",\n            \"shipId\": \"CN20216536328\",\n            \"shipNameCn\": \"久春1\",\n            \"shipNameEn\": \"JIU CHUN 1\",\n            \"mmsi\": 413869119,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 16:47:13\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"中交二航局双柳基地码头\",\n            \"shipGrosston\": \"2590\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"5\",\n            \"draftForward\": \"0.6\",\n            \"aftDraft\": \"1.6\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"88\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.69235026041666,\n            \"latitude\": 30.58805948893229,\n            \"distance\": \"15.23\"\n        }, {\n            \"rowno\": \"24\",\n            \"estimatedTime\": \"2024/09/10 08:00\",\n            \"shipId\": \"CN20109992266\",\n            \"shipNameCn\": \"长燃55\",\n            \"shipNameEn\": \"CHANG RAN 55\",\n            \"mmsi\": 413781538,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 19:26:01\",\n            \"actualCarryingCapacity\": \"0\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"0\",\n            \"berthName\": \"长江武汉中石化长燃新五里加油站\",\n            \"shipGrosston\": \"1516\",\n            \"shipBreadth\": \"14\",\n            \"shipDepth\": \"5.1\",\n            \"draftForward\": \"0.4\",\n            \"aftDraft\": \"3\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"79.8\",\n            \"totalCount\": \"141\",\n            \"longitude\": 115.805078125,\n            \"latitude\": 29.767041015625,\n            \"distance\": \"155.56\"\n        }, {\n            \"rowno\": \"25\",\n            \"estimatedTime\": \"2024/09/10 08:00\",\n            \"shipId\": \"CN20074070211\",\n            \"shipNameCn\": \"胜海96\",\n            \"shipNameEn\": \"SHENG HAI 96\",\n            \"mmsi\": 413592620,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 19:14:44\",\n            \"actualCarryingCapacity\": \"954\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉青山西马1-2#码头\",\n            \"shipGrosston\": \"498\",\n            \"shipBreadth\": \"8.8\",\n            \"shipDepth\": \"4.08\",\n            \"draftForward\": \"3.3\",\n            \"aftDraft\": \"3.6\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"52.8\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.41543782552084,\n            \"latitude\": 30.6593994140625,\n            \"distance\": \"13.22\"\n        }, {\n            \"rowno\": \"26\",\n            \"estimatedTime\": \"2024/09/10 08:00\",\n            \"shipId\": \"CN20187610901\",\n            \"shipNameCn\": \"民平919\",\n            \"shipNameEn\": \"MIN PING 919\",\n            \"mmsi\": 413837418,\n            \"shipImo\": \"---\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 15:27:51\",\n            \"actualCarryingCapacity\": \"2810\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉中远海运码头\",\n            \"shipGrosston\": \"4633\",\n            \"shipBreadth\": \"17.15\",\n            \"shipDepth\": \"5.6\",\n            \"draftForward\": \"2.5\",\n            \"aftDraft\": \"2.9\",\n            \"realContainerQay\": \"136\",\n            \"shipLength\": \"110\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.524267578125,\n            \"latitude\": 30.685557047526043,\n            \"distance\": \"4.44\"\n        }, {\n            \"rowno\": \"27\",\n            \"estimatedTime\": \"2024/09/10 08:00\",\n            \"shipId\": \"CN20149939223\",\n            \"shipNameCn\": \"渝通968\",\n            \"shipNameEn\": \"YU TONG 968\",\n            \"mmsi\": 413829943,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 01:46:30\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉青山安康码头\",\n            \"shipGrosston\": \"3104\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"5.6\",\n            \"draftForward\": \"0.8\",\n            \"aftDraft\": \"2.2\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"105\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.58372395833334,\n            \"latitude\": 30.58571573893229,\n            \"distance\": \"8.14\"\n        }, {\n            \"rowno\": \"28\",\n            \"estimatedTime\": \"2024/09/10 08:00\",\n            \"shipId\": \"CN20112489950\",\n            \"shipNameCn\": \"世纪传奇\",\n            \"shipNameEn\": \"SHI JI CHUAN QI\",\n            \"mmsi\": 413823708,\n            \"shipImo\": \"---\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 19:10:00\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"285\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉汉港20码头\",\n            \"shipGrosston\": \"12565\",\n            \"shipBreadth\": \"19\",\n            \"shipDepth\": \"4.2\",\n            \"draftForward\": \"2.85\",\n            \"aftDraft\": \"2.88\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"142.02\",\n            \"totalCount\": \"141\",\n            \"longitude\": 113.1418701171875,\n            \"latitude\": 29.43843994140625,\n            \"distance\": \"191.55\"\n        }, {\n            \"rowno\": \"29\",\n            \"estimatedTime\": \"2024/09/10 08:00\",\n            \"shipId\": \"CN20209819491\",\n            \"shipNameCn\": \"民东\",\n            \"shipNameEn\": \"MIN DONG\",\n            \"mmsi\": 413847424,\n            \"shipImo\": \"---\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 03:02:03\",\n            \"actualCarryingCapacity\": \"4680\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉中航加油站\",\n            \"shipGrosston\": \"4544\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"5.8\",\n            \"draftForward\": \"4.2\",\n            \"aftDraft\": \"4.1\",\n            \"realContainerQay\": \"325\",\n            \"shipLength\": \"109.7\",\n            \"totalCount\": \"141\",\n            \"longitude\": 113.71167805989583,\n            \"latitude\": 29.926820882161458,\n            \"distance\": \"114.27\"\n        }, {\n            \"rowno\": \"30\",\n            \"estimatedTime\": \"2024/09/10 08:30\",\n            \"shipId\": \"CN20197017649\",\n            \"shipNameCn\": \"湘水运26\",\n            \"shipNameEn\": \"XIANG SHUI YUN26\",\n            \"mmsi\": 413253910,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 00:04:44\",\n            \"actualCarryingCapacity\": \"5846\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"1200\",\n            \"berthName\": \"武汉国际集装箱有限公司1期\",\n            \"shipGrosston\": \"9191\",\n            \"shipBreadth\": \"21.6\",\n            \"shipDepth\": \"9.2\",\n            \"draftForward\": \"4.7\",\n            \"aftDraft\": \"4.8\",\n            \"realContainerQay\": \"528\",\n            \"shipLength\": \"118.9\",\n            \"totalCount\": \"141\",\n            \"longitude\": 113.63294270833333,\n            \"latitude\": 29.90878702799479,\n            \"distance\": \"121.12\"\n        }, {\n            \"rowno\": \"31\",\n            \"estimatedTime\": \"2024/09/10 08:59\",\n            \"shipId\": \"CN20039310709\",\n            \"shipNameCn\": \"顺达777\",\n            \"shipNameEn\": \"SHUN DA 777\",\n            \"mmsi\": 413806621,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 05:02:24\",\n            \"actualCarryingCapacity\": \"480\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"大咀抛石区\",\n            \"shipGrosston\": \"578\",\n            \"shipBreadth\": \"10.5\",\n            \"shipDepth\": \"2.4\",\n            \"draftForward\": \"1.6\",\n            \"aftDraft\": \"1.7\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"55.5\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.01826985677083,\n            \"latitude\": 30.263627115885416,\n            \"distance\": \"67.19\"\n        }, {\n            \"rowno\": \"32\",\n            \"estimatedTime\": \"2024/09/10 09:00\",\n            \"shipId\": \"CN20022766401\",\n            \"shipNameCn\": \"华盛166\",\n            \"shipNameEn\": \"HUASHENG166\",\n            \"mmsi\": 413785671,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 04:40:52\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"李家矶一期锚地\",\n            \"shipGrosston\": \"1819\",\n            \"shipBreadth\": \"13.2\",\n            \"shipDepth\": \"5.4\",\n            \"draftForward\": \"4.8\",\n            \"aftDraft\": \"4.8\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"78.8\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.5860107421875,\n            \"latitude\": 30.583087158203124,\n            \"distance\": \"8.49\"\n        }, {\n            \"rowno\": \"33\",\n            \"estimatedTime\": \"2024/09/10 09:00\",\n            \"shipId\": \"CN20069286956\",\n            \"shipNameCn\": \"胜海139\",\n            \"shipNameEn\": \"SHENG HAI 139\",\n            \"mmsi\": 413411080,\n            \"shipImo\": \"——\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 21:07:17\",\n            \"actualCarryingCapacity\": \"970\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉经开港码头\",\n            \"shipGrosston\": \"499\",\n            \"shipBreadth\": \"8.8\",\n            \"shipDepth\": \"4.1\",\n            \"draftForward\": \"3.2\",\n            \"aftDraft\": \"3.5\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"52.8\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.09014485677083,\n            \"latitude\": 30.325777180989583,\n            \"distance\": \"57.47\"\n        }, {\n            \"rowno\": \"34\",\n            \"estimatedTime\": \"2024/09/10 09:00\",\n            \"shipId\": \"CN20227612787\",\n            \"shipNameCn\": \"富发7\",\n            \"shipNameEn\": \"FU FA 7\",\n            \"mmsi\": 413872147,\n            \"shipImo\": \"---\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 23:59:05\",\n            \"actualCarryingCapacity\": \"8200\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"李家矶一期锚地\",\n            \"shipGrosston\": \"4739\",\n            \"shipBreadth\": \"16.26\",\n            \"shipDepth\": \"7\",\n            \"draftForward\": \"5.3\",\n            \"aftDraft\": \"5.3\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"129.98\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.0188232421875,\n            \"latitude\": 30.161539713541668,\n            \"distance\": \"74.97\"\n        }, {\n            \"rowno\": \"35\",\n            \"estimatedTime\": \"2024/09/10 09:00\",\n            \"shipId\": \"CN20107795306\",\n            \"shipNameCn\": \"鑫祥918\",\n            \"shipNameEn\": \"XIN XIANG 918\",\n            \"mmsi\": 413804063,\n            \"shipImo\": \"-\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 04:03:57\",\n            \"actualCarryingCapacity\": \"2560\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"舵落口港埠公司六码头\",\n            \"shipGrosston\": \"1952\",\n            \"shipBreadth\": \"13.6\",\n            \"shipDepth\": \"5.8\",\n            \"draftForward\": \"3.8\",\n            \"aftDraft\": \"3.8\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"80.3\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.15269368489584,\n            \"latitude\": 30.59722900390625,\n            \"distance\": \"38.92\"\n        }, {\n            \"rowno\": \"36\",\n            \"estimatedTime\": \"2024/09/10 09:00\",\n            \"shipId\": \"CN20106758187\",\n            \"shipNameCn\": \"华旺666\",\n            \"shipNameEn\": \"HUA WANG 666\",\n            \"mmsi\": 413970738,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 01:00:06\",\n            \"actualCarryingCapacity\": \"5200\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"王家屋干散货船舶锚地\",\n            \"shipGrosston\": \"3013\",\n            \"shipBreadth\": \"15.4\",\n            \"shipDepth\": \"7.1\",\n            \"draftForward\": \"5.2\",\n            \"aftDraft\": \"5\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"93\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.50973307291666,\n            \"latitude\": 30.682633463541666,\n            \"distance\": \"5.22\"\n        }, {\n            \"rowno\": \"37\",\n            \"estimatedTime\": \"2024/09/10 09:01\",\n            \"shipId\": \"CN20048174178\",\n            \"shipNameCn\": \"豫神舟333\",\n            \"shipNameEn\": \"YV SHEN ZHOU 333\",\n            \"mmsi\": 413978828,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 01:34:40\",\n            \"actualCarryingCapacity\": \"1565\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"王家屋干散货船舶锚地\",\n            \"shipGrosston\": \"987\",\n            \"shipBreadth\": \"11.4\",\n            \"shipDepth\": \"3.8\",\n            \"draftForward\": \"3\",\n            \"aftDraft\": \"2.9\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"66.92\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.4953369140625,\n            \"latitude\": 30.683107503255208,\n            \"distance\": \"6.40\"\n        }, {\n            \"rowno\": \"38\",\n            \"estimatedTime\": \"2024/09/10 09:20\",\n            \"shipId\": \"CN20145220379\",\n            \"shipNameCn\": \"赣洋668\",\n            \"shipNameEn\": \"GAN YANG 668\",\n            \"mmsi\": 413794246,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 05:06:44\",\n            \"actualCarryingCapacity\": \"3900\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉盛大码头\",\n            \"shipGrosston\": \"2592\",\n            \"shipBreadth\": \"15.4\",\n            \"shipDepth\": \"6.3\",\n            \"draftForward\": \"4.5\",\n            \"aftDraft\": \"4.3\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"88\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.58519694010417,\n            \"latitude\": 30.579469807942708,\n            \"distance\": \"8.84\"\n        }, {\n            \"rowno\": \"39\",\n            \"estimatedTime\": \"2024/09/10 09:30\",\n            \"shipId\": \"CN20106844939\",\n            \"shipNameCn\": \"扬子江物流681\",\n            \"shipNameEn\": \"YANG ZI JIANG WU LIU 681\",\n            \"mmsi\": \"413972032\",\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 23:44:31\",\n            \"actualCarryingCapacity\": \"4800\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉中航加油站\",\n            \"shipGrosston\": \"3053\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"5.3\",\n            \"draftForward\": \"4.3\",\n            \"aftDraft\": \"4.3\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"99.8\",\n            \"totalCount\": \"141\"\n        }, {\n            \"rowno\": \"40\",\n            \"estimatedTime\": \"2024/09/10 10:00\",\n            \"shipId\": \"CN20081573369\",\n            \"shipNameCn\": \"豫信货10199\",\n            \"shipNameEn\": \"YU XIN HUO 10199\",\n            \"mmsi\": 413802748,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 21:13:51\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"王家屋干散货船舶锚地\",\n            \"shipGrosston\": \"1368\",\n            \"shipBreadth\": \"11.6\",\n            \"shipDepth\": \"4.95\",\n            \"draftForward\": \"0.6\",\n            \"aftDraft\": \"1.7\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"74.8\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.50098470052083,\n            \"latitude\": 30.678279622395834,\n            \"distance\": \"5.67\"\n        }, {\n            \"rowno\": \"41\",\n            \"estimatedTime\": \"2024/09/10 10:00\",\n            \"shipId\": \"CN20139070557\",\n            \"shipNameCn\": \"鑫隆9999\",\n            \"shipNameEn\": \"XIN LONG 9999\",\n            \"mmsi\": 413835616,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 05:28:56\",\n            \"actualCarryingCapacity\": \"9990\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"鄂州电厂码头\",\n            \"shipGrosston\": \"5140\",\n            \"shipBreadth\": \"19\",\n            \"shipDepth\": \"8\",\n            \"draftForward\": \"6.5\",\n            \"aftDraft\": \"6.4\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"109.8\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.5849853515625,\n            \"latitude\": 30.579317220052083,\n            \"distance\": \"8.85\"\n        }, {\n            \"rowno\": \"42\",\n            \"estimatedTime\": \"2024/09/10 10:00\",\n            \"shipId\": \"CN20224931335\",\n            \"shipNameCn\": \"豫长泰7319\",\n            \"shipNameEn\": \"YU CHANG TAI 7319\",\n            \"mmsi\": 413873571,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 05:06:36\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"王家屋干散货船舶锚地\",\n            \"shipGrosston\": \"989\",\n            \"shipBreadth\": \"11.45\",\n            \"shipDepth\": \"4.25\",\n            \"draftForward\": \"0.5\",\n            \"aftDraft\": \"1.5\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"67.3\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.50786946614583,\n            \"latitude\": 30.678409830729166,\n            \"distance\": \"5.10\"\n        }, {\n            \"rowno\": \"43\",\n            \"estimatedTime\": \"2024/09/10 10:30\",\n            \"shipId\": \"CN20071670673\",\n            \"shipNameCn\": \"申燃油1\",\n            \"shipNameEn\": \"SHEN RAN YOU 1\",\n            \"mmsi\": \"413768685\",\n            \"shipImo\": \"- -\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 06:13:56\",\n            \"actualCarryingCapacity\": \"2964.69\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"2964.69\",\n            \"berthName\": \"武汉鑫龙粮油码头\",\n            \"shipGrosston\": \"1592\",\n            \"shipBreadth\": \"14.8\",\n            \"shipDepth\": \"5.4\",\n            \"draftForward\": \"4.1\",\n            \"aftDraft\": \"4.1\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"79.8\",\n            \"totalCount\": \"141\"\n        }, {\n            \"rowno\": \"44\",\n            \"estimatedTime\": \"2024/09/10 10:34\",\n            \"shipId\": \"CN20109923833\",\n            \"shipNameCn\": \"立荣6988\",\n            \"shipNameEn\": \"LIRONG 6988\",\n            \"mmsi\": \"413782678\",\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 06:07:40\",\n            \"actualCarryingCapacity\": \"3410\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武桥恒庆码头\",\n            \"shipGrosston\": \"1992\",\n            \"shipBreadth\": \"13.9\",\n            \"shipDepth\": \"5.65\",\n            \"draftForward\": \"4.2\",\n            \"aftDraft\": \"4\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"83.5\",\n            \"totalCount\": \"141\"\n        }, {\n            \"rowno\": \"45\",\n            \"estimatedTime\": \"2024/09/10 10:47\",\n            \"shipId\": \"CN20158203771\",\n            \"shipNameCn\": \"顺达集999\",\n            \"shipNameEn\": \"SHUN DA JI 999\",\n            \"mmsi\": 413835216,\n            \"shipImo\": \"--\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 04:49:36\",\n            \"actualCarryingCapacity\": \"1920\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉中航加油站\",\n            \"shipGrosston\": \"2599\",\n            \"shipBreadth\": \"15.68\",\n            \"shipDepth\": \"5.6\",\n            \"draftForward\": \"3\",\n            \"aftDraft\": \"2.8\",\n            \"realContainerQay\": \"82\",\n            \"shipLength\": \"78.7\",\n            \"totalCount\": \"141\",\n            \"longitude\": 113.4952392578125,\n            \"latitude\": 29.8017333984375,\n            \"distance\": \"138.94\"\n        }, {\n            \"rowno\": \"46\",\n            \"estimatedTime\": \"2024/09/10 10:52\",\n            \"shipId\": \"CN20059775962\",\n            \"shipNameCn\": \"金海洋油16号\",\n            \"shipNameEn\": \"JIN HAI YANG YOU 16 HAO\",\n            \"mmsi\": 413970749,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 06:45:07\",\n            \"actualCarryingCapacity\": \"1500\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"1500\",\n            \"berthName\": \"武汉恒阳石化码头2号泊位\",\n            \"shipGrosston\": \"978\",\n            \"shipBreadth\": \"12\",\n            \"shipDepth\": \"3.6\",\n            \"draftForward\": \"2.8\",\n            \"aftDraft\": \"2.8\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"68\",\n            \"totalCount\": \"141\",\n            \"longitude\": 115.88430989583334,\n            \"latitude\": 29.731170654296875,\n            \"distance\": \"164.02\"\n        }, {\n            \"rowno\": \"47\",\n            \"estimatedTime\": \"2024/09/10 10:59\",\n            \"shipId\": \"CN20098766724\",\n            \"shipNameCn\": \"江运2889\",\n            \"shipNameEn\": \"JIANG YUN 2889\",\n            \"mmsi\": 413819078,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 06:52:31\",\n            \"actualCarryingCapacity\": \"9600\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"王家屋干散货船舶锚地\",\n            \"shipGrosston\": \"4521\",\n            \"shipBreadth\": \"17.2\",\n            \"shipDepth\": \"7.6\",\n            \"draftForward\": \"6.6\",\n            \"aftDraft\": \"6.5\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"108.6\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.48761393229167,\n            \"latitude\": 30.682173665364584,\n            \"distance\": \"7.01\"\n        }, {\n            \"rowno\": \"48\",\n            \"estimatedTime\": \"2024/09/10 11:00\",\n            \"shipId\": \"CN20141345655\",\n            \"shipNameCn\": \"豫信货13699\",\n            \"shipNameEn\": \"YU XIN HUO 13699\",\n            \"mmsi\": 413830199,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 05:20:12\",\n            \"actualCarryingCapacity\": \"12000\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉武钢有限公司1-6#码头\",\n            \"shipGrosston\": \"6711\",\n            \"shipBreadth\": \"21\",\n            \"shipDepth\": \"8.6\",\n            \"draftForward\": \"6.4\",\n            \"aftDraft\": \"6.4\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"119.8\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.4876953125,\n            \"latitude\": 30.68253377278646,\n            \"distance\": \"7.02\"\n        }, {\n            \"rowno\": \"49\",\n            \"estimatedTime\": \"2024/09/10 11:00\",\n            \"shipId\": \"CN20153981682\",\n            \"shipNameCn\": \"江宜6669\",\n            \"shipNameEn\": \"JIANG YI 6669\",\n            \"mmsi\": \"413998496\",\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 05:49:37\",\n            \"actualCarryingCapacity\": \"1650\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"舵落口港埠公司六码头\",\n            \"shipGrosston\": \"964\",\n            \"shipBreadth\": \"11.5\",\n            \"shipDepth\": \"4.2\",\n            \"draftForward\": \"3\",\n            \"aftDraft\": \"2.9\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"67.65\",\n            \"totalCount\": \"141\"\n        }, {\n            \"rowno\": \"50\",\n            \"estimatedTime\": \"2024/09/10 11:01\",\n            \"shipId\": \"CN20126323342\",\n            \"shipNameCn\": \"清江观光2号\",\n            \"shipNameEn\": \"QING JIANG GUAN GUANG 2 HAO\",\n            \"mmsi\": \"999999999\",\n            \"shipImo\": \"--\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 05:15:01\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"160\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"恩施清江水布垭旅游码头1#\",\n            \"shipGrosston\": \"209\",\n            \"shipBreadth\": \"6.8\",\n            \"shipDepth\": \"1.6\",\n            \"draftForward\": \"0.8\",\n            \"aftDraft\": \"1.2\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"39.8\",\n            \"totalCount\": \"141\"\n        }, {\n            \"rowno\": \"51\",\n            \"estimatedTime\": \"2024/09/10 11:29\",\n            \"shipId\": \"CN20091031036\",\n            \"shipNameCn\": \"张港928\",\n            \"shipNameEn\": \"ZHANG GANG928\",\n            \"mmsi\": 413803873,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 06:30:45\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"中交二航局双柳基地码头\",\n            \"shipGrosston\": \"1593\",\n            \"shipBreadth\": \"13.6\",\n            \"shipDepth\": \"4.7\",\n            \"draftForward\": \"0.6\",\n            \"aftDraft\": \"1.6\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"79.6\",\n            \"totalCount\": \"141\",\n            \"longitude\": 113.89129231770833,\n            \"latitude\": 30.247196451822916,\n            \"distance\": \"77.96\"\n        }, {\n            \"rowno\": \"52\",\n            \"estimatedTime\": \"2024/09/10 11:30\",\n            \"shipId\": \"CN20125116440\",\n            \"shipNameCn\": \"豫泓洋货12813\",\n            \"shipNameEn\": \"YU HONG YANG HUO 12813\",\n            \"mmsi\": 413822746,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 05:09:32\",\n            \"actualCarryingCapacity\": \"1100\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉经开港码头\",\n            \"shipGrosston\": \"976\",\n            \"shipBreadth\": \"11.5\",\n            \"shipDepth\": \"4.2\",\n            \"draftForward\": \"2.5\",\n            \"aftDraft\": \"2.3\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"66\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.0903564453125,\n            \"latitude\": 30.326295979817708,\n            \"distance\": \"57.42\"\n        }, {\n            \"rowno\": \"53\",\n            \"estimatedTime\": \"2024/09/10 12:00\",\n            \"shipId\": \"CN20143169828\",\n            \"shipNameCn\": \"鄂仙桃货5678\",\n            \"shipNameEn\": \"E XIAN TAO HUO 5678\",\n            \"mmsi\": 413829519,\n            \"shipImo\": \"-\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 07:18:42\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉金控粮食码头\",\n            \"shipGrosston\": \"993\",\n            \"shipBreadth\": \"13\",\n            \"shipDepth\": \"3.06\",\n            \"draftForward\": \"0.5\",\n            \"aftDraft\": \"1.2\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"66.8\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.57897135416667,\n            \"latitude\": 30.60164591471354,\n            \"distance\": \"6.33\"\n        }, {\n            \"rowno\": \"54\",\n            \"estimatedTime\": \"2024/09/10 12:00\",\n            \"shipId\": \"CN20109415625\",\n            \"shipNameCn\": \"航旭805\",\n            \"shipNameEn\": \"HANG XU 805\",\n            \"mmsi\": 413810583,\n            \"shipImo\": \"--\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 07:22:40\",\n            \"actualCarryingCapacity\": \"4000\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉花山重件码头\",\n            \"shipGrosston\": \"4450\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"5.6\",\n            \"draftForward\": \"3.05\",\n            \"aftDraft\": \"3.5\",\n            \"realContainerQay\": \"266\",\n            \"shipLength\": \"109.47\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.0774658203125,\n            \"latitude\": 30.129954020182293,\n            \"distance\": \"73.95\"\n        }, {\n            \"rowno\": \"55\",\n            \"estimatedTime\": \"2024/09/10 12:00\",\n            \"shipId\": \"CN20136857962\",\n            \"shipNameCn\": \"瑞航1689\",\n            \"shipNameEn\": \"RUI HANG 1689\",\n            \"mmsi\": 413793963,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 07:31:07\",\n            \"actualCarryingCapacity\": \"3800\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉盛大码头\",\n            \"shipGrosston\": \"2350\",\n            \"shipBreadth\": \"14.8\",\n            \"shipDepth\": \"6\",\n            \"draftForward\": \"4.5\",\n            \"aftDraft\": \"4.3\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"83\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.58483072916667,\n            \"latitude\": 30.579353841145835,\n            \"distance\": \"8.84\"\n        }, {\n            \"rowno\": \"56\",\n            \"estimatedTime\": \"2024/09/10 12:00\",\n            \"shipId\": \"CN20111742936\",\n            \"shipNameCn\": \"远洋9003\",\n            \"shipNameEn\": \"YUAN YANG 9003\",\n            \"mmsi\": 413820987,\n            \"shipImo\": \"--\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 07:50:02\",\n            \"actualCarryingCapacity\": \"3394.89\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"3394.89\",\n            \"berthName\": \"王家屋危险品船舶锚地\",\n            \"shipGrosston\": \"3607\",\n            \"shipBreadth\": \"17.2\",\n            \"shipDepth\": \"6\",\n            \"draftForward\": \"3.6\",\n            \"aftDraft\": \"3.6\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"99.8\",\n            \"totalCount\": \"141\",\n            \"longitude\": 115.601611328125,\n            \"latitude\": 29.837432861328125,\n            \"distance\": \"135.58\"\n        }, {\n            \"rowno\": \"57\",\n            \"estimatedTime\": \"2024/09/10 12:10\",\n            \"shipId\": \"CN20112770903\",\n            \"shipNameCn\": \"江宜9318\",\n            \"shipNameEn\": \"JIANG YI 9318\",\n            \"mmsi\": 413803056,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 07:55:25\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"水洪口普货锚地\",\n            \"shipGrosston\": \"968\",\n            \"shipBreadth\": \"11.5\",\n            \"shipDepth\": \"4\",\n            \"draftForward\": \"0.7\",\n            \"aftDraft\": \"0.8\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"68\",\n            \"totalCount\": \"141\",\n            \"longitude\": 113.89462890625,\n            \"latitude\": 30.268880208333332,\n            \"distance\": \"76.33\"\n        }, {\n            \"rowno\": \"58\",\n            \"estimatedTime\": \"2024/09/10 12:10\",\n            \"shipId\": \"CN20123724052\",\n            \"shipNameCn\": \"凯瑞88\",\n            \"shipNameEn\": \"KAI RUI 88\",\n            \"mmsi\": 413819293,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 08:09:01\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉中航加油站\",\n            \"shipGrosston\": \"2608\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"5.6\",\n            \"draftForward\": \"0.8\",\n            \"aftDraft\": \"2.2\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"90\",\n            \"totalCount\": \"141\",\n            \"longitude\": 116.89078776041667,\n            \"latitude\": 30.196830240885415,\n            \"distance\": \"230.22\"\n        }, {\n            \"rowno\": \"59\",\n            \"estimatedTime\": \"2024/09/10 12:20\",\n            \"shipId\": \"CN20157189559\",\n            \"shipNameCn\": \"远海696\",\n            \"shipNameEn\": \"YUAN HAI 696\",\n            \"mmsi\": 413830287,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 07:57:26\",\n            \"actualCarryingCapacity\": \"12000\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉武钢物流有限公司7-9号码头\",\n            \"shipGrosston\": \"7591\",\n            \"shipBreadth\": \"21.8\",\n            \"shipDepth\": \"8.8\",\n            \"draftForward\": \"6\",\n            \"aftDraft\": \"5.8\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"128.16\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.45589192708333,\n            \"latitude\": 30.673160807291666,\n            \"distance\": \"9.56\"\n        }, {\n            \"rowno\": \"60\",\n            \"estimatedTime\": \"2024/09/10 12:30\",\n            \"shipId\": \"CN20092210912\",\n            \"shipNameCn\": \"豫信货10906\",\n            \"shipNameEn\": \"YU XIN HUO 10906\",\n            \"mmsi\": 413802266,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 04:53:01\",\n            \"actualCarryingCapacity\": \"6000\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉亚东水泥码头\",\n            \"shipGrosston\": \"3060\",\n            \"shipBreadth\": \"16.25\",\n            \"shipDepth\": \"6.2\",\n            \"draftForward\": \"5.5\",\n            \"aftDraft\": \"5.5\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"93.5\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.58406575520833,\n            \"latitude\": 30.58108927408854,\n            \"distance\": \"8.63\"\n        }, {\n            \"rowno\": \"61\",\n            \"estimatedTime\": \"2024/09/10 12:40\",\n            \"shipId\": \"CN20124426804\",\n            \"shipNameCn\": \"通达起顺\",\n            \"shipNameEn\": \"TONG DA QI SHUN\",\n            \"mmsi\": 413817319,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 08:18:30\",\n            \"actualCarryingCapacity\": \"72\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉港务国际集装箱有限公司3期\",\n            \"shipGrosston\": \"3226\",\n            \"shipBreadth\": \"14\",\n            \"shipDepth\": \"5.6\",\n            \"draftForward\": \"1.8\",\n            \"aftDraft\": \"1.8\",\n            \"realContainerQay\": \"36\",\n            \"shipLength\": \"88.8\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.7258544921875,\n            \"latitude\": 30.600679524739583,\n            \"distance\": \"17.58\"\n        }, {\n            \"rowno\": \"62\",\n            \"estimatedTime\": \"2024/09/10 13:00\",\n            \"shipId\": \"CN20099743126\",\n            \"shipNameCn\": \"源发598\",\n            \"shipNameEn\": \"YUAN FA 598\",\n            \"mmsi\": 413800379,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 08:45:15\",\n            \"actualCarryingCapacity\": \"4600\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉长航集团军山船厂\",\n            \"shipGrosston\": \"2772\",\n            \"shipBreadth\": \"15.5\",\n            \"shipDepth\": \"6.5\",\n            \"draftForward\": \"5.1\",\n            \"aftDraft\": \"5\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"89.7\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.1164794921875,\n            \"latitude\": 30.351580810546874,\n            \"distance\": \"53.70\"\n        }, {\n            \"rowno\": \"63\",\n            \"estimatedTime\": \"2024/09/10 13:00\",\n            \"shipId\": \"CN20167822986\",\n            \"shipNameCn\": \"祥顺6588\",\n            \"shipNameEn\": \"XIANG SHUN 6588\",\n            \"mmsi\": \"413834627\",\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 08:47:30\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"港通装卸码头\",\n            \"shipGrosston\": \"1982\",\n            \"shipBreadth\": \"15.2\",\n            \"shipDepth\": \"3.98\",\n            \"draftForward\": \"1.2\",\n            \"aftDraft\": \"1.2\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"86.8\",\n            \"totalCount\": \"141\"\n        }, {\n            \"rowno\": \"64\",\n            \"estimatedTime\": \"2024/09/10 13:00\",\n            \"shipId\": \"CN20092643799\",\n            \"shipNameCn\": \"长亚七号\",\n            \"shipNameEn\": \"CHANG YA QI HAO\",\n            \"mmsi\": 413804151,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 23:12:45\",\n            \"actualCarryingCapacity\": \"5035\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉亚东水泥码头\",\n            \"shipGrosston\": \"3274\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"6.2\",\n            \"draftForward\": \"4.8\",\n            \"aftDraft\": \"4.8\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"99.8\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.53849283854167,\n            \"latitude\": 30.676267496744792,\n            \"distance\": \"2.82\"\n        }, {\n            \"rowno\": \"65\",\n            \"estimatedTime\": \"2024/09/10 13:00\",\n            \"shipId\": \"CN20025377577\",\n            \"shipNameCn\": \"昌远集1号\",\n            \"shipNameEn\": \"CHANG YUAN JI 1 HAO\",\n            \"mmsi\": 413769551,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 06:00:48\",\n            \"actualCarryingCapacity\": \"60\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉港集装箱有限公司2期\",\n            \"shipGrosston\": \"2231\",\n            \"shipBreadth\": \"13.2\",\n            \"shipDepth\": \"4.15\",\n            \"draftForward\": \"2\",\n            \"aftDraft\": \"2\",\n            \"realContainerQay\": \"40\",\n            \"shipLength\": \"74.52\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.77366536458334,\n            \"latitude\": 30.619026692708335,\n            \"distance\": \"21.49\"\n        }, {\n            \"rowno\": \"66\",\n            \"estimatedTime\": \"2024/09/10 13:00\",\n            \"shipId\": \"CN20117296819\",\n            \"shipNameCn\": \"鑫裕11609\",\n            \"shipNameEn\": \"XIN YU 11609\",\n            \"mmsi\": 413811757,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 06:09:22\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉武钢物流有限公司7-9号码头\",\n            \"shipGrosston\": \"472\",\n            \"shipBreadth\": \"9.2\",\n            \"shipDepth\": \"3.3\",\n            \"draftForward\": \"0.6\",\n            \"aftDraft\": \"1.6\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"49.8\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.4891845703125,\n            \"latitude\": 30.678080240885418,\n            \"distance\": \"6.68\"\n        }, {\n            \"rowno\": \"67\",\n            \"estimatedTime\": \"2024/09/10 13:11\",\n            \"shipId\": \"CN20191349098\",\n            \"shipNameCn\": \"友顺698\",\n            \"shipNameEn\": \"YOU SHUN 698\",\n            \"mmsi\": 413842793,\n            \"shipImo\": \"-\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 06:11:26\",\n            \"actualCarryingCapacity\": \"52\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉港集装箱有限公司2期\",\n            \"shipGrosston\": \"1562\",\n            \"shipBreadth\": \"13.4\",\n            \"shipDepth\": \"4.8\",\n            \"draftForward\": \"0.5\",\n            \"aftDraft\": \"1.8\",\n            \"realContainerQay\": \"26\",\n            \"shipLength\": \"67.9\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.7325439453125,\n            \"latitude\": 30.60479736328125,\n            \"distance\": \"18.05\"\n        }, {\n            \"rowno\": \"68\",\n            \"estimatedTime\": \"2024/09/10 13:28\",\n            \"shipId\": \"CN20078557435\",\n            \"shipNameCn\": \"宇洋069\",\n            \"shipNameEn\": \"YUYANG 069\",\n            \"mmsi\": \"413806404\",\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 09:13:23\",\n            \"actualCarryingCapacity\": \"680\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"其他泊位(武汉港--武汉市蔡甸区海事处)\",\n            \"shipGrosston\": \"695\",\n            \"shipBreadth\": \"11.2\",\n            \"shipDepth\": \"2.55\",\n            \"draftForward\": \"1.8\",\n            \"aftDraft\": \"1.8\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"58\",\n            \"totalCount\": \"141\"\n        }, {\n            \"rowno\": \"69\",\n            \"estimatedTime\": \"2024/09/10 13:30\",\n            \"shipId\": \"CN20046393961\",\n            \"shipNameCn\": \"洪轮1198\",\n            \"shipNameEn\": \"HONG LUN 1198\",\n            \"mmsi\": \"413825498\",\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 09:02:05\",\n            \"actualCarryingCapacity\": \"650\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"蔡甸区临时砂石集散中心\",\n            \"shipGrosston\": \"661\",\n            \"shipBreadth\": \"10.8\",\n            \"shipDepth\": \"2.5\",\n            \"draftForward\": \"1.8\",\n            \"aftDraft\": \"1.8\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"58.5\",\n            \"totalCount\": \"141\"\n        }, {\n            \"rowno\": \"70\",\n            \"estimatedTime\": \"2024/09/10 13:30\",\n            \"shipId\": \"CN20109542046\",\n            \"shipNameCn\": \"民华\",\n            \"shipNameEn\": \"MIN HUA\",\n            \"mmsi\": 413762839,\n            \"shipImo\": \"---\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 09:05:58\",\n            \"actualCarryingCapacity\": \"425\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"283\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉沌口滚装码头\",\n            \"shipGrosston\": \"13550\",\n            \"shipBreadth\": \"21.7\",\n            \"shipDepth\": \"5.2\",\n            \"draftForward\": \"2\",\n            \"aftDraft\": \"2.7\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"119.53\",\n            \"totalCount\": \"141\",\n            \"longitude\": 111.41205240885417,\n            \"latitude\": 30.51661376953125,\n            \"distance\": \"301.66\"\n        }, {\n            \"rowno\": \"71\",\n            \"estimatedTime\": \"2024/09/10 13:34\",\n            \"shipId\": \"CN20106532375\",\n            \"shipNameCn\": \"兴达867\",\n            \"shipNameEn\": \"XING DA 867\",\n            \"mmsi\": 413781795,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 09:01:11\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉青山外贸码头1-4#泊位\",\n            \"shipGrosston\": \"1285\",\n            \"shipBreadth\": \"12\",\n            \"shipDepth\": \"4.9\",\n            \"draftForward\": \"0.6\",\n            \"aftDraft\": \"1.2\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"69.8\",\n            \"totalCount\": \"141\",\n            \"longitude\": 115.511669921875,\n            \"latitude\": 29.83909912109375,\n            \"distance\": \"129.13\"\n        }, {\n            \"rowno\": \"72\",\n            \"estimatedTime\": \"2024/09/10 13:59\",\n            \"shipId\": \"CN20138730611\",\n            \"shipNameCn\": \"沙丰\",\n            \"shipNameEn\": \"SHA FENG\",\n            \"mmsi\": 413825791,\n            \"shipImo\": \"——\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 13:49:49\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"7\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"彭丰渡口\",\n            \"shipGrosston\": \"90\",\n            \"shipBreadth\": \"6\",\n            \"shipDepth\": \"1.2\",\n            \"draftForward\": \"0.4\",\n            \"aftDraft\": \"0.6\",\n            \"realContainerQay\": \"0\",\n            \"shipLength\": \"27.5\",\n            \"totalCount\": \"141\",\n            \"longitude\": 113.9005859375,\n            \"latitude\": 29.994089762369793,\n            \"distance\": \"96.41\"\n        }, {\n            \"rowno\": \"73\",\n            \"estimatedTime\": \"2024/09/10 14:00\",\n            \"shipId\": \"CN20165633283\",\n            \"shipNameCn\": \"集海之俊\",\n            \"shipNameEn\": \"JI HAI ZHI JUN\",\n            \"mmsi\": 413381190,\n            \"shipImo\": \"- -\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 09:50:45\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"李家矶一期锚地\",\n            \"shipGrosston\": \"8214\",\n            \"shipBreadth\": \"21.4\",\n            \"shipDepth\": \"10.2\",\n            \"draftForward\": \"1.5\",\n            \"aftDraft\": \"3.5\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"129.8\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.57910970052083,\n            \"latitude\": 30.59136962890625,\n            \"distance\": \"7.40\"\n        }, {\n            \"rowno\": \"74\",\n            \"estimatedTime\": \"2024/09/10 14:03\",\n            \"shipId\": \"CN20098924964\",\n            \"shipNameCn\": \"湘长沙机1035\",\n            \"shipNameEn\": \"XIANG CHANG SHA JI 1035\",\n            \"mmsi\": 413833799,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 09:16:47\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"中交二航局双柳基地码头\",\n            \"shipGrosston\": \"2705\",\n            \"shipBreadth\": \"16\",\n            \"shipDepth\": \"5.2\",\n            \"draftForward\": \"0.6\",\n            \"aftDraft\": \"1.2\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"98\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.1375732421875,\n            \"latitude\": 30.3719970703125,\n            \"distance\": \"50.70\"\n        }, {\n            \"rowno\": \"75\",\n            \"estimatedTime\": \"2024/09/10 14:17\",\n            \"shipId\": \"CN20153395202\",\n            \"shipNameCn\": \"新海集之星\",\n            \"shipNameEn\": \"XIN HAI JI ZHI XING\",\n            \"mmsi\": 414350490,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 08:20:05\",\n            \"actualCarryingCapacity\": \"1800\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉中远海运码头\",\n            \"shipGrosston\": \"6196\",\n            \"shipBreadth\": \"21.92\",\n            \"shipDepth\": \"8\",\n            \"draftForward\": \"2.8\",\n            \"aftDraft\": \"3\",\n            \"realContainerQay\": \"304\",\n            \"shipLength\": \"126.08\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.522705078125,\n            \"latitude\": 30.686027018229165,\n            \"distance\": \"4.58\"\n        }, {\n            \"rowno\": \"76\",\n            \"estimatedTime\": \"2024/09/10 14:28\",\n            \"shipId\": \"CN20204505048\",\n            \"shipNameCn\": \"鄂宏顺0777\",\n            \"shipNameEn\": \"E HONG SHUN 0777\",\n            \"mmsi\": 413867517,\n            \"shipImo\": \"-\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 11:22:05\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉金控粮食码头\",\n            \"shipGrosston\": \"2304\",\n            \"shipBreadth\": \"15\",\n            \"shipDepth\": \"5.5\",\n            \"draftForward\": \"0.5\",\n            \"aftDraft\": \"1.5\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"88\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.56975911458333,\n            \"latitude\": 30.618855794270832,\n            \"distance\": \"4.23\"\n        }, {\n            \"rowno\": \"77\",\n            \"estimatedTime\": \"2024/09/10 15:00\",\n            \"shipId\": \"CN20221615404\",\n            \"shipNameCn\": \"盟运78\",\n            \"shipNameEn\": \"MENG YUN 78\",\n            \"mmsi\": 413871325,\n            \"shipImo\": \"——\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 10:35:36\",\n            \"actualCarryingCapacity\": \"8500\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"李家矶一期锚地\",\n            \"shipGrosston\": \"4721\",\n            \"shipBreadth\": \"16.26\",\n            \"shipDepth\": \"6.98\",\n            \"draftForward\": \"5.3\",\n            \"aftDraft\": \"5.3\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"129.97\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.56695963541667,\n            \"latitude\": 30.60404052734375,\n            \"distance\": \"5.72\"\n        }, {\n            \"rowno\": \"78\",\n            \"estimatedTime\": \"2024/09/10 15:03\",\n            \"shipId\": \"CN20197392240\",\n            \"shipNameCn\": \"长燃70\",\n            \"shipNameEn\": \"CHANG RAN 70\",\n            \"mmsi\": 413848235,\n            \"shipImo\": \"----\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 08:04:11\",\n            \"actualCarryingCapacity\": \"50\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"50\",\n            \"berthName\": \"长江武汉中石化长燃新五里加油站\",\n            \"shipGrosston\": \"378\",\n            \"shipBreadth\": \"8\",\n            \"shipDepth\": \"3.15\",\n            \"draftForward\": \"0.6\",\n            \"aftDraft\": \"2\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"48.4\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.24745279947916,\n            \"latitude\": 30.51043701171875,\n            \"distance\": \"33.38\"\n        }, {\n            \"rowno\": \"79\",\n            \"estimatedTime\": \"2024/09/10 15:25\",\n            \"shipId\": \"CN20053991905\",\n            \"shipNameCn\": \"金甲3158\",\n            \"shipNameEn\": \"JIN JIA 3158\",\n            \"mmsi\": 413834051,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 11:20:52\",\n            \"actualCarryingCapacity\": \"2900\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"2900\",\n            \"berthName\": \"王家屋危险品船舶锚地\",\n            \"shipGrosston\": \"2028\",\n            \"shipBreadth\": \"14.8\",\n            \"shipDepth\": \"4.8\",\n            \"draftForward\": \"4\",\n            \"aftDraft\": \"4\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"83.73\",\n            \"totalCount\": \"141\",\n            \"longitude\": 113.80528157552084,\n            \"latitude\": 29.93327433268229,\n            \"distance\": \"107.54\"\n        }, {\n            \"rowno\": \"80\",\n            \"estimatedTime\": \"2024/09/10 15:55\",\n            \"shipId\": \"CN20122564346\",\n            \"shipNameCn\": \"东兴608\",\n            \"shipNameEn\": \"DONG XING 608\",\n            \"mmsi\": 413792233,\n            \"shipImo\": \"-\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 10:57:46\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉金口港区重件多用码头\",\n            \"shipGrosston\": \"502\",\n            \"shipBreadth\": \"9.8\",\n            \"shipDepth\": \"2.4\",\n            \"draftForward\": \"0.4\",\n            \"aftDraft\": \"0.9\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"54\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.16910807291667,\n            \"latitude\": 30.393625895182293,\n            \"distance\": \"46.84\"\n        }, {\n            \"rowno\": \"81\",\n            \"estimatedTime\": \"2024/09/10 16:00\",\n            \"shipId\": \"CN20108156353\",\n            \"shipNameCn\": \"大洋28\",\n            \"shipNameEn\": \"DA YANG 28\",\n            \"mmsi\": 413850798,\n            \"shipImo\": \"---\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 11:50:01\",\n            \"actualCarryingCapacity\": \"2950\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"2950\",\n            \"berthName\": \"长江武汉中航加油站\",\n            \"shipGrosston\": \"2070\",\n            \"shipBreadth\": \"14.8\",\n            \"shipDepth\": \"4.8\",\n            \"draftForward\": \"3.9\",\n            \"aftDraft\": \"3.8\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"87\",\n            \"totalCount\": \"141\",\n            \"longitude\": 115.73043619791666,\n            \"latitude\": 29.82188720703125,\n            \"distance\": \"146.13\"\n        }, {\n            \"rowno\": \"82\",\n            \"estimatedTime\": \"2024/09/10 16:00\",\n            \"shipId\": \"CN20168204605\",\n            \"shipNameCn\": \"华嘉8号\",\n            \"shipNameEn\": \"HUA JIA 8 HAO\",\n            \"mmsi\": 413835376,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 11:57:31\",\n            \"actualCarryingCapacity\": \"277\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"231\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉沌口滚装码头\",\n            \"shipGrosston\": \"8912\",\n            \"shipBreadth\": \"17.16\",\n            \"shipDepth\": \"5\",\n            \"draftForward\": \"2.6\",\n            \"aftDraft\": \"2.6\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"110\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.20858561197916,\n            \"latitude\": 30.465252685546876,\n            \"distance\": \"39.14\"\n        }, {\n            \"rowno\": \"83\",\n            \"estimatedTime\": \"2024/09/10 16:00\",\n            \"shipId\": \"CN20185182647\",\n            \"shipNameCn\": \"汉海7号\",\n            \"shipNameEn\": \"HAN HAI 7 HAO\",\n            \"mmsi\": 413216830,\n            \"shipImo\": \"——\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 08:46:16\",\n            \"actualCarryingCapacity\": \"3300\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉国际集装箱有限公司1期\",\n            \"shipGrosston\": \"11080\",\n            \"shipBreadth\": \"25\",\n            \"shipDepth\": \"11\",\n            \"draftForward\": \"3.8\",\n            \"aftDraft\": \"4.2\",\n            \"realContainerQay\": \"238\",\n            \"shipLength\": \"134.5\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.57232259114583,\n            \"latitude\": 30.59697265625,\n            \"distance\": \"6.61\"\n        }, {\n            \"rowno\": \"84\",\n            \"estimatedTime\": \"2024/09/10 16:00\",\n            \"shipId\": \"CN20099083467\",\n            \"shipNameCn\": \"祥牛8\",\n            \"shipNameEn\": \"XIANG NIU 8\",\n            \"mmsi\": 413770406,\n            \"shipImo\": \"--\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 08:45:28\",\n            \"actualCarryingCapacity\": \"5900\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武桥恒庆码头\",\n            \"shipGrosston\": \"3425\",\n            \"shipBreadth\": \"17.2\",\n            \"shipDepth\": \"5.5\",\n            \"draftForward\": \"4.5\",\n            \"aftDraft\": \"4.5\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"108.8\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.10974934895833,\n            \"latitude\": 30.347587076822915,\n            \"distance\": \"54.48\"\n        }, {\n            \"rowno\": \"85\",\n            \"estimatedTime\": \"2024/09/10 16:10\",\n            \"shipId\": \"CN20230740884\",\n            \"shipNameCn\": \"澍荣8\",\n            \"shipNameEn\": \"SHU RONG 8\",\n            \"mmsi\": 413881267,\n            \"shipImo\": \"-\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 12:02:08\",\n            \"actualCarryingCapacity\": \"178\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉经开港码头\",\n            \"shipGrosston\": \"2952\",\n            \"shipBreadth\": \"16\",\n            \"shipDepth\": \"5.6\",\n            \"draftForward\": \"0.7\",\n            \"aftDraft\": \"0.8\",\n            \"realContainerQay\": \"41\",\n            \"shipLength\": \"79.32\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.42142740885417,\n            \"latitude\": 30.666849772135418,\n            \"distance\": \"12.71\"\n        }, {\n            \"rowno\": \"86\",\n            \"estimatedTime\": \"2024/09/10 16:15\",\n            \"shipId\": \"CN20091063490\",\n            \"shipNameCn\": \"兴豫6998\",\n            \"shipNameEn\": \"XING YU 6998\",\n            \"mmsi\": 413832872,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 06:06:05\",\n            \"actualCarryingCapacity\": \"400\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉武昌造船厂码头\",\n            \"shipGrosston\": \"575\",\n            \"shipBreadth\": \"10.5\",\n            \"shipDepth\": \"2.35\",\n            \"draftForward\": \"1.5\",\n            \"aftDraft\": \"1.8\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"56\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.28360188802084,\n            \"latitude\": 30.5341064453125,\n            \"distance\": \"29.09\"\n        }, {\n            \"rowno\": \"87\",\n            \"estimatedTime\": \"2024/09/10 16:20\",\n            \"shipId\": \"CN20108130670\",\n            \"shipNameCn\": \"永鑫111\",\n            \"shipNameEn\": \"YONG XIN 111\",\n            \"mmsi\": 413778942,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 11:40:40\",\n            \"actualCarryingCapacity\": \"4300\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"大咀抛石区\",\n            \"shipGrosston\": \"2629\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"4.9\",\n            \"draftForward\": \"4.2\",\n            \"aftDraft\": \"4.28\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"92\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.01366373697917,\n            \"latitude\": 30.269527180989584,\n            \"distance\": \"67.11\"\n        }, {\n            \"rowno\": \"88\",\n            \"estimatedTime\": \"2024/09/10 16:22\",\n            \"shipId\": \"CN20098342454\",\n            \"shipNameCn\": \"大建698\",\n            \"shipNameEn\": \"DA JIAN 698\",\n            \"mmsi\": 413806162,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 11:27:19\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"王家屋干散货船舶锚地\",\n            \"shipGrosston\": \"1592\",\n            \"shipBreadth\": \"13.6\",\n            \"shipDepth\": \"4.7\",\n            \"draftForward\": \"0.8\",\n            \"aftDraft\": \"1.4\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"79.6\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.499609375,\n            \"latitude\": 30.679319254557292,\n            \"distance\": \"5.84\"\n        }, {\n            \"rowno\": \"89\",\n            \"estimatedTime\": \"2024/09/10 16:30\",\n            \"shipId\": \"CN20201306587\",\n            \"shipNameCn\": \"轮渡清洁环保1\",\n            \"shipNameEn\": \"LUN DU QING JIE HUAN BAO 1\",\n            \"mmsi\": 413856748,\n            \"shipImo\": \"----\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 16:17:13\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"汉江武汉集家嘴轮渡码头\",\n            \"shipGrosston\": \"125\",\n            \"shipBreadth\": \"6.4\",\n            \"shipDepth\": \"2.4\",\n            \"draftForward\": \"0.7\",\n            \"aftDraft\": \"1.7\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"27.06\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.28086751302084,\n            \"latitude\": 30.558199055989583,\n            \"distance\": \"28.20\"\n        }, {\n            \"rowno\": \"90\",\n            \"estimatedTime\": \"2024/09/10 16:47\",\n            \"shipId\": \"CN20146654003\",\n            \"shipNameCn\": \"南海翔\",\n            \"shipNameEn\": \"NAN HAI XIANG\",\n            \"mmsi\": 413828604,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 11:49:08\",\n            \"actualCarryingCapacity\": \"1150\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉长航集团军山船厂\",\n            \"shipGrosston\": \"973\",\n            \"shipBreadth\": \"11.5\",\n            \"shipDepth\": \"4.05\",\n            \"draftForward\": \"2.5\",\n            \"aftDraft\": \"2.3\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"68\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.116943359375,\n            \"latitude\": 30.355173746744793,\n            \"distance\": \"53.42\"\n        }, {\n            \"rowno\": \"91\",\n            \"estimatedTime\": \"2024/09/10 17:00\",\n            \"shipId\": \"CN20105820528\",\n            \"shipNameCn\": \"通达化5\",\n            \"shipNameEn\": \"TONG DA HUA 5\",\n            \"mmsi\": 413819614,\n            \"shipImo\": \"--\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-09 22:09:28\",\n            \"actualCarryingCapacity\": \"2670\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"2670\",\n            \"berthName\": \"中韩石化武汉乙烯液体码头\",\n            \"shipGrosston\": \"2239\",\n            \"shipBreadth\": \"14.83\",\n            \"shipDepth\": \"4.75\",\n            \"draftForward\": \"3.4\",\n            \"aftDraft\": \"3.5\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"86.75\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.53658854166666,\n            \"latitude\": 30.66493937174479,\n            \"distance\": \"1.99\"\n        }, {\n            \"rowno\": \"92\",\n            \"estimatedTime\": \"2024/09/10 17:00\",\n            \"shipId\": \"CN20061062417\",\n            \"shipNameCn\": \"锦航9888\",\n            \"shipNameEn\": \"JIN HANG 9888\",\n            \"mmsi\": 413981694,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 12:08:15\",\n            \"actualCarryingCapacity\": \"185\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"武汉国际集装箱有限公司1期\",\n            \"shipGrosston\": \"932\",\n            \"shipBreadth\": \"10.62\",\n            \"shipDepth\": \"3.77\",\n            \"draftForward\": \"0.8\",\n            \"aftDraft\": \"1.8\",\n            \"realContainerQay\": \"32\",\n            \"shipLength\": \"57.7\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.26771647135416,\n            \"latitude\": 30.5637939453125,\n            \"distance\": \"29.16\"\n        }, {\n            \"rowno\": \"93\",\n            \"estimatedTime\": \"2024/09/10 17:05\",\n            \"shipId\": \"CN20189061828\",\n            \"shipNameCn\": \"宁化502\",\n            \"shipNameEn\": \"NING HUA 502\",\n            \"mmsi\": 413849914,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 13:02:19\",\n            \"actualCarryingCapacity\": \"4336.75\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"4336.75\",\n            \"berthName\": \"武汉中长燃白浒山加油站\",\n            \"shipGrosston\": \"2995\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"5.5\",\n            \"draftForward\": \"4.4\",\n            \"aftDraft\": \"4.4\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"104.9\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.59398600260417,\n            \"latitude\": 30.55977986653646,\n            \"distance\": \"11.18\"\n        }, {\n            \"rowno\": \"94\",\n            \"estimatedTime\": \"2024/09/10 17:30\",\n            \"shipId\": \"CN20112208157\",\n            \"shipNameCn\": \"江城9号\",\n            \"shipNameEn\": \"JIANG CHENG 9 HAO\",\n            \"mmsi\": 413841981,\n            \"shipImo\": \"----\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 17:12:30\",\n            \"actualCarryingCapacity\": \"\",\n            \"actualCapacity\": \"2\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉中华路轮渡码头\",\n            \"shipGrosston\": \"357\",\n            \"shipBreadth\": \"10\",\n            \"shipDepth\": \"2.9\",\n            \"draftForward\": \"1.4\",\n            \"aftDraft\": \"1.8\",\n            \"realContainerQay\": \"0\",\n            \"shipLength\": \"39.4\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.28865559895833,\n            \"latitude\": 30.552846272786457,\n            \"distance\": \"27.75\"\n        }, {\n            \"rowno\": \"95\",\n            \"estimatedTime\": \"2024/09/10 17:31\",\n            \"shipId\": \"CN20113706855\",\n            \"shipNameCn\": \"鑫裕11867\",\n            \"shipNameEn\": \"XIN YU 11867\",\n            \"mmsi\": 413985674,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 13:14:45\",\n            \"actualCarryingCapacity\": \"3000\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉华新水泥4号码头\",\n            \"shipGrosston\": \"1610\",\n            \"shipBreadth\": \"11.85\",\n            \"shipDepth\": \"5.56\",\n            \"draftForward\": \"4.8\",\n            \"aftDraft\": \"4.7\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"79.8\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.22130533854167,\n            \"latitude\": 30.478472900390624,\n            \"distance\": \"37.33\"\n        }, {\n            \"rowno\": \"96\",\n            \"estimatedTime\": \"2024/09/10 17:45\",\n            \"shipId\": \"CN20121109106\",\n            \"shipNameCn\": \"金果168号\",\n            \"shipNameEn\": \"JIN GUO 168 HAO\",\n            \"mmsi\": 0,\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 08:29:40\",\n            \"actualCarryingCapacity\": \"32\",\n            \"actualCapacity\": \"70\",\n            \"realVehicle\": \"16\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"湖北恩施巴东桃符口汽车渡口\",\n            \"shipGrosston\": \"115\",\n            \"shipBreadth\": \"6\",\n            \"shipDepth\": \"1.8\",\n            \"draftForward\": \"1\",\n            \"aftDraft\": \"1.2\",\n            \"realContainerQay\": \"0\",\n            \"shipLength\": \"24\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.39160970052083,\n            \"latitude\": 30.567390950520835,\n            \"distance\": \"18.25\"\n        }, {\n            \"rowno\": \"97\",\n            \"estimatedTime\": \"2024/09/10 18:00\",\n            \"shipId\": \"CN20156431711\",\n            \"shipNameCn\": \"兆基油8\",\n            \"shipNameEn\": \"ZHAO JI YOU 8\",\n            \"mmsi\": \"413833507\",\n            \"shipImo\": \"\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 16:13:43\",\n            \"actualCarryingCapacity\": \"80\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"80\",\n            \"berthName\": \"长江武汉中航加油站\",\n            \"shipGrosston\": \"229\",\n            \"shipBreadth\": \"7.2\",\n            \"shipDepth\": \"3\",\n            \"draftForward\": \"1.4\",\n            \"aftDraft\": \"1.5\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"36.8\",\n            \"totalCount\": \"141\"\n        }, {\n            \"rowno\": \"98\",\n            \"estimatedTime\": \"2024/09/10 18:00\",\n            \"shipId\": \"CN20112821133\",\n            \"shipNameCn\": \"万隆808\",\n            \"shipNameEn\": \"WAN LONG 808\",\n            \"mmsi\": 413956206,\n            \"shipImo\": \"--\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 09:40:05\",\n            \"actualCarryingCapacity\": \"3070\",\n            \"actualCapacity\": \"\",\n            \"realVehicle\": \"\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉长航集团军山船厂\",\n            \"shipGrosston\": \"1954\",\n            \"shipBreadth\": \"14\",\n            \"shipDepth\": \"4.5\",\n            \"draftForward\": \"3.7\",\n            \"aftDraft\": \"3.6\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"87\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.11573079427083,\n            \"latitude\": 30.352067057291666,\n            \"distance\": \"53.72\"\n        }, {\n            \"rowno\": \"99\",\n            \"estimatedTime\": \"2024/09/10 18:00\",\n            \"shipId\": \"CN20109253309\",\n            \"shipNameCn\": \"华林618\",\n            \"shipNameEn\": \"HUA LIN 618\",\n            \"mmsi\": 413816475,\n            \"shipImo\": \"-\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 13:18:56\",\n            \"actualCarryingCapacity\": \"3700\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉金口港区重件多用码头\",\n            \"shipGrosston\": \"1893\",\n            \"shipBreadth\": \"13.96\",\n            \"shipDepth\": \"5.65\",\n            \"draftForward\": \"4.8\",\n            \"aftDraft\": \"4.6\",\n            \"realContainerQay\": \"\",\n            \"shipLength\": \"80.38\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.15152180989584,\n            \"latitude\": 30.378387451171875,\n            \"distance\": \"49.21\"\n        }, {\n            \"rowno\": \"100\",\n            \"estimatedTime\": \"2024/09/10 18:00\",\n            \"shipId\": \"CN20155177571\",\n            \"shipNameCn\": \"华枫和盛\",\n            \"shipNameEn\": \"HUA FENG HE SHENG\",\n            \"mmsi\": 413260130,\n            \"shipImo\": \"----\",\n            \"status\": \"进港\",\n            \"reportTime\": \"2024-09-10 03:14:45\",\n            \"actualCarryingCapacity\": \"1700\",\n            \"actualCapacity\": \"0\",\n            \"realVehicle\": \"0\",\n            \"realDangerCargo\": \"\",\n            \"berthName\": \"长江武汉港集装箱有限公司2期\",\n            \"shipGrosston\": \"5168\",\n            \"shipBreadth\": \"18.6\",\n            \"shipDepth\": \"8.8\",\n            \"draftForward\": \"3\",\n            \"aftDraft\": \"3.2\",\n            \"realContainerQay\": \"138\",\n            \"shipLength\": \"109.6\",\n            \"totalCount\": \"141\",\n            \"longitude\": 114.542626953125,\n            \"latitude\": 30.672007242838543,\n            \"distance\": \"2.21\"\n        }]\n    }\n}",
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
      "name" : "resultCode",
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
      "name" : "resultMsg",
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
        "name" : "total",
        "value" : "141",
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
        "name" : "list",
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
            "name" : "rowno",
            "value" : "1",
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
            "name" : "estimatedTime",
            "value" : "2024/09/10 01:00",
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
            "name" : "shipId",
            "value" : "CN20107358550",
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
            "name" : "shipNameCn",
            "value" : "巨丰3",
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
            "name" : "shipNameEn",
            "value" : "JU FENG 3",
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
            "name" : "mmsi",
            "value" : "413781855",
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
            "name" : "shipImo",
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
          }, {
            "name" : "status",
            "value" : "进港",
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
            "name" : "reportTime",
            "value" : "2024-09-09 19:04:24",
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
            "name" : "actualCarryingCapacity",
            "value" : "2800",
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
            "name" : "actualCapacity",
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
          }, {
            "name" : "realVehicle",
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
          }, {
            "name" : "realDangerCargo",
            "value" : "2800",
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
            "name" : "berthName",
            "value" : "长江武汉中石化长燃新五里加油站",
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
            "name" : "shipGrosston",
            "value" : "2075",
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
            "name" : "shipBreadth",
            "value" : "14.8",
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
            "name" : "shipDepth",
            "value" : "5.1",
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
            "name" : "draftForward",
            "value" : "3.8",
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
            "name" : "aftDraft",
            "value" : "3.8",
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
            "name" : "realContainerQay",
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
          }, {
            "name" : "shipLength",
            "value" : "87",
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
            "name" : "totalCount",
            "value" : "141",
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
            "value" : "112.9361083984375",
            "description" : "",
            "required" : false,
            "dataType" : "Double",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "latitude",
            "value" : "29.5060302734375",
            "description" : "",
            "required" : false,
            "dataType" : "Double",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "distance",
            "value" : "201.26",
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
       -- type_code,
       REAL_CONTAINER_QAY,
       SHIP_LENGTH,
       count(*) OVER() total_count
  from (
        
        select *
          from (select a.PORT_CODE,
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
                        a.BERTH_name,
                        SHIP_GROSSTON,
                        SHIP_BREADTH,
                        SHIP_DEPTH,
                        DRAFT_FORWARD,
                        AFT_DRAFT,
                        --type_code,
                        REAL_CONTAINER_QAY,
                        SHIP_LENGTH
                   from (
                         select distinct a.SHIP_LENGTH,
                                          a.REAL_CONTAINER_QAY,
                                          a.REPORT_PORT_CODE PORT_CODE，to_CHAR(a.EXPECT_TIME, 'YYYY/MM/DD hh24:mi') ARRIVE_TIME,
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
                                          a.berth_code,
                                          a.SHIP_GROSSTON,
                                          a.SHIP_BREADTH,
                                          a.SHIP_DEPTH,
                                          a.DRAFT_FORWARD,
                                          a.AFT_DRAFT
                         --,b.type_code
                           from bds_biz_data.RPT_SHIP_EEP_REPORT_REC a
                         --left join bds_biz_data.rpt_cargo_declare_rec b on a.report_id=b.report_id
                          where a.DELETE_FLAG != '1'
                            and a.if_revoke != '1'
                            and a.ARRIVAL_OR_LEAVE = '0'
                            and a.EXPECT_TIME >= sysdate
                            --and a.EXPECT_TIME >= trunc(sysdate) - 1
                            and a.EXPECT_TIME < trunc(sysdate) + 1) a,
                        dict_data.dim_l_t_location_info p
                  where a.BERTH_CODE = p.BERTH_CODE
                    <if test="portCodeArraySize > 0" >
                      and p.port_code in
                      <foreach collection="portCodeArray" item = 'item'  open="(" separator="," close=")" >
                        #{item}
                      </foreach>
                    </if>
                 )
         order by ARRIVE_TIME)
 where rn = 1
 order by ARRIVE_TIME
"""
var list = db.biz_data.camel().select(pageStart + sql + pageEnd);
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
        if (itData.get("typeCode") != null && itData.get("typeCode") != '') {
            itData.put("typeCode",
                TagUtils.getTagNameByCode("cargoType", itData.get("typeCode")));
        }
        if (itData.get("mmsi") != null && itData.get("mmsi") != "") {
            idList.add(Integer.decode(itData.get("mmsi")))
        }

    }
    if (idList.size() >= 1) {

        var sqlLon = """select distinct longitude,latitude,mmsi, 
                         round(cast(public.ST_Distance(public.geography(public.ST_MakePoint          
                                      ("longitude","latitude")),
                                        public.geography(public.ST_MakePoint(b.lon , b.lat )))/1000  as numeric),2) as distance
                                        from  ais_pos_new_all a  left join SEARCH_GK_QQGKQD  b on 1=1
                                        where  1=1 and a.mmsi in                                  
                                                <foreach collection="idList"  open="(" separator="," close=")" item="item">
                                                #{item}
                         </foreach> and upper(replace(b.gkywmc,' ','')) = upper(replace(#{portName},' ',''))  """;
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
var back = {
    "total": Integer.parseInt(totalCount::string),
    "list": list
}
//var  ret=db.biz_data.camel().page(sql);
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: back

});