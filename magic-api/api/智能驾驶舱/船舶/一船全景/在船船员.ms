{
  "properties" : { },
  "id" : "fed8f7739a344063b681a327988752ab",
  "script" : null,
  "groupId" : "a2f8b128e2c64d9eba631714dd3787a1",
  "name" : "在船船员",
  "createTime" : null,
  "updateTime" : 1764320008048,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getOnShipCrew",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipMmsi",
    "value" : "413775715",
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
    "name" : "page",
    "value" : "",
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
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "300",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "shipId",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"flag\": \"2\",\n        \"basic\": {\n            \"reportId\": \"46a3f332-2c5c-4c99-af3f-6604aa97a38a\",\n            \"regShipId\": \"无\",\n            \"shipId\": \"CN20127861407\",\n            \"shipRegNo\": \"270123000046\",\n            \"shipFirstregNo\": \"340612000171\",\n            \"shipInspectNo\": \"2012B4100425\",\n            \"shipNameCn\": \"宁川66\",\n            \"shipNameEn\": \"NING CHUAN 66NING\",\n            \"shipImo\": \"--\",\n            \"mmsi\": \"413839157\",\n            \"shipCallsign\": \"--\",\n            \"regportCode\": \"0601\",\n            \"flagStateCode\": \"CN\",\n            \"shipRegionType\": \"0\",\n            \"shipTypeCode\": \"0301\",\n            \"shipGrosston\": \"957\",\n            \"shipNetton\": \"536\",\n            \"shipDwt\": \"980\",\n            \"mainenginePower\": \"496\",\n            \"shipPassengerNum\": \"\",\n            \"shipLength\": \"66\",\n            \"shipBreadth\": \"12\",\n            \"shipDepth\": \"2.9\",\n            \"lineCode\": \"1\",\n            \"areaCode\": \"10\",\n            \"constructionDate\": \"2012-09-18 00:00:00\",\n            \"shipOwner\": \"江苏宁高航运有限公司\",\n            \"ownerAddress\": \"南京市高淳经济开发区花山路17号1幢1016室\",\n            \"ownerContactPhone\": \"\",\n            \"ownerCorporation\": \"王祥礼\",\n            \"shipOperator\": \"\",\n            \"operatorAddress\": \"\",\n            \"operatorTelephone\": \"\",\n            \"operatorCorporation\": \"\",\n            \"businessCode\": \"3433792012786140720250320084704\",\n            \"reportNo\": \"CBBG202503692295\",\n            \"orgCode\": \"芜湖慈湖海事处\",\n            \"reportPortName\": \"马鞍山\",\n            \"reportPortCode\": \"343379\",\n            \"arrivalOrLeave\": \"进港\",\n            \"arrivalReportId\": \"\",\n            \"nextPortName\": \"\",\n            \"nextPortCode\": \"\",\n            \"reportTime\": \"2025-03-20 08:47:10\",\n            \"bidName\": \"王标\",\n            \"mobilePhone\": \"13770595093\",\n            \"expectTime\": \"2025-03-20 14:46:00\",\n            \"ifAnchored\": \"否\",\n            \"draftForward\": \"0.8\",\n            \"aftDraft\": \"1.2\",\n            \"berthCode\": \"1217081\",\n            \"berthName\": \"长江芜湖马鞍山段新生洲锚地\",\n            \"otherQuantity\": \"\",\n            \"actualCarryingCapacity\": \"0\",\n            \"portCargo\": \"0\",\n            \"realDangerCargo\": \"0\",\n            \"portDangerCargo\": \"0\",\n            \"actualCapacity\": \"0\",\n            \"portPassenger\": \"0\",\n            \"realVehicle\": \"0\",\n            \"portVehicle\": \"0\",\n            \"numOfBarge\": \"0\",\n            \"portBarge\": \"0\",\n            \"realContainerQay\": \"\",\n            \"portContainerQay\": \"\",\n            \"longitude\": \"\",\n            \"latitude\": \"\",\n            \"ifRevoke\": \"否\",\n            \"voyageReport\": \"0\",\n            \"frequency\": \"1\",\n            \"navigationSection\": \"--\",\n            \"prePortName\": \"长沙港\",\n            \"prePortCode\": \"434309\",\n            \"rownumber\": \"1\",\n            \"offiSources\": \"\",\n            \"_mobilePhone\": \"137****5093\",\n            \"totalPerson\": \"6\"\n        },\n        \"list\": [{\n            \"totalPerson\": \"6\",\n            \"rowno\": \"1\",\n            \"totalCount\": \"6\",\n            \"crewId\": \"30A3CD36A500B40EE063710820C64E43\",\n            \"reportId\": \"46a3f332-2c5c-4c99-af3f-6604aa97a38a\",\n            \"seqNo\": \"4\",\n            \"createDate\": \"2025-03-20 08:47:55\",\n            \"idCardNo\": \"320***********139\",\n            \"name\": \"邱明柳\",\n            \"dutyCode\": \"船长\",\n            \"certType\": \"7\",\n            \"certNo\": \"320***********139\",\n            \"certLevelCode\": \"N11\",\n            \"certDutyCode\": \"船长\",\n            \"compDutiesName\": \"船长  \",\n            \"rowFlg\": \"1\",\n            \"_idCardNo\": \"GawAX3HYu7UxPDBZCjBqjdaWq%2FBIy3INBWxDsdicjBY%3D\"\n        }, {\n            \"totalPerson\": \"6\",\n            \"rowno\": \"2\",\n            \"totalCount\": \"6\",\n            \"crewId\": \"30A3CD36A504B40EE063710820C64E43\",\n            \"reportId\": \"46a3f332-2c5c-4c99-af3f-6604aa97a38a\",\n            \"seqNo\": \"6\",\n            \"createDate\": \"2025-03-20 08:47:55\",\n            \"idCardNo\": \"320***********230\",\n            \"name\": \"王夫永\",\n            \"dutyCode\": \"轮机员\",\n            \"certType\": \"7\",\n            \"certNo\": \"320***********230\",\n            \"certLevelCode\": \"N22\",\n            \"certDutyCode\": \"轮机长\",\n            \"compDutiesName\": \"轮机员   \",\n            \"rowFlg\": \"1\",\n            \"_idCardNo\": \"O74kp92EWOP5M5D5YK9yIHmhq%2BeXEmQdud4A67RCOV4%3D\"\n        }, {\n            \"totalPerson\": \"6\",\n            \"rowno\": \"3\",\n            \"totalCount\": \"6\",\n            \"crewId\": \"30A3CD36A4FAB40EE063710820C64E43\",\n            \"reportId\": \"46a3f332-2c5c-4c99-af3f-6604aa97a38a\",\n            \"seqNo\": \"1\",\n            \"createDate\": \"2025-03-20 08:47:55\",\n            \"idCardNo\": \"432***********512\",\n            \"name\": \"刘团结\",\n            \"dutyCode\": \"水手\",\n            \"certType\": \"内河证书\",\n            \"certNo\": \"432***********512\",\n            \"certLevelCode\": \"N00\",\n            \"certDutyCode\": \"普通船员（内河船舶船员）\",\n            \"compDutiesName\": \"水手\",\n            \"rowFlg\": \"1\",\n            \"_idCardNo\": \"U%2FO%2Bd6B6ZRT1bgy2gmQHexq6K2W9BthQJz6IEwBKl30%3D\"\n        }, {\n            \"totalPerson\": \"6\",\n            \"rowno\": \"4\",\n            \"totalCount\": \"6\",\n            \"crewId\": \"30A3CD36A4FCB40EE063710820C64E43\",\n            \"reportId\": \"46a3f332-2c5c-4c99-af3f-6604aa97a38a\",\n            \"seqNo\": \"2\",\n            \"createDate\": \"2025-03-20 08:47:55\",\n            \"idCardNo\": \"320***********953\",\n            \"name\": \"王远亮\",\n            \"dutyCode\": \"水手\",\n            \"certType\": \"5\",\n            \"certNo\": \"320***********953\",\n            \"certLevelCode\": \"\",\n            \"certDutyCode\": \"\",\n            \"compDutiesName\": \"水手\",\n            \"rowFlg\": \"1\",\n            \"_idCardNo\": \"xP4PJaIOYFXW8YCVSG6KpDtyheXGq5icv25%2FLrKVHO4%3D\"\n        }, {\n            \"totalPerson\": \"6\",\n            \"rowno\": \"5\",\n            \"totalCount\": \"6\",\n            \"crewId\": \"30A3CD36A4FEB40EE063710820C64E43\",\n            \"reportId\": \"46a3f332-2c5c-4c99-af3f-6604aa97a38a\",\n            \"seqNo\": \"3\",\n            \"createDate\": \"2025-03-20 08:47:55\",\n            \"idCardNo\": \"320***********844\",\n            \"name\": \"闫梅\",\n            \"dutyCode\": \"水手\",\n            \"certType\": \"7\",\n            \"certNo\": \"320***********844\",\n            \"certLevelCode\": \"N23\",\n            \"certDutyCode\": \"轮机长\",\n            \"compDutiesName\": \"水手\",\n            \"rowFlg\": \"1\",\n            \"_idCardNo\": \"NaZOp1O2IjjVpsqD%2Fw%2FS%2Fu8PwYPsqfzAMGoVtJNzE1c%3D\"\n        }, {\n            \"totalPerson\": \"6\",\n            \"rowno\": \"6\",\n            \"totalCount\": \"6\",\n            \"crewId\": \"30A3CD36A502B40EE063710820C64E43\",\n            \"reportId\": \"46a3f332-2c5c-4c99-af3f-6604aa97a38a\",\n            \"seqNo\": \"5\",\n            \"createDate\": \"2025-03-20 08:47:55\",\n            \"idCardNo\": \"412***********31X\",\n            \"name\": \"杨德伟\",\n            \"dutyCode\": \"驾驶员\",\n            \"certType\": \"7\",\n            \"certNo\": \"412***********31X\",\n            \"certLevelCode\": \"N12\",\n            \"certDutyCode\": \"船长\",\n            \"compDutiesName\": \"驾驶员   \",\n            \"rowFlg\": \"1\",\n            \"_idCardNo\": \"3iT9GLDVfe%2BHHUgSHnjJuN7MHU4%2FfGcnyZSRWjPhK7Y%3D\"\n        }],\n        \"total\": 6\n    }\n}",
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
        "name" : "flag",
        "value" : "2",
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
        "name" : "basic",
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
          "name" : "reportId",
          "value" : "46a3f332-2c5c-4c99-af3f-6604aa97a38a",
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
          "name" : "regShipId",
          "value" : "无",
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
          "value" : "CN20127861407",
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
          "name" : "shipRegNo",
          "value" : "270123000046",
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
          "name" : "shipFirstregNo",
          "value" : "340612000171",
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
          "name" : "shipInspectNo",
          "value" : "2012B4100425",
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
          "value" : "宁川66",
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
          "value" : "NING CHUAN 66NING",
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
          "name" : "shipImo",
          "value" : "--",
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
          "value" : "413839157",
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
          "name" : "shipCallsign",
          "value" : "--",
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
          "name" : "regportCode",
          "value" : "0601",
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
          "name" : "flagStateCode",
          "value" : "CN",
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
          "name" : "shipRegionType",
          "value" : "0",
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
          "name" : "shipTypeCode",
          "value" : "0301",
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
          "value" : "957",
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
          "name" : "shipNetton",
          "value" : "536",
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
          "name" : "shipDwt",
          "value" : "980",
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
          "name" : "mainenginePower",
          "value" : "496",
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
          "name" : "shipPassengerNum",
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
          "value" : "66",
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
          "value" : "12",
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
          "value" : "2.9",
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
          "name" : "lineCode",
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
          "name" : "areaCode",
          "value" : "10",
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
          "name" : "constructionDate",
          "value" : "2012-09-18 00:00:00",
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
          "name" : "shipOwner",
          "value" : "江苏宁高航运有限公司",
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
          "name" : "ownerAddress",
          "value" : "南京市高淳经济开发区花山路17号1幢1016室",
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
          "name" : "ownerContactPhone",
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
          "name" : "ownerCorporation",
          "value" : "王祥礼",
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
          "name" : "shipOperator",
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
          "name" : "operatorAddress",
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
          "name" : "operatorTelephone",
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
          "name" : "operatorCorporation",
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
          "name" : "businessCode",
          "value" : "3433792012786140720250320084704",
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
          "name" : "reportNo",
          "value" : "CBBG202503692295",
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
          "name" : "orgCode",
          "value" : "芜湖慈湖海事处",
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
          "name" : "reportPortName",
          "value" : "马鞍山",
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
          "name" : "reportPortCode",
          "value" : "343379",
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
          "name" : "arrivalOrLeave",
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
          "name" : "arrivalReportId",
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
          "name" : "nextPortName",
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
          "name" : "nextPortCode",
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
          "name" : "reportTime",
          "value" : "2025-03-20 08:47:10",
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
          "name" : "bidName",
          "value" : "王标",
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
          "name" : "mobilePhone",
          "value" : "13770595093",
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
          "name" : "expectTime",
          "value" : "2025-03-20 14:46:00",
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
          "name" : "ifAnchored",
          "value" : "否",
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
          "value" : "0.8",
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
          "value" : "1.2",
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
          "name" : "berthCode",
          "value" : "1217081",
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
          "value" : "长江芜湖马鞍山段新生洲锚地",
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
          "name" : "otherQuantity",
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
          "name" : "actualCarryingCapacity",
          "value" : "0",
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
          "name" : "portCargo",
          "value" : "0",
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
          "value" : "0",
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
          "name" : "portDangerCargo",
          "value" : "0",
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
          "value" : "0",
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
          "name" : "portPassenger",
          "value" : "0",
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
          "value" : "0",
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
          "name" : "portVehicle",
          "value" : "0",
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
          "name" : "numOfBarge",
          "value" : "0",
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
          "name" : "portBarge",
          "value" : "0",
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
          "name" : "portContainerQay",
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
          "name" : "longitude",
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
          "name" : "latitude",
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
          "name" : "ifRevoke",
          "value" : "否",
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
          "name" : "voyageReport",
          "value" : "0",
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
          "name" : "frequency",
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
          "name" : "navigationSection",
          "value" : "--",
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
          "name" : "prePortName",
          "value" : "长沙港",
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
          "name" : "prePortCode",
          "value" : "434309",
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
          "name" : "rownumber",
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
          "name" : "offiSources",
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
          "name" : "_mobilePhone",
          "value" : "137****5093",
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
          "name" : "totalPerson",
          "value" : "6",
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
            "name" : "totalPerson",
            "value" : "6",
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
            "name" : "totalCount",
            "value" : "6",
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
            "name" : "crewId",
            "value" : "30A3CD36A500B40EE063710820C64E43",
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
            "name" : "reportId",
            "value" : "46a3f332-2c5c-4c99-af3f-6604aa97a38a",
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
            "name" : "seqNo",
            "value" : "4",
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
            "name" : "createDate",
            "value" : "2025-03-20 08:47:55",
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
            "name" : "idCardNo",
            "value" : "320***********139",
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
            "name" : "name",
            "value" : "邱明柳",
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
            "name" : "dutyCode",
            "value" : "船长",
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
            "name" : "certType",
            "value" : "7",
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
            "name" : "certNo",
            "value" : "320***********139",
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
            "name" : "certLevelCode",
            "value" : "N11",
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
            "name" : "certDutyCode",
            "value" : "船长",
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
            "name" : "compDutiesName",
            "value" : "船长",
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
            "name" : "rowFlg",
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
            "name" : "_idCardNo",
            "value" : "GawAX3HYu7UxPDBZCjBqjdaWq%2FBIy3INBWxDsdicjBY%3D",
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
        "value" : "6",
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
import org.springblade.common.utils.ZzSecurityHelper
import java.net.URLEncoder
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
import 'java.util.stream.Collectors' as Collectors;

//查询最新一条数据是船舶进出港，还是进出口查验
 var flag="";//报告出口 1，报告进口 2，查验出口3，查验进口4
import response;
var reportId="""""";
var selSql=""" """;
if((shipNo==null||shipNo=='')&&(shipMmsi==null||shipMmsi=='')&&(shipId==null||shipId=='')&&(shipImo==null||shipImo=='')){
 var back = {
        "flag":"",
        "basic": {},
        "list": [],
        "total": 0
    }
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        data: back
    });
}
 

var sqlFirst="""
   select  LAST_ACTIVE_PORT_flag,REPORT_ID_IN,REPORT_ID_OUT,
                 INSPECT_ID_IN,INSPECT_ID_OUT  from sub_biz_data.ship_dynamics_data
                 <trim prefix="WHERE" prefixOverrides="AND |OR ">
                  <if test="shipNo != null and shipNo!=''">
                             SHIP_NO = #{shipNo}
                   </if>
                    <if test="shipNo == null or shipNo==''">
                        
                         <if test="shipId != null and shipId!=''">
                         and SHIP_ID = #{shipId}
                         </if>

                         <if test="shipMmsi != null and shipMmsi!=''">
                           and SHIP_MMSI = #{shipMmsi}
                         </if>
                       <if test="shipImo != null and shipImo!=''">
                         and ship_Imo = #{shipImo}
                       </if>
                   </if>
                    
            </trim>
                
""";

var dyNamicsData=db.biz_data.camel().selectOne(sqlFirst+selSql);
  
  
        

if(dyNamicsData==null||dyNamicsData==''||dyNamicsData.lastActivePortFlag==null||dyNamicsData.lastActivePortFlag==''){
    var back = {
            "flag":"",
            "basic": {},
            "list": [],
            "total": 0
        }
        return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            data: back
        });
}else if("报告出港".equals(dyNamicsData.lastActivePortFlag)){
    reportId=dyNamicsData.reportIdOut;
    flag="1";
}else if("报告进港".equals(dyNamicsData.lastActivePortFlag)){
    reportId=dyNamicsData.reportIdIn;
    flag="2";
}else if("查验出港".equals(dyNamicsData.lastActivePortFlag)){
    reportId=dyNamicsData.inspectIdOut;
    flag="3";
}else if("查验进港".equals(dyNamicsData.lastActivePortFlag)){
    reportId=dyNamicsData.inspectIdIn;
    flag="4";
}

 


if("报告出港".equals(dyNamicsData.lastActivePortFlag)||"报告进港".equals(dyNamicsData.lastActivePortFlag)){//如果是进出港报告
      var cbSql;

    cbSql = """
        select  e.REPORT_ID,e.REG_SHIP_ID,e.SHIP_ID,e.SHIP_REG_NO,e.SHIP_FIRSTREG_NO,e.SHIP_INSPECT_NO,e.SHIP_NAME_CN,e.SHIP_NAME_EN,e.SHIP_IMO,e.MMSI,
            e.SHIP_CALLSIGN,e.REGPORT_CODE,e.FLAG_STATE_CODE,e.SHIP_REGION_TYPE,e.SHIP_TYPE_CODE,e.SHIP_GROSSTON,e.SHIP_NETTON,e.SHIP_DWT,e.MAINENGINE_POWER,
            e.SHIP_PASSENGER_NUM,e.SHIP_LENGTH,e.SHIP_BREADTH,e.SHIP_DEPTH,e.LINE_CODE,e.AREA_CODE,e.CONSTRUCTION_DATE,e.SHIP_OWNER,e.OWNER_ADDRESS,e.OWNER_CONTACT_PHONE,
            e.OWNER_CORPORATION,e.SHIP_OPERATOR,e.OPERATOR_ADDRESS,e.OPERATOR_TELEPHONE,e.OPERATOR_CORPORATION,e.BUSINESS_CODE,e.REPORT_NO,e.ORG_CODE,e.REPORT_PORT_NAME,
            e.REPORT_PORT_CODE,e.ARRIVAL_OR_LEAVE,e.ARRIVAL_REPORT_ID,e.NEXT_PORT_NAME,e.NEXT_PORT_CODE,e.REPORT_TIME,e.BID_NAME,e.MOBILE_PHONE,e.EXPECT_TIME,
            e.IF_ANCHORED,e.DRAFT_FORWARD,e.AFT_DRAFT,e.BERTH_CODE,e.BERTH_NAME,e.OTHER_QUANTITY,e.ACTUAL_CARRYING_CAPACITY,e.PORT_CARGO,e.REAL_DANGER_CARGO,
            e.PORT_DANGER_CARGO,e.ACTUAL_CAPACITY,e.PORT_PASSENGER,e.REAL_VEHICLE,e.PORT_VEHICLE,e.NUM_OF_BARGE,e.PORT_BARGE,e.REAL_CONTAINER_QAY,e.PORT_CONTAINER_QAY,
            e.LONGITUDE,e.LATITUDE,e.IF_REVOKE,e.VOYAGE_REPORT,e.FREQUENCY,e.NAVIGATION_SECTION,e.PRE_PORT_NAME,e.PRE_PORT_CODE
            ,row_number() over(order by ship_id DESC) as rownumber from RPT_SHIP_EEP_REPORT_REC e where 1=1
          and REPORT_ID='"""+reportId+"""' 
          and delete_flag='0'
                
    """;


    var basic = db.biz_data.camel().selectOne(cbSql);

    

    if (basic != null) {
        basic.put("ifAnchored", TagUtils.getTagNameByCode("ifAnchored", basic.get("ifAnchored")::string))
        basic.put("ifRevoke", TagUtils.getTagNameByCode("ifRevoke", basic.get("ifRevoke")::string))
        basic.put("arrivalOrLeave", TagUtils.getTagNameByCode("arrivalOrLeave", basic.get("arrivalOrLeave")::string))
        basic.put("orgCode", TagUtils.getTagNameByCode("issuOrgTag", basic.get("orgCode")))
        basic.put("offiSources", TagUtils.getTagNameByCode("isOwnTag", basic.get("offiSources")))
        if (basic.get("mobilePhone") != null && basic.get("mobilePhone") != '') {
            basic.put("_mobilePhone", DesensitizationUtil.mobilePhone(basic.get("mobilePhone")::string))
        }
    }

    if (basic != null && basic != '') {
        var reportId = basic.get("reportId")
        if (reportId != null && reportId != '') {
            var lastSql22 = """
          select total_person,rowno, total_count, CREW_ID,REPORT_ID,SEQ_NO,CREATE_DATE,ID_CARD_NO,NAME,DUTY_CODE,CERT_TYPE,
    CERT_NO,CERT_LEVEL_CODE,CERT_DUTY_CODE 
                ,  comp_duties_name, row_flg
        from (select total_person,rownum rowno, total_count, CREW_ID,REPORT_ID,SEQ_NO,CREATE_DATE,ID_CARD_NO,NAME,DUTY_CODE,CERT_TYPE,
    CERT_NO,CERT_LEVEL_CODE,CERT_DUTY_CODE 
                ,  comp_duties_name, row_flg
              from (
              select total_count, CREW_ID,REPORT_ID,SEQ_NO,CREATE_DATE,ID_CARD_NO,NAME,DUTY_CODE,CERT_TYPE,
    CERT_NO,CERT_LEVEL_CODE,CERT_DUTY_CODE 
                ,  comp_duties_name, row_flg,total_person from (select distinct count(distinct ID_CARD_NO) over() total_count, count(distinct ID_CARD_NO) over() total_person,T.CREW_ID,T.REPORT_ID,T.SEQ_NO,T.CREATE_DATE,T.ID_CARD_NO,T.NAME,T.DUTY_CODE,T.CERT_TYPE,
    T.CERT_NO,T.CERT_LEVEL_CODE,T.CERT_DUTY_CODE 
                , d.item_name_cn comp_duties_name
                , row_number() OVER(PARTITION BY T.ID_CARD_NO ORDER BY T.CREATE_DATE desc) as row_flg  ,d.sort
                  from RPT_ON_SHIP_CREW_REC T 
                  left join dict_data.d_cy_cert_duty_code d 
                  on T.duty_code = d.code 
                where T.report_id = '""" +
                reportId +
                //"""' and t.delete_flag='0' and 1=1   order by d.sort asc ) a     where  a.row_flg=1
                """' and t.delete_flag='0' and 1=1   order by d.sort asc ) a     where  a.row_flg=1
                          ) b
                  where rownum <= (#{page}*#{size})) a
                  where a.rowno >((#{page}-1)* #{size}) 
                """;

            var totalPerson = 0;

            var list = db.biz_data.camel().select(lastSql22);

            var totalCount = 0;
            for (item in list) {
                item.put("certDutyCode", TagUtils.getTagNameByCode("offiDutyTag", item.get("certDutyCode")))
                if ("undefined".equals(item.get("dutyCode"))&&!"".equals(item.get("certDutyCode"))&&item.get("certDutyCode")!=null){
                    item.put("dutyCode", TagUtils.getTagNameByCode("offiDutyTag", item.get("certDutyCode"))+"(证书职务)")
                }else if("undefined".equals(item.get("dutyCode"))&&("".equals(item.get("certDutyCode"))||item.get("certDutyCode")==null)){
                    item.put("dutyCode", "其他")
                }else{
                    item.put("dutyCode", TagUtils.getTagNameByCode("offiDutyTag", item.get("dutyCode")))
                }
                item.put("certType", TagUtils.getTagNameByCode("certType", item.get("certType")::string))
                //      数据脱敏
                //item.put("_idCardNo", item.get("idCardNo"));
                item.put("_idCardNo", URLEncoder.encode(ZzSecurityHelper.encryptAES(item.get("idCardNo"))) );
                //item.put("url_idCardNo", ZzSecurityHelper.encryptAES(item.get("idCardNo")));
                item.put("idCardNo", DesensitizationUtil.idCardNum(item.get("idCardNo")::string))
                
                item.put("certNo", DesensitizationUtil.isIdCardNo(item.get("certNo")::string))
                if (item.get("mobilePhone") != null && item.get("mobilePhone") != '') {
                    item.put("_mobilePhone", DesensitizationUtil.mobilePhone(item.get("mobilePhone")::string))
                }
                totalCount = item.get("totalCount");
                totalPerson = item.get("totalPerson");
            }
            if (basic == null) {
                basic = {};
            }
            if (list == null) {
                list = [];
            }
            var map;
            basic.totalPerson = totalPerson;
            var back = {
                "flag":flag,
                "basic": basic,
                "list": list,
                "total": Integer.parseInt(totalCount::string),


            }
            return response.json({
                resultCode: 200,
                resultMsg: "查询成功",
                data: back
            });
        } else {
            if (basic == null) {
                basic = {};
            }
            var back = {
                "flag":"",
                "basic": basic,
                "list": [],
                "total": 0
            }
            return response.json({
                resultCode: 200,
                resultMsg: "查询成功",
                data: back
            });
        }
    } else {
        var back = {
            "flag":"",
            "basic": {},
            "list": [],
            "total": 0
        }
        return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            data: back
        });
    }

}else if("查验出港".equals(dyNamicsData.lastActivePortFlag)||"查验进港".equals(dyNamicsData.lastActivePortFlag)){
          
      var cysqlBasic="""
         select
              count(inspet_id) OVER() as total_count,row_number() over(order by e.inspet_id  DESC) as rowno,
            inspet_id,
            insp_type,
      INSP_TYPE_NAME,
       BID_NAME,
       NUM_OF_CREWS,
       PORT_NAME,
       BERTH_NAME,
       DEPART_TIME,
       DESTINATION_PORT,
       NEXT_PORT
                 from sub_biz_data.shp_inspection e where inspet_id='"""+reportId
                 +"""' order by DEPART_TIME desc
      """

      var basic=db.biz_data.camel().selectOne(cysqlBasic);
      var person="""
      select  ID_CARD_NO,total_count,rowno,crew_id,Is_Part_Timejob_Name,CREW_NAME,CERT_POSITION_NAME,COMP_DUTIES_NAME
    from (        
    select  ID_CARD_NO,total_count,rowno,crew_id,Is_Part_Timejob_Name,CREW_NAME,CERT_POSITION_NAME,COMP_DUTIES_NAME
          from (
          select count(crew_id) OVER() as total_count,row_number() over(order by a.crew_id  DESC) as rowno,
          
          a.ID_CARD_NO, a.crew_id,a.Is_Part_Timejob_Name,A.CREW_NAME,A.CERT_POSITION_NAME,A.COMP_DUTIES_NAME from sub_biz_data.shp_insp_crew a  where crew_id='"""+reportId+"""'
          ) b   where rownum <= (#{page}*#{size})) a
              where a.rowno >((#{page}-1)* #{size}) 

      """;
      var list=db.biz_data.camel().select(person)
     
            if (basic == null) {
                basic = {};
            }
            if (list == null) {
                list = [];
            }
            var map;
            var totalCount = 0;
            var totalPerson=0;

            for (item in list) {      
                //item.put("_idCardNo", item.get("idCardNo"))
                item.put("_idCardNo", URLEncoder.encode(ZzSecurityHelper.encryptAES(item.get("idCardNo"))) );
                item.put("idCardNo", DesensitizationUtil.idCardNum(item.get("idCardNo")::string))         
                totalCount = item.get("totalCount");
                totalPerson = item.get("totalCount");
                
            }
            basic.totalPerson = totalPerson;
            var back = {
                "flag":flag,
                "basic": basic,
                "list": list,
                "total": Integer.parseInt(totalCount::string),


            }
            return response.json({
                resultCode: 200,
                resultMsg: "查询成功",
                data: back
            });
  }else{

     var back = {
            "flag":"",
            "basic": {},
            "list": [],
            "total": 0
        }
        return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            data: back
        });
  }