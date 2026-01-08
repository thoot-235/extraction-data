{
  "properties" : { },
  "id" : "e1da1ad5d1d54bf6b171acc47e3fcaff",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "长航信用在船船员",
  "createTime" : null,
  "updateTime" : 1717561438041,
  "lock" : null,
  "createBy" : null,
  "updateBy" : "admin",
  "path" : "/crewOnShip",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipNo",
    "value" : null,
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }, {
    "name" : "shipMmsi",
    "value" : null,
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }, {
    "name" : "shipId",
    "value" : "CN20106432937",
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }, {
    "name" : "shipImo",
    "value" : null,
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }, {
    "name" : "page",
    "value" : "",
    "description" : null,
    "required" : true,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : "1",
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }, {
    "name" : "size",
    "value" : null,
    "description" : null,
    "required" : true,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : "10",
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"flag\": \"1\",\n        \"basic\": {\n            \"reportId\": \"9c349f5f-eadd-4343-966d-1ce648113eda\",\n            \"regShipId\": \"无\",\n            \"shipId\": \"CN20106432937\",\n            \"shipRegNo\": \"350218000149\",\n            \"shipFirstregNo\": \"250110000188\",\n            \"shipInspectNo\": \"2010M2103189\",\n            \"shipNameCn\": \"赣吉安货1378\",\n            \"shipNameEn\": \"GAN JI AN HUO 1378\",\n            \"shipImo\": \"\",\n            \"mmsi\": \"413771368\",\n            \"shipCallsign\": \"\",\n            \"regportCode\": \"3502\",\n            \"flagStateCode\": \"CN\",\n            \"shipRegionType\": \"0\",\n            \"shipTypeCode\": \"0201\",\n            \"shipGrosston\": \"1379\",\n            \"shipNetton\": \"772\",\n            \"shipDwt\": \"2300\",\n            \"mainenginePower\": \"440\",\n            \"shipPassengerNum\": \"\",\n            \"shipLength\": \"72.8\",\n            \"shipBreadth\": \"12.8\",\n            \"shipDepth\": \"4.73\",\n            \"lineCode\": \"1\",\n            \"areaCode\": \"10\",\n            \"constructionDate\": \"2010-06-20 00:00:00\",\n            \"shipOwner\": \"\",\n            \"ownerAddress\": \"\",\n            \"ownerContactPhone\": \"\",\n            \"ownerCorporation\": \"\",\n            \"shipOperator\": \"\",\n            \"operatorAddress\": \"\",\n            \"operatorTelephone\": \"\",\n            \"operatorCorporation\": \"\",\n            \"businessCode\": \"3234312010643293720240603032512\",\n            \"reportNo\": \"CBBG202407678497\",\n            \"orgCode\": \"锦丰海事处\",\n            \"reportPortName\": \"张家港\",\n            \"reportPortCode\": \"323431\",\n            \"arrivalOrLeave\": \"出港\",\n            \"arrivalReportId\": \"09592e16-0889-4a01-a242-6989f092e738\",\n            \"nextPortName\": \"南昌\",\n            \"nextPortCode\": \"364735\",\n            \"reportTime\": \"2024-06-03 03:25:07\",\n            \"bidName\": \"徐国华\",\n            \"mobilePhone\": \"13870093438\",\n            \"expectTime\": \"2024-06-03 08:20:00\",\n            \"ifAnchored\": \"否\",\n            \"draftForward\": \"3.8\",\n            \"aftDraft\": \"3.7\",\n            \"berthCode\": \"0600338\",\n            \"berthName\": \"海力2（原海力钢铁1号2号泊位 ）\",\n            \"otherQuantity\": \"\",\n            \"actualCarryingCapacity\": \"2393\",\n            \"portCargo\": \"2393\",\n            \"realDangerCargo\": \"\",\n            \"portDangerCargo\": \"\",\n            \"actualCapacity\": \"0\",\n            \"portPassenger\": \"0\",\n            \"realVehicle\": \"0\",\n            \"portVehicle\": \"0\",\n            \"numOfBarge\": \"0\",\n            \"portBarge\": \"0\",\n            \"realContainerQay\": \"\",\n            \"portContainerQay\": \"\",\n            \"longitude\": \"\",\n            \"latitude\": \"\",\n            \"ifRevoke\": \"否\",\n            \"voyageReport\": \"0\",\n            \"frequency\": \"1\",\n            \"navigationSection\": \"--\",\n            \"prePortName\": \"\",\n            \"prePortCode\": \"\",\n            \"rownumber\": \"1\",\n            \"offiSources\": \"\",\n            \"_mobilePhone\": \"138****3438\",\n            \"totalPerson\": \"4\"\n        },\n        \"list\": [{\n            \"totalPerson\": \"4\",\n            \"rowno\": \"1\",\n            \"totalCount\": \"4\",\n            \"crewId\": \"19E8B6B48244793EE063700820C65760\",\n            \"reportId\": \"9c349f5f-eadd-4343-966d-1ce648113eda\",\n            \"seqNo\": \"1\",\n            \"createDate\": \"2024-06-03 03:25:07\",\n            \"idCardNo\": \"3404**********021X\",\n            \"name\": \"陈学宽\",\n            \"dutyCode\": \"水手\",\n            \"certType\": \"5\",\n            \"certNo\": \"3404**********021X\",\n            \"certLevelCode\": \"N00\",\n            \"certDutyCode\": \"普通船员（内河船舶船员）\",\n            \"compDutiesName\": \"水手\",\n            \"rowFlg\": \"1\",\n            \"_idCardNo\": \"34040419650330021X\"\n        }, {\n            \"totalPerson\": \"4\",\n            \"rowno\": \"2\",\n            \"totalCount\": \"4\",\n            \"crewId\": \"19E8B6B4824A793EE063700820C65760\",\n            \"reportId\": \"9c349f5f-eadd-4343-966d-1ce648113eda\",\n            \"seqNo\": \"4\",\n            \"createDate\": \"2024-06-03 03:25:07\",\n            \"idCardNo\": \"3625**********0240\",\n            \"name\": \"饶水娥\",\n            \"dutyCode\": \"轮机长\",\n            \"certType\": \"内河证书\",\n            \"certNo\": \"3625**********0240\",\n            \"certLevelCode\": \"N21\",\n            \"certDutyCode\": \"轮机长\",\n            \"compDutiesName\": \"\",\n            \"rowFlg\": \"1\",\n            \"_idCardNo\": \"362502197403080240\"\n        }, {\n            \"totalPerson\": \"4\",\n            \"rowno\": \"3\",\n            \"totalCount\": \"4\",\n            \"crewId\": \"19E8B6B48246793EE063700820C65760\",\n            \"reportId\": \"9c349f5f-eadd-4343-966d-1ce648113eda\",\n            \"seqNo\": \"2\",\n            \"createDate\": \"2024-06-03 03:25:07\",\n            \"idCardNo\": \"3625**********581X\",\n            \"name\": \"徐国华\",\n            \"dutyCode\": \"船长\",\n            \"certType\": \"内河证书\",\n            \"certNo\": \"3625**********581X\",\n            \"certLevelCode\": \"N11\",\n            \"certDutyCode\": \"船长\",\n            \"compDutiesName\": \"\",\n            \"rowFlg\": \"1\",\n            \"_idCardNo\": \"36250119700302581X\"\n        }, {\n            \"totalPerson\": \"4\",\n            \"rowno\": \"4\",\n            \"totalCount\": \"4\",\n            \"crewId\": \"19E8B6B48248793EE063700820C65760\",\n            \"reportId\": \"9c349f5f-eadd-4343-966d-1ce648113eda\",\n            \"seqNo\": \"3\",\n            \"createDate\": \"2024-06-03 03:25:07\",\n            \"idCardNo\": \"3625**********0233\",\n            \"name\": \"徐振海\",\n            \"dutyCode\": \"二副\",\n            \"certType\": \"内河证书\",\n            \"certNo\": \"3625**********0233\",\n            \"certLevelCode\": \"N11\",\n            \"certDutyCode\": \"二副\",\n            \"compDutiesName\": \"\",\n            \"rowFlg\": \"1\",\n            \"_idCardNo\": \"362502199412080233\"\n        }],\n        \"total\": 4\n    }\n}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : {
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
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "flag",
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
          "value" : "9c349f5f-eadd-4343-966d-1ce648113eda",
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
          "value" : "CN20106432937",
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
          "value" : "350218000149",
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
          "value" : "250110000188",
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
          "value" : "2010M2103189",
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
          "value" : "赣吉安货1378",
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
          "value" : "GAN JI AN HUO 1378",
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
          "value" : "413771368",
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
          "value" : "3502",
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
          "value" : "1379",
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
          "value" : "772",
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
          "value" : "2300",
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
          "value" : "440",
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
          "value" : "72.8",
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
          "value" : "12.8",
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
          "value" : "4.73",
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
          "value" : "2010-06-20 00:00:00",
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
          "value" : "3234312010643293720240603032512",
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
          "value" : "CBBG202407678497",
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
          "value" : "锦丰海事处",
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
          "value" : "张家港",
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
          "value" : "323431",
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
          "value" : "09592e16-0889-4a01-a242-6989f092e738",
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
          "value" : "南昌",
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
          "value" : "364735",
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
          "value" : "2024-06-03 03:25:07",
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
          "value" : "徐国华",
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
          "value" : "13870093438",
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
          "value" : "2024-06-03 08:20:00",
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
          "value" : "3.8",
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
          "value" : "3.7",
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
          "value" : "0600338",
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
          "value" : "海力2（原海力钢铁1号2号泊位 ）",
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
          "value" : "2393",
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
          "value" : "2393",
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
          "value" : "138****3438",
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
          "value" : "4",
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
            "value" : "4",
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
            "value" : "4",
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
            "value" : "19E8B6B48244793EE063700820C65760",
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
            "value" : "9c349f5f-eadd-4343-966d-1ce648113eda",
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
            "name" : "createDate",
            "value" : "2024-06-03 03:25:07",
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
            "value" : "3404**********021X",
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
            "value" : "陈学宽",
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
            "value" : "水手",
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
            "name" : "certNo",
            "value" : "3404**********021X",
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
            "value" : "N00",
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
            "value" : "普通船员（内河船舶船员）",
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
            "value" : "水手",
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
            "value" : "34040419650330021X",
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
        "value" : "4",
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
import org.springblade.common.utils.ZzSecurityHelper
//import java.net.URLEncoder


//查询最新一条数据是船舶进出港，还是进出口查验
var flag = ""; //报告出口 1，报告进口 2，查验出口3，查验进口4
import response;
var reportId = """""";
var selSql = """ """;
if ((shipNo == null || shipNo == '') && (shipMmsi == null || shipMmsi == '') && (shipId == null || shipId == '') && (shipImo == null || shipImo == '')) {
    var back = {
        "flag": "",
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


var sqlFirst = """
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

var dyNamicsData = db.biz_data.camel().selectOne(sqlFirst + selSql);




if (dyNamicsData == null || dyNamicsData == '' || dyNamicsData.lastActivePortFlag == null || dyNamicsData.lastActivePortFlag == '') {
    var back = {
        "flag": "",
        "basic": {},
        "list": [],
        "total": 0
    }
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        data: back
    });
} else if ("报告出港".equals(dyNamicsData.lastActivePortFlag)) {
    reportId = dyNamicsData.reportIdOut;
    flag = "1";
} else if ("报告进港".equals(dyNamicsData.lastActivePortFlag)) {
    reportId = dyNamicsData.reportIdIn;
    flag = "2";
} else if ("查验出港".equals(dyNamicsData.lastActivePortFlag)) {
    reportId = dyNamicsData.inspectIdOut;
    flag = "3";
} else if ("查验进港".equals(dyNamicsData.lastActivePortFlag)) {
    reportId = dyNamicsData.inspectIdIn;
    flag = "4";
}




if ("报告出港".equals(dyNamicsData.lastActivePortFlag) || "报告进港".equals(dyNamicsData.lastActivePortFlag)) { //如果是进出港报告
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
          and REPORT_ID='""" + reportId + """' 
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
                item.put("_idCardNo", item.get("idCardNo"));
                //item.put("_idCardNo", URLEncoder.encode(ZzSecurityHelper.encryptAES(item.get("idCardNo"))));
                //item.put("_idCardNo", ZzSecurityHelper.encryptAES(item.get("idCardNo")));
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
                "flag": flag,
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
                "flag": "",
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
            "flag": "",
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

} else if ("查验出港".equals(dyNamicsData.lastActivePortFlag) || "查验进港".equals(dyNamicsData.lastActivePortFlag)) {

    var cysqlBasic = """
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
                 from sub_biz_data.shp_inspection e where inspet_id='""" + reportId +
        """' order by DEPART_TIME desc
      """

    var basic = db.biz_data.camel().selectOne(cysqlBasic);
    var person = """
      select  ID_CARD_NO,total_count,rowno,crew_id,Is_Part_Timejob_Name,CREW_NAME,CERT_POSITION_NAME,COMP_DUTIES_NAME
    from (        
    select  ID_CARD_NO,total_count,rowno,crew_id,Is_Part_Timejob_Name,CREW_NAME,CERT_POSITION_NAME,COMP_DUTIES_NAME
          from (
          select count(crew_id) OVER() as total_count,row_number() over(order by a.crew_id  DESC) as rowno,
          
          a.ID_CARD_NO, a.crew_id,a.Is_Part_Timejob_Name,A.CREW_NAME,A.CERT_POSITION_NAME,A.COMP_DUTIES_NAME from sub_biz_data.shp_insp_crew a  where crew_id='""" + reportId + """'
          ) b   where rownum <= (#{page}*#{size})) a
              where a.rowno >((#{page}-1)* #{size}) 

      """;
    var list = db.biz_data.camel().select(person)

    if (basic == null) {
        basic = {};
    }
    if (list == null) {
        list = [];
    }
    var map;
    var totalCount = 0;
    var totalPerson = 0;

    for (item in list) {
        item.put("_idCardNo", item.get("idCardNo"))
        //item.put("_idCardNo", URLEncoder.encode(ZzSecurityHelper.encryptAES(item.get("idCardNo"))));
        //item.put("_idCardNo", ZzSecurityHelper.encryptAES(item.get("idCardNo")));
        item.put("idCardNo", DesensitizationUtil.idCardNum(item.get("idCardNo")::string));
        
        totalCount = item.get("totalCount");
        totalPerson = item.get("totalCount");

    }
    basic.totalPerson = totalPerson;
    var back = {
        "flag": flag,
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

    var back = {
        "flag": "",
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