{
  "properties" : { },
  "id" : "8fab854e62104c76b8308ea58b1a2173",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "查询船舶在船船员",
  "createTime" : null,
  "updateTime" : 1744598597173,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getCrewOnShip",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipNo",
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
    "name" : "shipMmsi",
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
    "name" : "shipId",
    "value" : "CN20205139973",
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
    "name" : "page",
    "value" : "",
    "description" : "",
    "required" : true,
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
    "required" : true,
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"flag\": \"2\",\n        \"basic\": {\n            \"reportId\": \"c58b2004-e55a-48c3-a35f-08fb76ae95fa\",\n            \"regShipId\": \"无\",\n            \"shipId\": \"CN20205139973\",\n            \"shipRegNo\": \"120521000032\",\n            \"shipFirstregNo\": \"120521000032\",\n            \"shipInspectNo\": \"2021C4300101\",\n            \"shipNameCn\": \"亚东515\",\n            \"shipNameEn\": \"YA DONG 515\",\n            \"shipImo\": \"\",\n            \"mmsi\": \"413858541\",\n            \"shipCallsign\": \"\",\n            \"regportCode\": \"3301\",\n            \"flagStateCode\": \"CN\",\n            \"shipRegionType\": \"0\",\n            \"shipTypeCode\": \"0203\",\n            \"shipGrosston\": \"2963\",\n            \"shipNetton\": \"1659\",\n            \"shipDwt\": \"5951\",\n            \"mainenginePower\": \"1800\",\n            \"shipPassengerNum\": \"\",\n            \"shipLength\": \"104.88\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"5.3\",\n            \"lineCode\": \"1\",\n            \"areaCode\": \"16\",\n            \"constructionDate\": \"2021-03-11 00:00:00\",\n            \"shipOwner\": \"\",\n            \"ownerAddress\": \"\",\n            \"ownerContactPhone\": \"\",\n            \"ownerCorporation\": \"\",\n            \"shipOperator\": \"\",\n            \"operatorAddress\": \"\",\n            \"operatorTelephone\": \"\",\n            \"operatorCorporation\": \"\",\n            \"businessCode\": \"9915632020513997320250409162809\",\n            \"reportNo\": \"CBBG202504899137\",\n            \"orgCode\": \"重庆巴南海事处\",\n            \"reportPortName\": \"巴南\",\n            \"reportPortCode\": \"991563\",\n            \"arrivalOrLeave\": \"进港\",\n            \"arrivalReportId\": \"\",\n            \"nextPortName\": \"\",\n            \"nextPortCode\": \"\",\n            \"reportTime\": \"2025-04-09 16:28:29\",\n            \"bidName\": \"董晶晶\",\n            \"mobilePhone\": \"18671734661\",\n            \"expectTime\": \"2025-04-09 21:28:00\",\n            \"ifAnchored\": \"否\",\n            \"draftForward\": \"0.8\",\n            \"aftDraft\": \"2.4\",\n            \"berthCode\": \"1203019\",\n            \"berthName\": \"长江重庆巴南珞璜港5号泊位\",\n            \"otherQuantity\": \"\",\n            \"actualCarryingCapacity\": \"\",\n            \"portCargo\": \"\",\n            \"realDangerCargo\": \"\",\n            \"portDangerCargo\": \"\",\n            \"actualCapacity\": \"0\",\n            \"portPassenger\": \"0\",\n            \"realVehicle\": \"0\",\n            \"portVehicle\": \"0\",\n            \"numOfBarge\": \"0\",\n            \"portBarge\": \"0\",\n            \"realContainerQay\": \"\",\n            \"portContainerQay\": \"\",\n            \"longitude\": \"\",\n            \"latitude\": \"\",\n            \"ifRevoke\": \"否\",\n            \"voyageReport\": \"0\",\n            \"frequency\": \"1\",\n            \"navigationSection\": \"--\",\n            \"prePortName\": \"重庆\",\n            \"prePortCode\": \"503131\",\n            \"rownumber\": \"1\",\n            \"offiSources\": \"\",\n            \"_mobilePhone\": \"186****4661\",\n            \"totalPerson\": \"8\"\n        },\n        \"list\": [{\n            \"totalPerson\": \"8\",\n            \"rowno\": \"1\",\n            \"totalCount\": \"8\",\n            \"crewId\": \"30949DCB8654BD41E063700820C6D2CC\",\n            \"reportId\": \"c58b2004-e55a-48c3-a35f-08fb76ae95fa\",\n            \"seqNo\": \"2\",\n            \"createDate\": \"2025-04-09 16:30:44\",\n            \"idCardNo\": \"422***********636\",\n            \"name\": \"郑国\",\n            \"dutyCode\": \"水手\",\n            \"certType\": \"5\",\n            \"certNo\": \"422***********636\",\n            \"certLevelCode\": \"N00\",\n            \"certDutyCode\": \"普通船员（内河船舶船员）\",\n            \"compDutiesName\": \"水手\",\n            \"rowFlg\": \"1\",\n            \"_idCardNo\": \"Iht0bxKSxHm6U6ySqjIeEL/4rPaE6Lifk8TSShvCRa0=\"\n        }, {\n            \"totalPerson\": \"8\",\n            \"rowno\": \"2\",\n            \"totalCount\": \"8\",\n            \"crewId\": \"30949DCB8656BD41E063700820C6D2CC\",\n            \"reportId\": \"c58b2004-e55a-48c3-a35f-08fb76ae95fa\",\n            \"seqNo\": \"3\",\n            \"createDate\": \"2025-04-09 16:30:44\",\n            \"idCardNo\": \"422***********051\",\n            \"name\": \"许虎蓉\",\n            \"dutyCode\": \"机工\",\n            \"certType\": \"内河证书\",\n            \"certNo\": \"422***********051\",\n            \"certLevelCode\": \"N00\",\n            \"certDutyCode\": \"普通船员（内河船舶船员）\",\n            \"compDutiesName\": \"机工\",\n            \"rowFlg\": \"1\",\n            \"_idCardNo\": \"uoFSJi/BOINIuZib0A6FSz5xDv+17apqeOYovtFIkLw=\"\n        }, {\n            \"totalPerson\": \"8\",\n            \"rowno\": \"3\",\n            \"totalCount\": \"8\",\n            \"crewId\": \"30949DCB8660BD41E063700820C6D2CC\",\n            \"reportId\": \"c58b2004-e55a-48c3-a35f-08fb76ae95fa\",\n            \"seqNo\": \"8\",\n            \"createDate\": \"2025-04-09 16:30:44\",\n            \"idCardNo\": \"422***********013\",\n            \"name\": \"鲜于万春\",\n            \"dutyCode\": \"轮机长\",\n            \"certType\": \"内河证书\",\n            \"certNo\": \"422***********013\",\n            \"certLevelCode\": \"N21\",\n            \"certDutyCode\": \"轮机长\",\n            \"compDutiesName\": \"\",\n            \"rowFlg\": \"1\",\n            \"_idCardNo\": \"UGpj/yeSJ7c5W7HDLNRDv49Wk9FNO51OGqKphCFhbho=\"\n        }, {\n            \"totalPerson\": \"8\",\n            \"rowno\": \"4\",\n            \"totalCount\": \"8\",\n            \"crewId\": \"30949DCB865ABD41E063700820C6D2CC\",\n            \"reportId\": \"c58b2004-e55a-48c3-a35f-08fb76ae95fa\",\n            \"seqNo\": \"5\",\n            \"createDate\": \"2025-04-09 16:30:44\",\n            \"idCardNo\": \"422***********419\",\n            \"name\": \"郑庆华\",\n            \"dutyCode\": \"船长\",\n            \"certType\": \"7\",\n            \"certNo\": \"422***********419\",\n            \"certLevelCode\": \"N11\",\n            \"certDutyCode\": \"船长\",\n            \"compDutiesName\": \"\",\n            \"rowFlg\": \"1\",\n            \"_idCardNo\": \"FofGxNth1yh0YHGkTUUNx6oKYOfDDyCChcpw6iqoQJ0=\"\n        }, {\n            \"totalPerson\": \"8\",\n            \"rowno\": \"5\",\n            \"totalCount\": \"8\",\n            \"crewId\": \"30949DCB865CBD41E063700820C6D2CC\",\n            \"reportId\": \"c58b2004-e55a-48c3-a35f-08fb76ae95fa\",\n            \"seqNo\": \"6\",\n            \"createDate\": \"2025-04-09 16:30:44\",\n            \"idCardNo\": \"422***********018\",\n            \"name\": \"吕学东\",\n            \"dutyCode\": \"大副\",\n            \"certType\": \"7\",\n            \"certNo\": \"422***********018\",\n            \"certLevelCode\": \"N11\",\n            \"certDutyCode\": \"船长\",\n            \"compDutiesName\": \"\",\n            \"rowFlg\": \"1\",\n            \"_idCardNo\": \"SoBqR13kL0hCQZbxuhOD/4lnAtG1Zw4EOnhFxMKdtb4=\"\n        }, {\n            \"totalPerson\": \"8\",\n            \"rowno\": \"6\",\n            \"totalCount\": \"8\",\n            \"crewId\": \"30949DCB8658BD41E063700820C6D2CC\",\n            \"reportId\": \"c58b2004-e55a-48c3-a35f-08fb76ae95fa\",\n            \"seqNo\": \"4\",\n            \"createDate\": \"2025-04-09 16:30:44\",\n            \"idCardNo\": \"512***********631\",\n            \"name\": \"况苏\",\n            \"dutyCode\": \"船长\",\n            \"certType\": \"7\",\n            \"certNo\": \"512***********631\",\n            \"certLevelCode\": \"N11\",\n            \"certDutyCode\": \"船长\",\n            \"compDutiesName\": \"\",\n            \"rowFlg\": \"1\",\n            \"_idCardNo\": \"zxmrufrgDwGAbRxtIwI9BWXvWbleh/Ghg3GIz06m49w=\"\n        }, {\n            \"totalPerson\": \"8\",\n            \"rowno\": \"7\",\n            \"totalCount\": \"8\",\n            \"crewId\": \"30949DCB865EBD41E063700820C6D2CC\",\n            \"reportId\": \"c58b2004-e55a-48c3-a35f-08fb76ae95fa\",\n            \"seqNo\": \"7\",\n            \"createDate\": \"2025-04-09 16:30:44\",\n            \"idCardNo\": \"420***********235\",\n            \"name\": \"董晶晶\",\n            \"dutyCode\": \"大副\",\n            \"certType\": \"内河证书\",\n            \"certNo\": \"420***********235\",\n            \"certLevelCode\": \"N11\",\n            \"certDutyCode\": \"船长\",\n            \"compDutiesName\": \"\",\n            \"rowFlg\": \"1\",\n            \"_idCardNo\": \"zrQB/HTXoYUUT9X2XFvoujmDvDoDcj09es1NtpKYH2c=\"\n        }, {\n            \"totalPerson\": \"8\",\n            \"rowno\": \"8\",\n            \"totalCount\": \"8\",\n            \"crewId\": \"30949DCB8662BD41E063700820C6D2CC\",\n            \"reportId\": \"c58b2004-e55a-48c3-a35f-08fb76ae95fa\",\n            \"seqNo\": \"9\",\n            \"createDate\": \"2025-04-09 16:30:44\",\n            \"idCardNo\": \"420***********510\",\n            \"name\": \"徐超\",\n            \"dutyCode\": \"大管轮\",\n            \"certType\": \"7\",\n            \"certNo\": \"420***********510\",\n            \"certLevelCode\": \"N21\",\n            \"certDutyCode\": \"轮机长\",\n            \"compDutiesName\": \"\",\n            \"rowFlg\": \"1\",\n            \"_idCardNo\": \"XtvcR5RPIdeT246KII+U+LYNoIuS+cpFm5Zoq4qQuYY=\"\n        }],\n        \"total\": 8\n    }\n}",
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
        "name" : "flag",
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
        "name" : "basic",
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
          "name" : "reportId",
          "value" : "c58b2004-e55a-48c3-a35f-08fb76ae95fa",
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
          "name" : "regShipId",
          "value" : "无",
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
          "value" : "CN20205139973",
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
          "name" : "shipRegNo",
          "value" : "120521000032",
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
          "name" : "shipFirstregNo",
          "value" : "120521000032",
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
          "name" : "shipInspectNo",
          "value" : "2021C4300101",
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
          "value" : "亚东515",
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
          "value" : "YA DONG 515",
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
          "name" : "mmsi",
          "value" : "413858541",
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
          "name" : "shipCallsign",
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
          "name" : "regportCode",
          "value" : "3301",
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
          "name" : "flagStateCode",
          "value" : "CN",
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
          "name" : "shipRegionType",
          "value" : "0",
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
          "name" : "shipTypeCode",
          "value" : "0203",
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
          "value" : "2963",
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
          "name" : "shipNetton",
          "value" : "1659",
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
          "name" : "shipDwt",
          "value" : "5951",
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
          "name" : "mainenginePower",
          "value" : "1800",
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
          "name" : "shipPassengerNum",
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
          "name" : "shipLength",
          "value" : "104.88",
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
          "value" : "16.2",
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
          "name" : "lineCode",
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
          "name" : "areaCode",
          "value" : "16",
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
          "name" : "constructionDate",
          "value" : "2021-03-11 00:00:00",
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
          "name" : "shipOwner",
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
          "name" : "ownerAddress",
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
          "name" : "ownerContactPhone",
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
          "name" : "ownerCorporation",
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
          "name" : "shipOperator",
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
          "name" : "operatorAddress",
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
          "name" : "operatorTelephone",
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
          "name" : "operatorCorporation",
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
          "name" : "businessCode",
          "value" : "9915632020513997320250409162809",
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
          "name" : "reportNo",
          "value" : "CBBG202504899137",
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
          "name" : "orgCode",
          "value" : "重庆巴南海事处",
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
          "name" : "reportPortName",
          "value" : "巴南",
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
          "name" : "reportPortCode",
          "value" : "991563",
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
          "name" : "arrivalOrLeave",
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
          "name" : "arrivalReportId",
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
          "name" : "nextPortName",
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
          "name" : "nextPortCode",
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
          "name" : "reportTime",
          "value" : "2025-04-09 16:28:29",
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
          "name" : "bidName",
          "value" : "董晶晶",
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
          "name" : "mobilePhone",
          "value" : "18671734661",
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
          "name" : "expectTime",
          "value" : "2025-04-09 21:28:00",
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
          "name" : "ifAnchored",
          "value" : "否",
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
          "value" : "0.8",
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
          "value" : "2.4",
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
          "name" : "berthCode",
          "value" : "1203019",
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
          "value" : "长江重庆巴南珞璜港5号泊位",
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
          "name" : "otherQuantity",
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
          "name" : "actualCarryingCapacity",
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
          "name" : "portCargo",
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
          "name" : "portDangerCargo",
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
          "name" : "actualCapacity",
          "value" : "0",
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
          "name" : "portPassenger",
          "value" : "0",
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
          "value" : "0",
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
          "name" : "portVehicle",
          "value" : "0",
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
          "name" : "numOfBarge",
          "value" : "0",
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
          "name" : "portBarge",
          "value" : "0",
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
          "name" : "portContainerQay",
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
          "name" : "longitude",
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
          "name" : "latitude",
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
          "name" : "ifRevoke",
          "value" : "否",
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
          "name" : "voyageReport",
          "value" : "0",
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
          "name" : "frequency",
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
          "name" : "navigationSection",
          "value" : "--",
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
          "name" : "prePortName",
          "value" : "重庆",
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
          "name" : "prePortCode",
          "value" : "503131",
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
          "name" : "rownumber",
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
          "name" : "offiSources",
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
          "name" : "_mobilePhone",
          "value" : "186****4661",
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
          "name" : "totalPerson",
          "value" : "8",
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
      }, {
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
            "name" : "totalPerson",
            "value" : "8",
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
            "name" : "totalCount",
            "value" : "8",
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
            "name" : "crewId",
            "value" : "30949DCB8654BD41E063700820C6D2CC",
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
            "name" : "reportId",
            "value" : "c58b2004-e55a-48c3-a35f-08fb76ae95fa",
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
            "name" : "seqNo",
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
            "name" : "createDate",
            "value" : "2025-04-09 16:30:44",
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
            "name" : "idCardNo",
            "value" : "422***********636",
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
            "name" : "name",
            "value" : "郑国",
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
            "name" : "dutyCode",
            "value" : "水手",
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
            "name" : "certType",
            "value" : "5",
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
            "name" : "certNo",
            "value" : "422***********636",
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
            "name" : "certLevelCode",
            "value" : "N00",
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
            "name" : "certDutyCode",
            "value" : "普通船员（内河船舶船员）",
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
            "name" : "compDutiesName",
            "value" : "水手",
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
            "name" : "rowFlg",
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
            "name" : "_idCardNo",
            "value" : "Iht0bxKSxHm6U6ySqjIeEL/4rPaE6Lifk8TSShvCRa0=",
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
        "value" : "8",
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
                //item.put("_idCardNo", item.get("idCardNo"));
                //item.put("_idCardNo", URLEncoder.encode(ZzSecurityHelper.encryptAES(item.get("idCardNo"))));
                item.put("_idCardNo", ZzSecurityHelper.encryptAES(item.get("idCardNo")));
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
        //item.put("_idCardNo", item.get("idCardNo"))
        //item.put("_idCardNo", URLEncoder.encode(ZzSecurityHelper.encryptAES(item.get("idCardNo"))));
        item.put("_idCardNo", ZzSecurityHelper.encryptAES(item.get("idCardNo")));
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