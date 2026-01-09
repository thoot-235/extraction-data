{
  "properties" : { },
  "id" : "0d3b3a9f17154151a171584412f98e9f",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "在船船员船舶进出港报告",
  "createTime" : null,
  "updateTime" : 1744360760282,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/listCrewOnBoard",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipId",
    "value" : "CN20096414354",
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
    "name" : "time",
    "value" : "2025-04-05",
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
    "dataType" : "Integer",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "size",
    "value" : "1",
    "description" : "",
    "required" : true,
    "dataType" : "Integer",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"basic\": {\n            \"reportId\": \"6da2b78a-9be4-4199-8d5e-917277f90d61\",\n            \"regShipId\": \"无\",\n            \"shipId\": \"CN20096414354\",\n            \"shipRegNo\": \"271109000133\",\n            \"shipFirstregNo\": \"271109000133\",\n            \"shipInspectNo\": \"2009R2194724\",\n            \"shipNameCn\": \"通达机188\",\n            \"shipNameEn\": \"TONG DA JI 188\",\n            \"shipImo\": \"\",\n            \"mmsi\": \"413760655\",\n            \"shipCallsign\": \"\",\n            \"regportCode\": \"0603\",\n            \"flagStateCode\": \"CN\",\n            \"shipRegionType\": \"0\",\n            \"shipTypeCode\": \"0201\",\n            \"shipGrosston\": \"291\",\n            \"shipNetton\": \"162\",\n            \"shipDwt\": \"490\",\n            \"mainenginePower\": \"136\",\n            \"shipPassengerNum\": \"\",\n            \"shipLength\": \"45\",\n            \"shipBreadth\": \"7.8\",\n            \"shipDepth\": \"3\",\n            \"lineCode\": \"1\",\n            \"areaCode\": \"10\",\n            \"constructionDate\": \"2009-12-01 00:00:00\",\n            \"shipOwner\": \"\",\n            \"ownerAddress\": \"\",\n            \"ownerContactPhone\": \"\",\n            \"ownerCorporation\": \"\",\n            \"shipOperator\": \"\",\n            \"operatorAddress\": \"\",\n            \"operatorTelephone\": \"\",\n            \"operatorCorporation\": \"\",\n            \"businessCode\": \"3234232009641435420250404201810\",\n            \"reportNo\": \"CBBG202504610721\",\n            \"orgCode\": \"黄田港海事处\",\n            \"reportPortName\": \"江阴\",\n            \"reportPortCode\": \"323423\",\n            \"arrivalOrLeave\": \"出港\",\n            \"arrivalReportId\": \"fdc13a8f-42b6-4cce-9366-cf95978859b8\",\n            \"nextPortName\": \"常州内河港市区港区\",\n            \"nextPortCode\": \"991772\",\n            \"reportTime\": \"2025-04-04 20:18:47\",\n            \"bidName\": \"戴文明\",\n            \"mobilePhone\": \"18061050388\",\n            \"expectTime\": \"2025-04-04 20:54:00\",\n            \"ifAnchored\": \"否\",\n            \"draftForward\": \"2.5\",\n            \"aftDraft\": \"2.6\",\n            \"berthCode\": \"0601656\",\n            \"berthName\": \"江阴港大澄6号码头1#\",\n            \"otherQuantity\": \"\",\n            \"actualCarryingCapacity\": \"590\",\n            \"portCargo\": \"586\",\n            \"realDangerCargo\": \"\",\n            \"portDangerCargo\": \"\",\n            \"actualCapacity\": \"0\",\n            \"portPassenger\": \"0\",\n            \"realVehicle\": \"0\",\n            \"portVehicle\": \"0\",\n            \"numOfBarge\": \"0\",\n            \"portBarge\": \"0\",\n            \"realContainerQay\": \"\",\n            \"portContainerQay\": \"\",\n            \"longitude\": \"\",\n            \"latitude\": \"\",\n            \"ifRevoke\": \"否\",\n            \"voyageReport\": \"0\",\n            \"frequency\": \"1\",\n            \"navigationSection\": \"--\",\n            \"prePortName\": \"\",\n            \"prePortCode\": \"\",\n            \"rownumber\": \"1\",\n            \"offiSources\": \"\",\n            \"_mobilePhone\": \"180****0388\",\n            \"totalPerson\": \"2\"\n        },\n        \"list\": [{\n            \"totalPerson\": \"2\",\n            \"rowno\": \"1\",\n            \"totalCount\": \"5\",\n            \"crewId\": \"3096E2E1E02AA97EE063710820C6ACD8\",\n            \"reportId\": \"6da2b78a-9be4-4199-8d5e-917277f90d61\",\n            \"seqNo\": \"5\",\n            \"createDate\": \"2025-04-04 20:20:21\",\n            \"idCardNo\": \"321***********686\",\n            \"name\": \"彭汉琴\",\n            \"dutyCode\": \"轮机长\",\n            \"certType\": \"内河证书\",\n            \"certNo\": \"321***********686\",\n            \"certLevelCode\": \"N23\",\n            \"certDutyCode\": \"轮机长\",\n            \"compDutiesName\": \"\",\n            \"rowFlg\": \"1\",\n            \"_idCardNo\": \"321281198607195686\"\n        }],\n        \"total\": 5\n    }\n}",
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
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "basic",
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
          "name" : "reportId",
          "value" : "6da2b78a-9be4-4199-8d5e-917277f90d61",
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
          "name" : "regShipId",
          "value" : "无",
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
          "value" : "CN20096414354",
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
          "name" : "shipRegNo",
          "value" : "271109000133",
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
          "name" : "shipFirstregNo",
          "value" : "271109000133",
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
          "name" : "shipInspectNo",
          "value" : "2009R2194724",
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
          "value" : "通达机188",
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
          "value" : "TONG DA JI 188",
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
          "name" : "mmsi",
          "value" : "413760655",
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
          "name" : "shipCallsign",
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
          "name" : "regportCode",
          "value" : "0603",
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
          "name" : "flagStateCode",
          "value" : "CN",
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
          "name" : "shipRegionType",
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
          "name" : "shipTypeCode",
          "value" : "0201",
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
          "value" : "291",
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
          "name" : "shipNetton",
          "value" : "162",
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
          "name" : "shipDwt",
          "value" : "490",
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
          "name" : "mainenginePower",
          "value" : "136",
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
          "name" : "shipPassengerNum",
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
          "name" : "shipLength",
          "value" : "45",
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
          "value" : "7.8",
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
          "value" : "3",
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
          "name" : "lineCode",
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
          "name" : "areaCode",
          "value" : "10",
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
          "name" : "constructionDate",
          "value" : "2009-12-01 00:00:00",
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
          "name" : "shipOwner",
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
          "name" : "ownerAddress",
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
          "name" : "ownerContactPhone",
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
          "name" : "ownerCorporation",
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
          "name" : "shipOperator",
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
          "name" : "operatorAddress",
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
          "name" : "operatorTelephone",
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
          "name" : "operatorCorporation",
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
          "name" : "businessCode",
          "value" : "3234232009641435420250404201810",
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
          "name" : "reportNo",
          "value" : "CBBG202504610721",
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
          "name" : "orgCode",
          "value" : "黄田港海事处",
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
          "name" : "reportPortName",
          "value" : "江阴",
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
          "name" : "reportPortCode",
          "value" : "323423",
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
          "name" : "arrivalOrLeave",
          "value" : "出港",
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
          "name" : "arrivalReportId",
          "value" : "fdc13a8f-42b6-4cce-9366-cf95978859b8",
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
          "name" : "nextPortName",
          "value" : "常州内河港市区港区",
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
          "name" : "nextPortCode",
          "value" : "991772",
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
          "name" : "reportTime",
          "value" : "2025-04-04 20:18:47",
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
          "name" : "bidName",
          "value" : "戴文明",
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
          "name" : "mobilePhone",
          "value" : "18061050388",
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
          "name" : "expectTime",
          "value" : "2025-04-04 20:54:00",
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
          "name" : "ifAnchored",
          "value" : "否",
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
          "value" : "2.5",
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
          "value" : "2.6",
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
          "name" : "berthCode",
          "value" : "0601656",
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
          "value" : "江阴港大澄6号码头1#",
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
          "name" : "otherQuantity",
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
          "value" : "590",
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
          "name" : "portCargo",
          "value" : "586",
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
          "name" : "portDangerCargo",
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
          "name" : "portPassenger",
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
          "name" : "portVehicle",
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
          "name" : "numOfBarge",
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
          "name" : "portBarge",
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
          "name" : "realContainerQay",
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
          "name" : "portContainerQay",
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
          "name" : "longitude",
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
          "name" : "latitude",
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
          "name" : "ifRevoke",
          "value" : "否",
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
          "name" : "voyageReport",
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
          "name" : "frequency",
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
          "name" : "navigationSection",
          "value" : "--",
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
          "name" : "prePortName",
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
          "name" : "prePortCode",
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
          "name" : "rownumber",
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
          "name" : "offiSources",
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
          "name" : "_mobilePhone",
          "value" : "180****0388",
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
          "name" : "totalPerson",
          "value" : "2",
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
            "name" : "totalPerson",
            "value" : "2",
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
            "name" : "totalCount",
            "value" : "5",
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
            "name" : "crewId",
            "value" : "3096E2E1E02AA97EE063710820C6ACD8",
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
            "name" : "reportId",
            "value" : "6da2b78a-9be4-4199-8d5e-917277f90d61",
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
            "name" : "seqNo",
            "value" : "5",
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
            "name" : "createDate",
            "value" : "2025-04-04 20:20:21",
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
            "name" : "idCardNo",
            "value" : "321***********686",
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
            "name" : "name",
            "value" : "彭汉琴",
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
            "name" : "dutyCode",
            "value" : "轮机长",
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
            "name" : "certType",
            "value" : "内河证书",
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
            "name" : "certNo",
            "value" : "321***********686",
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
            "name" : "certLevelCode",
            "value" : "N23",
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
            "name" : "certDutyCode",
            "value" : "轮机长",
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
            "name" : "compDutiesName",
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
            "name" : "rowFlg",
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
            "name" : "_idCardNo",
            "value" : "321281198607195686",
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
        "name" : "total",
        "value" : "5",
        "description" : "",
        "required" : false,
        "dataType" : "Integer",
        "type" : null,
        "defaultValue" : null,
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
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
import 'java.util.stream.Collectors' as Collectors;

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
       and ship_id=#{shipId}  
       and delete_flag='0'
       and report_time<=to_date(#{time} ,'yyyy-MM-dd')  order by report_time desc         
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
import response;
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
            ,  comp_duties_name, row_flg,total_person from (select distinct count(ID_CARD_NO) over() total_count, count(distinct ID_CARD_NO) over() total_person,T.CREW_ID,T.REPORT_ID,T.SEQ_NO,T.CREATE_DATE,T.ID_CARD_NO,T.NAME,T.DUTY_CODE,T.CERT_TYPE,
T.CERT_NO,T.CERT_LEVEL_CODE,T.CERT_DUTY_CODE 
            , d.item_name_cn comp_duties_name
            , row_number() OVER(PARTITION BY T.ID_CARD_NO ORDER BY T.CREATE_DATE desc) as row_flg  ,d.sort
              from RPT_ON_SHIP_CREW_REC T 
              left join dict_data.D_CB_AQJD_CERT_DUTY d 
               on T.duty_code = d.code 
             where T.report_id = '""" +
            reportId +
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
            item.put("dutyCode", TagUtils.getTagNameByCode("offiDutyTag", item.get("dutyCode")))
            item.put("certType", TagUtils.getTagNameByCode("certType", item.get("certType")::string))
            //      数据脱敏
            item.put("_idCardNo", item.get("idCardNo"))
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
            "basic": basic,
            "list": [],
            "total": 0
        }
        return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            result: back
        });
    }
} else {
    var back = {
        "basic": {},
        "list": [],
        "total": 0
    }
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: back
    });
}