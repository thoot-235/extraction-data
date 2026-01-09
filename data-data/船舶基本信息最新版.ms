{
  "properties" : { },
  "id" : "dc2362b0354b4b96b75ba08d47b3bc23",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "船舶基本信息最新版",
  "createTime" : null,
  "updateTime" : 1745205127612,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getShipBasicDataAll",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"dataSource\": \"船舶登记\",\r\n    \"shipId\": \"CN20197828373\",\r\n    \"shipImo\": \"\",\r\n    \"shipNo\": \"\",\r\n    \"shipRegNo\": \"\",\r\n    \"statusFlag\": \"1\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"shipAge\": \"16\",\n        \"shipRegNo\": \"120507000079\",\n        \"reportInspectFlag\": \"0\",\n        \"shipNo\": \"A120507000079\",\n        \"certObtainDate\": \"\",\n        \"statusFlag\": \"1\",\n        \"dataSource\": \"船舶登记\",\n        \"shipOwnerCn\": \"荆州市天利江海运输有限公司等3人。\",\n        \"ownerLegalPerson\": \"\",\n        \"shipNameCn\": \"天利工005\",\n        \"shipNameEn\": \"TIAN LI GONG 005\",\n        \"origShipNameCn\": \"--\",\n        \"shipId\": \"CN20073959522\",\n        \"shipFirstregNo\": \"120507000079\",\n        \"orgCode\": \"宜昌海事局\",\n        \"shipInspectNo\": \"2007F4300231\",\n        \"inspectionOrgName\": \"\",\n        \"shipRegionType\": \"海船\",\n        \"regportCode\": \"宜昌\",\n        \"origRegportName\": \"--\",\n        \"sailingareaCode\": \"沿海\",\n        \"shipTypeCode\": \"工程船\",\n        \"shipHullMaterialCode\": \"钢质\",\n        \"shipValue\": \"--\",\n        \"shipBuiltDate\": \"2007-10-12\",\n        \"shipyardCn\": \"\",\n        \"shipBuiltAddrCn\": \"湖北省荆州市\",\n        \"shipRebuiltDate\": \"--\",\n        \"shipRebuiltAddrCn\": \"--\",\n        \"mmsi\": \"\",\n        \"shipLength\": \"31.5\",\n        \"shipBreadth\": \"9.65\",\n        \"shipDepth\": \"3\",\n        \"shipGrosston\": \"288\",\n        \"shipNetton\": \"77\",\n        \"shipDwt\": \"\",\n        \"shipEngineTypeCode\": \"内燃机\",\n        \"shipEngineNum\": \"2\",\n        \"shipEnginePower\": \"328\",\n        \"shipPropellerKindCode\": \"螺旋桨\",\n        \"shipPropellerNum\": \"2\",\n        \"shipShareSituation\": \"\",\n        \"shipParkingNum\": \"0\",\n        \"shipContainerNum\": \"0\",\n        \"shipPassengerNum\": \"0\",\n        \"titleCertificate\": \"\",\n        \"ownerContactPhone\": \"\",\n        \"_ownerContactPhone\": \"\",\n        \"shipOperatorCn\": \"\",\n        \"operatorContactPhone\": \"\",\n        \"_operatorContactPhone\": \"\",\n        \"shipOperatorAddrCn\": \"\",\n        \"shipManagerCn\": \"\",\n        \"shipManagerAddrCn\": \"\",\n        \"managerContactPhone\": \"\",\n        \"_managerContactPhone\": \"\",\n        \"companyName\": \"\",\n        \"contactPerson\": \"\",\n        \"mobilePhone\": \"\",\n        \"_mobilePhone\": \"\",\n        \"shipSafetyManageCertNo\": \"\",\n        \"ifsystem\": \"\",\n        \"manageBeginDate\": \"\",\n        \"ownerCompanName\": \"\",\n        \"ownerCompanUscc\": \"\",\n        \"ownerCompanyId\": \"\",\n        \"credi_ryb_flag\": \"\",\n        \"credi_ch_flag\": \"\",\n        \"credi_sx_flag\": \"\",\n        \"regportBelongProvince\": \"\",\n        \"shipFlagCode\": \"\",\n        \"shipContact\": \"\",\n        \"shipContactTel\": \"\",\n        \"scjstate\": \"\",\n        \"is130Type\": \"\",\n        \"isBulbousbow\": \"\",\n        \"isPowership\": \"\",\n        \"ifCompletePower\": \"\",\n        \"completePowerDate\": \"\",\n        \"nationCode\": \"中国\",\n        \"shipImo\": \"\",\n        \"emptyDisplacement\": \"\",\n        \"underwaterDeviceSize\": \"\",\n        \"appCargoType\": \"\",\n        \"extremeBreadth\": \"\",\n        \"maxHeight\": \"\",\n        \"shipMinimumFreeboard\": \"0\",\n        \"freeboardHeight\": \"\",\n        \"loadWeight\": \"\",\n        \"shipSummerDraft\": \"0\",\n        \"loadDisplacement\": \"\",\n        \"shipWindLevel\": \"\",\n        \"minimumNum\": \"\",\n        \"shipRouteCode\": \"国内\",\n        \"layingKeelDate\": \"\",\n        \"operationIssueOrg\": \"\",\n        \"operationCode\": \"\",\n        \"operationIssueDate\": \"\",\n        \"operationEndDate\": \"\",\n        \"bareboatcCarterer\": \"\",\n        \"perfection\": \"54.55%\"\n    },\n    \"crediData3\": \"\"\n}",
  "description" : "",
  "requestBodyDefinition" : {
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
      "name" : "dataSource",
      "value" : "船舶登记",
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
      "value" : "CN20197828373",
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
      "name" : "shipNo",
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
      "name" : "shipRegNo",
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
      "name" : "statusFlag",
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
      "name" : "result",
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
        "name" : "shipAge",
        "value" : "16",
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
        "value" : "120507000079",
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
        "name" : "reportInspectFlag",
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
        "name" : "shipNo",
        "value" : "A120507000079",
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
        "name" : "certObtainDate",
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
        "name" : "statusFlag",
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
        "name" : "dataSource",
        "value" : "船舶登记",
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
        "name" : "shipOwnerCn",
        "value" : "荆州市天利江海运输有限公司等3人。",
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
        "name" : "ownerLegalPerson",
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
        "name" : "shipNameCn",
        "value" : "天利工005",
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
        "value" : "TIAN LI GONG 005",
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
        "name" : "origShipNameCn",
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
        "name" : "shipId",
        "value" : "CN20073959522",
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
        "value" : "120507000079",
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
        "value" : "宜昌海事局",
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
        "value" : "2007F4300231",
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
        "name" : "inspectionOrgName",
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
        "name" : "shipRegionType",
        "value" : "海船",
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
        "value" : "宜昌",
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
        "name" : "origRegportName",
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
        "name" : "sailingareaCode",
        "value" : "沿海",
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
        "value" : "工程船",
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
        "name" : "shipHullMaterialCode",
        "value" : "钢质",
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
        "name" : "shipValue",
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
        "name" : "shipBuiltDate",
        "value" : "2007-10-12",
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
        "name" : "shipyardCn",
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
        "name" : "shipBuiltAddrCn",
        "value" : "湖北省荆州市",
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
        "name" : "shipRebuiltDate",
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
        "name" : "shipRebuiltAddrCn",
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
        "value" : "31.5",
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
        "value" : "9.65",
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
        "value" : "3",
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
        "value" : "288",
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
        "value" : "77",
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
        "name" : "shipEngineTypeCode",
        "value" : "内燃机",
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
        "name" : "shipEngineNum",
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
        "name" : "shipEnginePower",
        "value" : "328",
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
        "name" : "shipPropellerKindCode",
        "value" : "螺旋桨",
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
        "name" : "shipPropellerNum",
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
        "name" : "shipShareSituation",
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
        "name" : "shipParkingNum",
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
        "name" : "shipContainerNum",
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
        "name" : "shipPassengerNum",
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
        "name" : "titleCertificate",
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
        "name" : "_ownerContactPhone",
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
        "name" : "shipOperatorCn",
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
        "name" : "operatorContactPhone",
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
        "name" : "_operatorContactPhone",
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
        "name" : "shipOperatorAddrCn",
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
        "name" : "shipManagerCn",
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
        "name" : "shipManagerAddrCn",
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
        "name" : "managerContactPhone",
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
        "name" : "_managerContactPhone",
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
        "name" : "companyName",
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
        "name" : "contactPerson",
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
        "name" : "mobilePhone",
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
        "name" : "shipSafetyManageCertNo",
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
        "name" : "ifsystem",
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
        "name" : "manageBeginDate",
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
        "name" : "ownerCompanName",
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
        "name" : "ownerCompanUscc",
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
        "name" : "ownerCompanyId",
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
        "name" : "credi_ryb_flag",
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
        "name" : "credi_ch_flag",
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
        "name" : "credi_sx_flag",
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
        "name" : "regportBelongProvince",
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
        "name" : "shipFlagCode",
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
        "name" : "shipContact",
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
        "name" : "shipContactTel",
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
        "name" : "scjstate",
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
        "name" : "is130Type",
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
        "name" : "isBulbousbow",
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
        "name" : "isPowership",
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
        "name" : "ifCompletePower",
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
        "name" : "completePowerDate",
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
        "name" : "nationCode",
        "value" : "中国",
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
        "name" : "emptyDisplacement",
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
        "name" : "underwaterDeviceSize",
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
        "name" : "appCargoType",
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
        "name" : "extremeBreadth",
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
        "name" : "maxHeight",
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
        "name" : "shipMinimumFreeboard",
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
        "name" : "freeboardHeight",
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
        "name" : "loadWeight",
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
        "name" : "shipSummerDraft",
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
        "name" : "loadDisplacement",
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
        "name" : "shipWindLevel",
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
        "name" : "minimumNum",
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
        "name" : "shipRouteCode",
        "value" : "国内",
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
        "name" : "layingKeelDate",
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
        "name" : "operationIssueOrg",
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
        "name" : "operationCode",
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
        "name" : "operationIssueDate",
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
        "name" : "operationEndDate",
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
        "name" : "bareboatcCarterer",
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
        "name" : "perfection",
        "value" : "54.55%",
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
      "name" : "crediData3",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Object",
      "type" : "",
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
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;

//过滤字段
import 'org.springframework.data.redis.core.StringRedisTemplate' as StringRedisTemplate
import 'org.ssssssss.magic.utils.TreeUtil' as TreeUtil;
import log;
import request;

import response;
var shipImo = body.shipImo;
var shipId = body.shipId;
var shipRegNo = body.shipRegNo;
var dataSource = body.dataSource;
var flag = body.statusFlag;
var shipNo = body.shipNo;
var crediData;
shipImo = (shipImo == null ? "" : shipImo).replaceAll('-', '').replaceAll('－', '').replaceAll('—', '').replaceAll('―', '');
body.shipImo = shipImo;


var d = new Date();
var d = new Date();
startTime = d.getTime();
var d = new Date();
endTime = d.getTime();

var fieldsPowerSql = """ select listagg(column_en,',')  within group 
                            (order by table_name_en)  as "colum" from bds_base_data.sc_table_fields 
                                where table_name_en='BDS_BASE_DATA.SC_SHIP_BASIC_DATA'""";
var fieldsPower = db.base_data.selectOne(fieldsPowerSql); //字段权限控制

var sqlCount;
if (shipNo != null && shipNo != '') {
    d = new Date();
    startTime = d.getTime();
    var crediSql = """select credi_ryb_flag ,(case when CREDI_SX_FLAG='1' then '是' else '否' end) CREDI_SX_FLAG,
   (case when CREDI_CH_FLAG='1' then '是' else '否' end) CREDI_CH_FLAG from sub_biz_data.SHIP_DYNAMICS_DATA where ship_no=#{body.shipNo}
             order by cj_active_time desc"""
    crediData = db.base_data.camel().selectOne(crediSql);
    d = new Date();
    endTime = d.getTime();

    /** log.info("查询船舶基本信息sub_biz_data.SHIP_DYNAMICS_DATA 耗时=="+(endTime-startTime).toString());
    //先从手动维护表中查询
   var sql=""" select * from SHP_BASIC_DATA_owner where ship_no=#{body.shipNo}""";
 
   d=new Date();  startTime=d.getTime();
  // var data=db.base_data.camel().selectOne(sql);
    d=new Date();  endTime=d.getTime();
   log.info("查询船舶基本信息sub_biz_data.SHP_BASIC_DATA_owner 耗时=="+(endTime-startTime).toString());
   
  if(data!=null &&data!=''){
   var basicData={
       
        "shipAge":data.shipAge,
        "shipRegNo": data.shipRegNo,
        "reportInspectFlag":data.reportInspectFlag,
        "shipNo": data.shipNo,
        "certObtainDate": data.certObtainDate,
        "statusFlag": data.statusFlag,
        "dataSource": data.dataSource,
        "shipOwnerCn": data.shipOwnerCn,
        "ownerLegalPerson": data.ownerLegalPerson,
        "shipNameCn": data.shipNameCn,
        "shipNameEn": data.shipNameEn,
        "origShipNameCn": data.origShipNameCn,
        "shipId": data.shipId,
        "shipFirstregNo": data.shipFirstregNo,
        "orgCode": data.orgCode,
        "shipInspectNo": data.shipInspectNo,
        "inspectionOrgName": data.inspectionOrgName,
        "shipRegionType": data.shipRegionType,
        "regportCode": data.regportCode,
        "origRegportName": data.origRegportName,
        "sailingareaCode": data.sailingareaCode,
        "shipTypeCode": data.shipTypeCode,
        "shipHullMaterialCode": data.shipHullMaterialCode,
        "shipValue": data.shipValue,
        "shipBuiltDate": data.shipBuiltDate,
        "shipyardCn": data.shipyardCn,
        "shipBuiltAddrCn": data.shipBuiltAddrCn,
        "shipRebuiltDate": data.shipRebuiltDate,
        "shipRebuiltAddrCn": data.shipRebuiltAddrCn,
        "mmsi": data.mmsi,
        "shipLength": data.shipLength,
        "shipBreadth": data.shipBreadth,
        "shipDepth": data.shipDepth,
        "shipGrosston": data.shipGrosston,
        "shipNetton": data.shipNetton,
        "shipDwt": data.shipDwt,
        "shipEngineTypeCode": data.shipEngineTypeCode,
        "shipEngineNum": data.shipEngineNum,
        "shipEnginePower": data.shipEnginePower,
        "shipPropellerKindCode": data.shipPropellerKindCode,
        "shipPropellerNum": data.shipPropellerNum,
        "shipShareSituation": data.shipShareSituation,
        "shipParkingNum": data.shipParkingNum,
        "shipContainerNum": data.shipContainerNum,
        "shipPassengerNum": data.shipPassengerNum,
        "titleCertificate": data.titleCertiFicate,
        "ownerContactPhone": data.ownerContactPhone,
        "_ownerContactPhone": DesensitizationUtil.isFixed(data.ownerContactPhone),
        "shipOperatorCn": data.shipOperatorCn,
        "operatorContactPhone": data.operatorContactPhone,
        "_operatorContactPhone": DesensitizationUtil.isFixed(data.operatorContactPhone),
        "shipOperatorAddrCn": data.shipOperatorAddrCn,
        "shipManagerCn": data.shipManagerCn,
        "shipManagerAddrCn": data.shipManagerAddrCn,
        "managerContactPhone": data.managerContactPhone,
        "_managerContactPhone": DesensitizationUtil.isFixed(data.managerContactPhone),
        "companyName": data.companyName,
        "contactPerson": data.contactPerson,
        "mobilePhone": data.mobilePhone,
        "_mobilePhone": DesensitizationUtil.mobilePhone(data.mobilePhone),
        "bidName": data.bidName,
       // "mobilePhone": DesensitizationUtil.mobilePhone(recEntities.mobilePhone),
        "shipSafetyManageCertNo": data.shipSafetyManageCertNo,
        "ifsystem": data.ifsystem,
        "manageBeginDate": data.manageBeginDate,
        "ownerCompanName":data.ownerCompanName,
         "ownerCompanUscc":data.ownerCompanUscc,
          "ownerCompanyId":data.ownerCompanyId,
          "credi_ryb_flag":"",
          "credi_ch_flag":"",
          "credi_sx_flag":""
    
   }
   if(crediData!=null){
       basicData.put("credi_ryb_flag",crediData.get("crediRybFlag") );
       basicData.put("credi_ch_flag",crediData.get("crediChFlag"));
       basicData.put("credi_sx_flag",crediData.get("crediSxFlag"));

   }
   var ip=request.getHeaders("X-Forwarded-For");//获取客户端ip
   var length=request.getHeaders("X-Forwarded-For").getLength();
   var data=StringRedisTemplate.boundHashOps("whileIps").get("whileIp");//模拟集成redis 获取白名单ip 
   //如果访问ip在白名单内，返回所有功能权限
   if(length>=1 && data!=null){
      if(data.toString().contains(ip[0].toString().split(",")[0])){
         return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            result: basicData,
            crediData1:crediData
        }); 
        }
      }
        if(request.getHeaders("Access_Source").contains("app")){
                  basicData= (TreeUtil.ZzMap(StringRedisTemplate,"1658708411142713345",basicData ));
        }
        return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            result: basicData,
            crediData2:crediData
        }); 
   }*/
}
//statusFlag: 有效--1；无效--3
if (dataSource == null || dataSource == '') { //数据来源有3中： 1,PSC   2,船舶登记   3,船舶安全监督 
    return response.json({
        resultCode: 500,
        resultMsg: "缺少数据来源查询条件",
        result: {}
    });
}
var cbSql;
if (dataSource == "PSC") { //如果是外国籍船
    if ((shipImo == null || shipImo == '') && (shipId == null || shipId == '')) {
        return response.json({
            resultCode: 500,
            resultMsg: "查询PSC船舶shipImo与shipId必传其中一个",
            result: {}
        });
    }
    sqlCount = "select " + fieldsPower.get("colum") + " from BDS_BASE_DATA.SC_SHIP_BASIC_DATA where delete_flag='0' "
    cbSql = """
     select '' as ship_reg_no,ship_id as ship_no,SHIP_ID,SHIP_FLAG_CODE,SHIP_TYPE_CODE,SHIP_CLASS_SOCIETY_CODE,SHIP_COMP_CODE,SHIP_COMP_ID,SHIP_IMO,
                    (case when SHIP_NAME_CN is null then SHIP_NAME else SHIP_NAME_CN end)SHIP_NAME_CN ,
                    SHIP_NAME,SHIP_CALLSIGN,SHIP_MMSI,SHIP_GROSSTON,SHIP_DEADWEIGHT,
                    to_char(to_date(SHIP_DATE_KEEL_LAID,'yyyy-MM-dd'),'yyyy-MM-dd') SHIP_DATE_KEEL_LAID,
                    SHIP_LENGTH,SHIP_REMARKS,SHIP_CLASS_SOCIETY_NAME,SHIP_LAST_MODIFY_DATE,SHIP_NAME_OF_SHIP_MASTER,
                    LAST_UPDATE_DATE,SHIP_OWNER,
                    SHIP_OPERATOR,
                    SHIP_MANAGER ,SHIP_REG_NO,REGPORT_BELONG_PROVINCE,SHIP_FLAG_CODE,SHIP_CONTACT,SHIP_CONTACT_TEL,SCJSTATE,IS130TYPE,IS_BULBOUSBOW,IS_POWERSHIP,IF_COMPLETE_POWER,COMPLETE_POWER_DATE,ORG_CODE,NATION_CODE,SHIP_IMO,EMPTY_DISPLACEMENT,UNDERWATER_DEVICE_SIZE,APP_CARGO_TYPE,EXTREME_BREADTH,MAX_HEIGHT,SHIP_MINIMUM_FREEBOARD,FREEBOARD_HEIGHT,LOAD_WEIGHT,SHIP_SUMMER_DRAFT,LOAD_DISPLACEMENT,SHIP_WIND_LEVEL,MINIMUM_NUM,SHIP_ROUTE_CODE,LAYING_KEEL_DATE,OPERATION_ISSUE_ORG	,OPERATION_CODE,OPERATION_ISSUE_DATE,OPERATION_END_DATE,BAREBOAT_CHARTERER	
  from sc_ship_basic_data --SHP_BASIC_DATA_PSC
                    where delete_flag='0'
""";
    if (shipId != null and shipImo != null and shipId != '' and shipImo != '') {
        cbSql = cbSql + """
                            and  (?{body.shipImo,     SHIP_IMO=#{body.shipImo} } 
                                ?{body.shipId, or  ship_id=#{body.shipId}})
            """;

        sqlCount = sqlCount + """
                            and  (?{body.shipImo,     SHIP_IMO=#{body.shipImo} } 
                                ?{body.shipId, or  ship_id=#{body.shipId}})
            """;
    } else if (shipId != null and shipId != '') {
        cbSql = cbSql + """
            ?{body.shipId,  and  ship_id=#{body.shipId}}
            """;
        sqlCount = sqlCount + """
            ?{body.shipId,  and  ship_id=#{body.shipId}}
            """;
    } else if (shipImo != null and shipImo != '') {
        cbSql = cbSql + """
            ?{body.shipImo,  and   SHIP_IMO=#{body.shipImo} } 
            """;

        sqlCount = sqlCount + """
            ?{body.shipImo,  and   SHIP_IMO=#{body.shipImo} } 
            """;
    }
} else if (dataSource == "船舶登记") { //中国籍船
    if ((shipRegNo == null || shipRegNo == '') && (shipId == null || shipId == '')) {
        return response.json({
            resultCode: 500,
            resultMsg: "查询船舶登记shipRegNo与shipId必传其中一个",
            result: {}
        });
    }
    sqlCount = "select " + fieldsPower.get("colum") + """  from  sc_ship_basic_data 
                    t    where 
                     t.delete_flag='0' 
                         ?{body.statusFlag, and  t.status_flag=#{body.statusFlag}}
                         ?{body.statusFlag == null || body.statusFlag == '', and  t.status_flag='1'} """;

    cbSql = """
     select to_char(sysdate,'yyyy')-
to_char(t.ship_built_date, 'yyyy') +decode(sign(to_char(sysdate,'mmdd')-to_Char(t.ship_built_date, 'mmdd')),
-1,-1,0,0,1,0) ship_age,'A' || t.SHIP_FIRSTREG_NO as ship_no,substr(t.ship_type_code,0,2)as ship_type_code_name,
                    t.SHIP_REG_NO,t.SHIP_ID,t.SHIP_NAME_CN,t.SHIP_NAME_EN,t.ORIG_SHIP_NAME_CN,t.SHIP_FIRSTREG_NO,t.SHIP_IMO,
                    m.mmsi  ,
                    t.REGPORT_CODE,t.SHIP_ROUTE_CODE,t.SHIP_TYPE_CODE,t.SHIP_VALUE,t.SHIP_SUMMER_DRAFT,
                    t.SHIP_WIND_LEVEL,t.             SHIP_MINIMUM_FREEBOARD,
                    t.SHIP_CONTAINER_NUM,t.SHIP_PARKING_NUM,t.SHIP_PASSENGER_NUM,t.IC_CARD_NO,
                    t.MORTGAGE_FLAG,t.BAREBOAT_FLAG,t.ALTER_FLAG,t.STATUS_FLAG,
                    t.HANDOUT_CARD_FLAG,t.FINANCIAL_LEASE_FLAG,t.HIBERNATE_FLAG,t.TRIAL_SHIP_FLAG,
                    t.REMARK,t.SHIP_INSPECT_NO,t.SHIP_CALLSIGN,t.SAILINGAREA_CODE,
                    t.SHIP_HULL_MATERIAL_CODE,replace(to_char(t.SHIP_BUILT_DATE, 'yyyy-mm-dd'),'1900-01-01','--')  SHIP_BUILT_DATE,
                    t.SHIPYARD_CN,t.SHIPYARD_EN,t.SHIP_BUILT_ADDR_CN,t.SHIP_BUILT_ADDR_EN,t.SHIP_LENGTH,t.SHIP_BREADTH,
                    t.SHIP_DEPTH,t.SHIP_GROSSTON,t.SHIP_NETTON,t.SHIP_DWT,t.SHIP_ENGINE_TYPE_CODE,
                    t.SHIP_ENGINE_POWER,t.SHIP_ENGINE_NUM,t.SHIP_PROPELLER_NUM,
                    t.SHIP_PROPELLER_KIND_CODE,t.ORIG_REGPORT_NAME,
                    t.SHIP_ID_FLAG,t.ORIG_SHIP_NAME_EN,t.ORIG_SHIP_REG_NO,t.SHIP_REGION_TYPE,
                    replace(to_char(t.SHIP_REBUILT_DATE, 'yyyy-mm-dd') ,'1900-01-01','--') SHIP_REBUILT_DATE,
                    t.SHIP_REBUILT_ADDR_CN,t.SHIP_REBUILT_ADDR_EN,to_char(t.ORIG_DELETION_DATE, 'yyyy-mm-dd') ORIG_DELETION_DATE
                    ,t.PERMANENT_SEAL_REMARK,t.DETENTION_FLAG,t.SHIPID_SEAL_FLAG,
                    t.ORG_CODE ,t.SHIP_OWNER,
              t.SHIP_OPERATOR,
              t.SHIP_MANAGER ,

              t.SHIP_REG_NO,t.REGPORT_BELONG_PROVINCE,t.SHIP_FLAG_CODE,t.SHIP_CONTACT,t.SHIP_CONTACT_TEL,t.SCJSTATE,t.IS130TYPE,t.IS_BULBOUSBOW,t.IS_POWERSHIP,t.IF_COMPLETE_POWER,t.COMPLETE_POWER_DATE,t.ORG_CODE,t.NATION_CODE,t.SHIP_IMO,t.EMPTY_DISPLACEMENT,t.UNDERWATER_DEVICE_SIZE,t.APP_CARGO_TYPE,t.EXTREME_BREADTH,t.MAX_HEIGHT,t.SHIP_MINIMUM_FREEBOARD,t.FREEBOARD_HEIGHT,t.LOAD_WEIGHT,t.SHIP_SUMMER_DRAFT,t.LOAD_DISPLACEMENT,t.SHIP_WIND_LEVEL,t.MINIMUM_NUM,t.SHIP_ROUTE_CODE,t.LAYING_KEEL_DATE,OPERATION_ISSUE_ORG	,OPERATION_CODE,OPERATION_ISSUE_DATE,OPERATION_END_DATE,BAREBOAT_CHARTERER	

                    from sc_ship_basic_data --SHP_BASIC_DATA 
                    t left join (select * from SHP_MMSI where delete_flag='0') m on t.ship_reg_no=m.ship_reg_no   where 
                     t.delete_flag='0' 
                         ?{body.statusFlag, and  t.status_flag=#{body.statusFlag}}
                         ?{body.statusFlag == null || body.statusFlag == '', and  t.status_flag='1'}
""";
    if (shipRegNo != null and shipRegNo != '') {
        cbSql = cbSql + """
        ?{body.shipRegNo,  and   t.ship_reg_no=#{body.shipRegNo} } 
        """;

        sqlCount = sqlCount + """
        ?{body.shipRegNo,  and   t.ship_reg_no=#{body.shipRegNo} } 
        """;

    } else if (shipId != null and shipId != '') {
        cbSql = cbSql + """
        ?{body.shipId,  and  t.ship_id=#{body.shipId}}
        """;

        sqlCount = sqlCount + """
        ?{body.shipId,  and  t.ship_id=#{body.shipId}}
        """;
    } else if (shipId != null and shipRegNo != null and shipId != '' and shipRegNo != '') {
        cbSql = cbSql + """
                        and  (?{body.shipRegNo,     t.ship_reg_no=#{body.shipRegNo} } 
                            ?{body.shipId, or  t.ship_id=#{body.shipId}})
        """;

        sqlCount = sqlCount + """
                        and  (?{body.shipRegNo,     t.ship_reg_no=#{body.shipRegNo} } 
                            ?{body.shipId, or  t.ship_id=#{body.shipId}})
        """;
    }
} else if (dataSource == "船舶安全监督") {
    if ((shipNo == null || shipNo == '')) {
        return response.json({
            resultCode: 500,
            resultMsg: "查询船舶安全监督shipNo必传",
            result: {}
        });
    }
    sqlCount = "select " + fieldsPower.get("colum") + """ from sc_ship_basic_data
        --SHP_BASIC_DATA_SSM
                    where delete_flag='0'   ?{body.shipNo,  and ship_no=#{body.shipNo} } """;
    cbSql = """
     select SHIP_NO,
        SHIP_CLASS,
        SHIP_REG_NO,SHIP_ID,SHIP_FIRSTREG_NO,SHIP_NAME_CN,SHIP_NAME_EN,SHIP_INSPECT_NO,SHIP_CALLSIGN,SHIP_IMO,
        SHIP_CARD_NO,MMSI,SHIP_REGION_TYPE,       SHIP_ROUTE_CODE,SAILINGAREA_CODE,NATION_CODE,REGPORT_CODE,REGPORT_NAME,
        SHIP_TYPE_CODE,SHIP_HULL_MATERIAL_CODE,replace(to_char(SHIP_BUILT_DATE, 'yyyy-mm-dd'),'1900-01-01','--') SHIP_BUILT_DATE,SHIPYARD_CN,SHIP_LENGTH,
        SHIP_BREADTH,SHIP_DEPTH,SHIP_GROSSTON,SHIP_NETTON,SHIP_DWT,SHIP_ENGINE_TYPE_CODE,SHIP_ENGINE_NUM,SHIP_ENGINE_POWER,
        SHIP_PROPELLER_KIND_CODE,SHIP_PROPELLER_NUM,SHIP_SUMMER_DRAFT,SHIP_WIND_LEVEL,SHIP_MINIMUM_FREEBOARD,SHIP_CONTAINER_NUM,
        SHIP_PARKING_NUM,SHIP_PASSENGER_NUM,SHIP_SPEED,SHIP_OWNER_NO,SHIP_OWNER,SHIP_OPERATOR_NO,SHIP_OPERATOR,SHIP_MANAGER_NO,
        SHIP_MANAGER,RESCUE_NUM,MINIMUM_NUM,REMARK,SOURCE_CODE,DATA_ORG_CODE,CREATE_DATE,CREATOR,LAST_UPDATE_DATE,UPDATE_BY,
        DELETE_FLAG,PROCESS_STATUS,IMPORT_TIME,SHIP_OWNER,
              SHIP_OPERATOR,
              SHIP_MANAGER,SHIP_REG_NO,REGPORT_BELONG_PROVINCE,SHIP_FLAG_CODE,SHIP_CONTACT,SHIP_CONTACT_TEL,SCJSTATE,IS130TYPE,IS_BULBOUSBOW,IS_POWERSHIP,IF_COMPLETE_POWER,COMPLETE_POWER_DATE,ORG_CODE,NATION_CODE,SHIP_IMO,EMPTY_DISPLACEMENT,UNDERWATER_DEVICE_SIZE,APP_CARGO_TYPE,EXTREME_BREADTH,MAX_HEIGHT,SHIP_MINIMUM_FREEBOARD,FREEBOARD_HEIGHT,LOAD_WEIGHT,SHIP_SUMMER_DRAFT,LOAD_DISPLACEMENT,SHIP_WIND_LEVEL,MINIMUM_NUM,SHIP_ROUTE_CODE,LAYING_KEEL_DATE,OPERATION_ISSUE_ORG	,OPERATION_CODE,OPERATION_ISSUE_DATE,OPERATION_END_DATE,BAREBOAT_CHARTERER	
  from sc_ship_basic_data
        --SHP_BASIC_DATA_SSM
                    where delete_flag='0'   ?{body.shipNo,  and ship_no=#{body.shipNo} } 
""";
}
var basic = {};
startTimeTime = d.getTime();
basic = db.base_data.camel().selectOne(cbSql);

var sqlCountData = db.base_data.camel().selectOne(sqlCount);
var perfection;
//计算空值率
if (sqlCountData != null) {
    var total = 0;
    var notEmpty = 0;
    sqlCountData.forEach((k, v) -> {
        ++total;
        if (v != null && v != '') {
            ++notEmpty;
        }
    });
    perfection = String.format("%.2f", (Double.parseDouble(notEmpty.toString()) / Double.parseDouble(total.toString())) * 100) + "%";
    //log.info("空值率==="+Integer.parseInt(total.toString())+"个"+Integer.parseInt(notEmpty.toString())+"个" 
    //+String.format("%.2f",(Double.parseDouble(notEmpty.toString())/Double.parseDouble(total.toString()))*100)+"%")
}



d = new Date();
endTime = d.getTime();
log.info("查询船舶基本信息cbSql 船舶基本信息 耗时==" + (endTime - startTime).toString());


if (basic != null) {
    basic.put("mortgageFlag",
        TagUtils.getTagNameByCode("mortgageFlag", basic.get("mortgageFlag")));
    basic.put("bareboatFlag",
        TagUtils.getTagNameByCode("bareboatFlag", basic.get("bareboatFlag")));
    basic.put("alterFlag",
        TagUtils.getTagNameByCode("applHkAndMacaoSignTag", basic.get("alterFlag")));
    basic.put("statusFlag",
        TagUtils.getTagNameByCode("statusFlag", basic.get("statusFlag")));
    basic.put("handoutCardFlag",
        TagUtils.getTagNameByCode("handoutCardFlag", basic.get("handoutCardFlag")));
    basic.put("financialLeaseFlag",
        TagUtils.getTagNameByCode("financialLeaseFlag", basic.get("financialLeaseFlag")));
    basic.put("hibernateFlag",
        TagUtils.getTagNameByCode("hibernateFlag", basic.get("hibernateFlag")));
    basic.put("trialShipFlag",
        TagUtils.getTagNameByCode("tailShipFlag", basic.get("trialShipFlag")));
    basic.put("detentionFlag",
        TagUtils.getTagNameByCode("deletionFlag", basic.get("detentionFlag")));
    basic.put("shipidSealFlag",
        TagUtils.getTagNameByCode("shipIdSealFlag", basic.get("shipidSealFlag")));
    basic.put("regportCode",
        TagUtils.getTagNameByCode("shipRegportTag", basic.get("regportCode")));
    basic.put("shipRouteCode",
        TagUtils.getTagNameByCode("shipRouteLineTag", basic.get("shipRouteCode")));
    basic.put("shipTypeCode",
        TagUtils.getTagNameByCode("shipClassTag", basic.get("shipTypeCode")));
    if (dataSource == "PSC") {
        basic.put("shipTypeCode",
            TagUtils.getTagNameByCode("shipTypePsc", basic.get("shipTypeCode")));
    }
    basic.put("sailingareaCode",
        TagUtils.getTagNameByCode("shipClassTag", basic.get("sailingareaCode")));
    basic.put("shipEngineTypeCode",
        TagUtils.getTagNameByCode("shipEngineTag", basic.get("shipEngineTypeCode")));
    basic.put("shipRegionType",
        TagUtils.getTagNameByCode("shipRegionTypeTag", basic.get("shipRegionType")));
    basic.put("orgCode",
        TagUtils.getTagNameByCode("issuOrgTag", basic.get("orgCode")));
    basic.put("sailingareaCode",
        TagUtils.getTagNameByCode("shipRouteAreaTag", basic.get("sailingareaCode")));
    basic.put("shipHullMaterialCode",
        TagUtils.getTagNameByCode("shipHullTag", basic.get("shipHullMaterialCode")));
    basic.put("shipPropellerKindCode",
        TagUtils.getTagNameByCode("shipPropllerTag", basic.get("shipPropellerKindCode")));

    basic.put("regportBelongProvince", TagUtils.getTagNameByCode("provinceTag", basic.get("regportBelongProvince")));
    basic.put("flagStateCodeTag", TagUtils.getTagNameByCode("shipFlagCode", basic.get("flagStateCodeTag")));
    basic.put("is130Type", TagUtils.getTagNameByCode("isOrNotTag", basic.get("is130Type")));
    basic.put("isBulbousbow", TagUtils.getTagNameByCode("isOrNotTag", basic.get("isBulbousbow")));
    basic.put("isPowership", TagUtils.getTagNameByCode("isOrNotTag", basic.get("isPowership")));
    basic.put("ifCompletePower", TagUtils.getTagNameByCode("isOrNotTag", basic.get("ifCompletePower")));
    basic.put("orgCode", TagUtils.getTagNameByCode("issuOrgTag", basic.get("orgCode")));
    basic.put("nationCode", TagUtils.getTagNameByCode("cbdjCountryTag", basic.get("nationCode")));
    basic.put("shipWindLevel", TagUtils.getTagNameByCode("shipWindLevelTag", basic.get("shipWindLevel")));
    basic.put("shipRouteCode", TagUtils.getTagNameByCode("shipRouteLineTag", basic.get("shipRouteCode")));
} else {
    basic = {}
}
var entities = {};
//var recEntities = {};
if (shipId != null and shipId != "") { //
    //船舶基础资料_船舶改建信息
    var cbGjSql = """
      select SHIP_SURVEY_NO,SHIP_SURVEY_ITEM_NAME,INSPECTION_ORG_NAME,INSPECTION_ORG_CODE,SHIP_INS_REG_NO,
      SHIP_ID,SHIP_NAME_CN,SHIP_CLASS_NAME,
                   SHIP_CLASS_CODE,SHIPYARD_CN,SHIP_GROSSTON,SHIP_ENGINE_POWER,SHIP_LENGTH,SHIP_BREADTH,
                   SHIP_DEPTH,AUDIT_DRAWING_APPROVAL_NO,DRAWING_APPROVAL_UNIT,
                    SHIP_DESIGN_ORG,to_char(CONVERSION_DATE,'yyyy-mm-dd' ) CONVERSION_DATE ,
                    to_char(LAUNCHING_DATE,'yyyy-mm-dd') LAUNCHING_DATE ,to_char(CONS_COMP_DATE,'yyyy-mm-dd') 
                    CONS_COMP_DATE ,to_char(SHIP_SURVEY_COMPLET_DATE,'yyyy-mm-dd') SHIP_SURVEY_COMPLET_DATE ,
                    SHIP_OWNER,SHIP_OPERATOR,SHIP_REGION_NAME,REFERENCE_LOAD,
                    SURVEYOR,MARITIME_ORG_CODE,MARITIME_ORG_FULL_NAME,SHIP_SURVEY_ORG,SURVEY_NO,ORGAN_NAME_ABB,
                    ORGAN_CODE,PROVINCE||LOCATION as seat,GROUP_NAME,
                    ISSUED_DATE_FIRST,SOURCE_CODE,DATA_ORG_CODE,CREATE_DATE,CREATOR,LAST_UPDATE_DATE,UPDATE_BY,
                    DELETE_FLAG,PROCESS_STATUS from SHP_REBUILT_INFO where delete_flag='0'  and   ?{body.shipId,   ship_id=#{body.shipId}} 
      """;
    d = new Date();
    startTime = d.getTime();
    entities = db.base_data.camel().selectOne(cbGjSql);
    d = new Date();
    endTime = d.getTime();
    log.info("查询船舶基本信息SHP_REBUILT_INFO 耗时==" + (endTime - startTime).toString());

    if (entities != null) {

    } else {
        entities = {}
    }
    //进出港报告 bds_biz_data库
    //var jcgSql = """
    //select REPORT_ID,REG_SHIP_ID,SHIP_ID,SHIP_REG_NO,SHIP_FIRSTREG_NO,SHIP_INSPECT_NO,SHIP_NAME_CN,SHIP_NAME_EN,SHIP_IMO,MMSI, 
    //        SHIP_CALLSIGN,REGPORT_CODE,FLAG_STATE_CODE,SHIP_REGION_TYPE,SHIP_TYPE_CODE,SHIP_GROSSTON,SHIP_NETTON,
    //       SHIP_DWT,MAINENGINE_POWER, 
    //       SHIP_PASSENGER_NUM,SHIP_LENGTH,SHIP_BREADTH,SHIP_DEPTH,LINE_CODE,AREA_CODE,CONSTRUCTION_DATE,
    //       SHIP_OWNER,OWNER_ADDRESS,OWNER_CONTACT_PHONE, 
    //       OWNER_CORPORATION,SHIP_OPERATOR,OPERATOR_ADDRESS,OPERATOR_TELEPHONE,OPERATOR_CORPORATION,
    //       BUSINESS_CODE,REPORT_NO,ORG_CODE,REPORT_PORT_NAME, 
    //       REPORT_PORT_CODE,ARRIVAL_OR_LEAVE,ARRIVAL_REPORT_ID,NEXT_PORT_NAME,NEXT_PORT_CODE,REPORT_TIME,
    //       BID_NAME,MOBILE_PHONE,EXPECT_TIME,IF_ANCHORED, 
    //       DRAFT_FORWARD,AFT_DRAFT,BERTH_CODE,BERTH_NAME,OTHER_QUANTITY,ACTUAL_CARRYING_CAPACITY,PORT_CARGO,
    //       REAL_DANGER_CARGO,PORT_DANGER_CARGO,ACTUAL_CAPACITY, 
    //      PORT_PASSENGER,REAL_VEHICLE,PORT_VEHICLE,NUM_OF_BARGE,PORT_BARGE,REAL_CONTAINER_QAY,PORT_CONTAINER_QAY,
    //      LONGITUDE,LATITUDE,IF_REVOKE,VOYAGE_REPORT, 
    //      FREQUENCY,NAVIGATION_SECTION,PRE_PORT_NAME,PRE_PORT_CODE 
    //       from  sub_biz_data.RPT_SHIP_EEP_REPORT_REC  
    //       where delete_flag='0' ?{body.shipId,  and  ship_id=#{body.shipId}} 
    //         and   ym between  to_char(add_months(sysdate,-3),'yyyymm')  and  to_char(sysdate,'yyyymm') 
    //           order by report_time desc
    // """;
    // d=new Date();  startTime=d.getTime();
    //recEntities = db.biz_data.camel().selectOne(jcgSql);
    // d=new Date();  endTime=d.getTime();
    // log.info("查询船舶基本信息RPT_SHIP_EEP_REPORT_REC 耗时=="+(endTime-startTime).toString());

    //if (recEntities != null) {
    //   recEntities.put("ifAnchored", TagUtils.getTagNameByCode("ifAnchored", recEntities.get("ifAnchored").toString()))
    //   recEntities.put("ifRevoke", TagUtils.getTagNameByCode("ifRevoke", recEntities.get("ifRevoke").toString()))
    //  recEntities.put("arrivalOrLeave", TagUtils.getTagNameByCode("arrivalOrLeave", recEntities.get("arrivalOrLeave").toString()))
    //  recEntities.put("orgCode", TagUtils.getTagNameByCode("issuOrgTag", recEntities.get("orgCode")))
    //  recEntities.put("offiSources", TagUtils.getTagNameByCode("isOwnTag", recEntities.get("offiSources")))
    //} else {
    //    recEntities = {};
    // }
} else {
    entities = {};
    // recEntities = {};
}
var issueDa = {}; //航运公司_安全管理证书
var titleCertificate = {}; //查询船舶所有权
var nationality = {}; //船舶国籍证书信息
var sfShips = {}; //船舶信息
var dtos = {}; //船舶公司


if (shipRegNo != null and shipRegNo != "") { //
    //查询船舶所有权
    var cbsyqSql = """
    SELECT 
          SHIP_REG_NO,SHIP_OWNER_CN,SHIP_OWNER_ADDR_CN,SHIP_OWNER_EN,SHIP_OWNER_ADDR_EN,
          OWNER_LEGAL_PERSON,              OWNER_CONTACT_PHONE,
          OWNER_POSTALCODE,to_char(CERT_OBTAIN_DATE,'yyyy-mm-dd') as  CERT_OBTAIN_DATE,SHIP_OBTAIN_WAY_CODE,SHIP_SHARE_SITUATION,STATUS_FLAG,PRINT_FLAG,
          SEAL_FLAG,CHECK_FLAG,
          ISSUE_FLAG,ORG_CODE,CERT_PRINT_NO,REG_DELETION_NO,REMARK,CREATOR_CODE,CREATE_TIME,OPERATOR_CODE
          ,OPERATE_TIME,OPERATE_FLAG,
          SOURCE_CODE,DATA_ORG_CODE,CREATE_DATE,CREATOR,LAST_UPDATE_DATE,UPDATE_BY,DELETE_FLAG,PROCESS_STATUS
          FROM SHP_CERT_OWNERSHIP WHERE delete_flag='0' 
          and   ?{body.shipRegNo,   SHIP_REG_NO=#{body.shipRegNo}} 
  """;
    d = new Date();
    startTime = d.getTime();
    titleCertificate = db.base_data.camel().selectOne(cbsyqSql);
    d = new Date();
    endTime = d.getTime();
    log.info("查询船舶基本信息SHP_CERT_OWNERSHIP 耗时==" + (endTime - startTime).toString());

    if (titleCertificate != null) {

    } else {
        titleCertificate = {}
    }
    //查询船舶国籍证书信息
    var cbgjzhSql = """
     SELECT SHIP_REG_NO, NATION_VERSION, TEMP_NATION_FLAG, LANGUAGE_TYPE, SHIP_OPERATOR_CN, 
     SHIP_OPERATOR_ADDR_CN, OPERATOR_LEGAL_PERSON, OPERATOR_CONTACT_PHONE, OPERATOR_POSTALCODE,
      SHIP_MANAGER_CN, SHIP_MANAGER_ADDR_CN, MANAGER_LEGAL_PERSON, MANAGER_CONTACT_PHONE, MANAGER_POSTALCODE,
       SHIP_OWNER_CN, SHIP_OWNER_ADDR_CN, SHIP_OPERATOR_EN, SHIP_OPERATOR_ADDR_EN, SHIP_OWNER_EN, 
       SHIP_OWNER_ADDR_EN, EFFECTIVE_DATE, EXPIRE_DATE, CERT_OBTAIN_DATE, STATUS_FLAG, PRINT_FLAG, 
       SEAL_FLAG, CHECK_FLAG, ISSUE_FLAG, ORG_CODE,
        CERT_PRINT_NO, REG_DELETION_NO, REMARK, CREATOR_CODE, CREATE_TIME, OPERATOR_CODE, OPERATE_TIME, 
        OPERATE_FLAG, SOURCE_CODE, DATA_ORG_CODE, CREATE_DATE, CREATOR, LAST_UPDATE_DATE, UPDATE_BY, 
        DELETE_FLAG, PROCESS_STATUS  FROM SHP_CERT_NATIONAL  where status_flag = '1'  and delete_flag='0' 
      and       ?{body.shipRegNo,   SHIP_REG_NO=#{body.shipRegNo}}     
    """;
    d = new Date();
    startTime = d.getTime();
    nationality = db.base_data.camel().selectOne(cbgjzhSql);
    d = new Date();
    endTime = d.getTime();
    log.info("查询船舶基本信息SHP_CERT_NATIONAL耗时==" + (endTime - startTime).toString());
    if (nationality != null) {} else {
        nationality = {}
    }
    //管理船舶信息
    var glcbsQL = """
      SELECT SHIP_PRIMARY_KEY,AUDIT_SHIP_TYPE,MANAGE_FORMS,COMPANYID, to_char(MANAGE_BEGIN_DATE,'yyyy-mm-dd') MANAGE_BEGIN_DATE,NUM_IN_SYSTEM,
       (case when IFSYSTEM='1' then '是'  else '否' end) 
        IFSYSTEM,IFSYSTEM ifsystem_Name,AUDIT_ORG_CODE,JOIN_DATE,IN_LAND_SPC_NO,SOURCE_CODE,DATA_ORG_CODE,
      CREATE_DATE,CREATOR,LAST_UPDATE_DATE,UPDATE_BY,DELETE_FLAG,PROCESS_STATUS FROM CMP_MNG_SP_INFO where delete_flag='0' 
      ?{body.shipRegNo, and  SHIP_PRIMARY_KEY=#{body.shipRegNo}}    
      """;
    d = new Date();
    startTime = d.getTime();

    sfShips = db.base_data.camel().selectOne(glcbsQL);
    d = new Date();
    endTime = d.getTime();
    log.info("查询船舶基本信息CMP_MNG_SP_INFO耗时==" + (endTime - startTime).toString());

    if (sfShips != null) {} else {
        sfShips = {}
    }
    //查询船舶公司
    if (sfShips != null) {
        var companyId = sfShips.get("companyid");
        if (companyId != null) {
            companyId = "'" + companyId + "'";
            var cbSqLxxx = """
             select companyid,organization_code,to_char( reg_date, 'yyyy-mm-dd') reg_date,legal_representative,
             company_name,abbreviation_cn,
                   company_name_en,abbreviation_en, flag_state_code,province,city,address,address_en,business_no,
                  license_no,manage_no, if_obtain,obtain_date, port_license_no,supervisor_unit,inter_cert_no, contact_person,
                  mobile_phone, office_telephone, mailing_address, fax,zip_code, web_site, we_chat,category_code,
                  nature_code,classify_codes,embranchment, inter_license_code, inter_ship_license_code,
                  pcompanyid,  uscc,  remark   from CMP_SHIPPING_COMPANY where
                 delete_flag='0'  and companyId = """ + companyId + """
             """;
            d = new Date();
            startTime = d.getTime();
            dtos = db.base_data.camel().selectOne(cbSqLxxx);
            d = new Date();
            endTime = d.getTime();
            log.info("查询船舶基本信息CMP_SHIPPING_COMPANY耗时==" + (endTime - startTime).toString());

            if (dtos != null) {} else {
                dtos = {}
            }
            if (dtos != null) {
                if (dtos.get("province") != null) {
                    dtos.put("province",
                        TagUtils.getTagNameByCode("provinceTag", dtos.get("province")::string));
                }
                dtos.put("city",
                    TagUtils.getTagNameByCode("cityTag", dtos.get("city")));
                dtos.put("natureCode",
                    TagUtils.getTagNameByCode("natureEnterpriseTag", dtos.get("natureCode")));
                if (dtos.get("ifObtain") != null) {
                    dtos.put("ifObtain",
                        TagUtils.getTagNameByCode("releaseMark", dtos.get("ifObtain")::string));
                }
            }
        }
    }
    //航运公司_安全管理证书
    var HygsSql = """
      select SHIP_ID,SHIP_NAME_CN,SHIP_TYPE_CODE,REGPORT_CODE,INTER_DOC_NO,SHIP_GROSSTON,PASSENGER_QUOTA,SHIP_REG_NO,
             SHIP_OWNER,SHIP_SAFETY_MANAGE_CERT_NO,IF_TEMP,DOMESTIC_INTL_CERT_MARK,AUDIT_END_DATE,
             APPROVAL_PEOPLE,
             to_char( ISSU_DATE, 'yyyy-mm-dd') ISSU_DATE, to_char( EXPIRY_DATE, 'yyyy-mm-dd') EXPIRY_DATE,
             ISSUING_AUTHORITY,ENDORSER,ENDORSE_DATE,ENDORSE_SITE,ATTACH_DATE,ATTACHER,ATTACH_SITE,
             IS_CANCEL,to_char( CANCEL_DATE, 'yyyy-mm-dd') CANCEL_DATE,CANCEL_REASON,CANCELLATION_PERSON,IF_ROLL,
             to_char( ROLL_EXPIRY_DATE, 'yyyy-mm-dd') ROLL_EXPIRY_DATE,to_char( ROLL_DATE, 'yyyy-mm-dd') 
             ROLL_DATE,ROLLER,ATTACH_SITE2,
             ATTACH_SITE3,ATTACH_DATE2,ATTACH_DATE3,ATTACHER2,ATTACHER3,to_char( BEGIN_DATE, 'yyyy-mm-dd') 
              BEGIN_DATE,SYS_CREATED_BY,CREATING_TIME,
             LAST_MODIFY_PERSON,LAST_MODIFY_DT,SMCID,COMPANYID,SYS_DEPT,SYS_ORG,ISSUE_SITE,SHIP_INSPECT_NO,SHIP_PRIMARY_KEY,
             CHANGE_OR_REISSUE,COMPANY_NAME,BUSINESS_ID,ORG_NAME,REMARK,LAST_UPDATE_DATE from 
             CMP_SP_AUDIT_ISSUE
            where delete_flag='0' 
              ?{body.shipRegNo,   and SHIP_REG_NO =#{body.shipRegNo}} 
             and IS_CANCEL=0
      """;
    d = new Date();
    startTime = d.getTime();
    issueDa = db.base_data.camel().selectOne(HygsSql);
    d = new Date();
    endTime = d.getTime();
    log.info("查询船舶基本信息CMP_SP_AUDIT_ISSUE耗时==" + (endTime - startTime).toString());
    if (issueDa != null) {} else {
        issueDa = {}
    }
    //dtos=db.base_data.camel().select(cbSqLxxx);
}

var ownerCompany = {};
if (shipRegNo != null && shipRegNo != '') {
    var sqlx = """
    
              select b.USCC as owner_compan_uscc,b.company_name as owner_compan_name,b.organization_code   as owner_company_id
        from (
           
          select row_number() over(partition by g.SHIP_REG_NO order by  flag desc) rn,g.* from (
            SELECT  SHIP_REG_NO,SHIP_OWNER_EN as company_name,SHIP_OPERATOR_CN as company_name2 ,
            SHIP_MANAGER_CN as company_name3 ,1 as flag  ,'old' ref_name
              FROM BDS_BASE_DATA.SHP_CERT_NATIONAL
            where status_flag = '1' and delete_flag='0'
            ?{body.shipRegNo,and (SHIP_REG_NO = #{body.shipRegNo})}

            union all

                (
                    SELECT distinct SHIP_REG_NO,SHIP_LENDER_CN as company_name,SHIP_CHARTERER_CN as company_name2,'' as company_name3,1 as flag ,'old' ref_name
                FROM BDS_BASE_DATA.SHP_CERT_BC_REG
                where status_flag = '1' and delete_flag='0'
                ?{body.shipRegNo,and (SHIP_REG_NO = #{body.shipRegNo})}
                )

            union all

            (
                SELECT distinct SHIP_REG_NO,SHIP_MORTGAGEE_CN as company_name ,SHIP_MORTGAGEE_EN as  company_name2,'' as company_name3,1 as flag ,'old' ref_name
              FROM BDS_BASE_DATA.SHP_CERT_MORTGAGE
            where status_flag = '1' and delete_flag='0'
            ?{body.shipRegNo,and (SHIP_REG_NO = #{body.shipRegNo})}
            )

            union all

            (
                select distinct SHIP_REG_NO,ship_owner_cn as company_name,''as company_name2,''as company_name3 ,1 as flag,'old' ref_name from BDS_BASE_DATA.SHP_CERT_OWNERSHIP  
                where 1=1 and delete_flag='0'
                ?{body.shipRegNo,and SHIP_REG_NO = #{body.shipRegNo}}
            )

            union all

            (
                select ship_reg_no,b.company_name,'' as company_name2,''as company_name3 ,1 as flag ,'old' ref_name  from shore_power_ship_info a left join shore_power_company_info
                b on a.company_uscc=b.company_uscc
                where 1=1 ?{body.shipRegNo,and ship_reg_no  = #{body.shipRegNo}}
                and b.SH_STATUS=2
                and b.del_flag=0
                and a.DEL_FLAG=0
            )

            union all(
              select ship_reg_no,company_name,'' as company_name2,''as company_name3,
                                            2 as flag ,ref_name from  bds_base_data.company_ref_ship where ?{body.shipRegNo, ship_reg_no  = #{body.shipRegNo}}
              
            )

        )g 

        ) a inner join bds_base_data.company_info_all b on a.company_name=b.company_name
         or a.company_name2=b.company_name or 
        a.company_name3=b.company_name
        where  a.rn=1 and a.ref_name is not null
        
    """;
    d = new Date();
    startTime = d.getTime();
    ownerCompany = db.hs_share.camel().selectOne(sqlx);
    d = new Date();
    endTime = d.getTime();
    log.info("查询船舶基本信息ownerCompany耗时==" + (endTime - startTime).toString());

}
if (ownerCompany == "" || ownerCompany == null) {
    ownerCompany = {
        "ownerCompanName": '',
        "ownerCompanUscc": '',
        "ownerCompanyId": ''
    }
}
//经营人查询
var operatorCompany = "";
if (shipRegNo != null && shipRegNo != '') {
    var sqlx = """
      select listagg(comp_name,',') within group (order by comp_name ) as comp_name 
      from bds_base_data.comp_ship_ref_new 
      where 1=1 
        and ref_code = '2' 
        and is_delete = '0'
        and is_change = '0'
        ?{body.shipRegNo,and ship_reg_no  = #{body.shipRegNo}} 
    """;
    //d = new Date();
    //startTime = d.getTime();
    shipOperatorCompany = db.hs_share.camel().selectValue(sqlx);
    //d = new Date();
    //endTime = d.getTime();
    //log.info("查询船舶基本信息ownerCompany耗时==" + (endTime - startTime).toString());
    operatorCompany  = shipOperatorCompany;

}


var data = {
    "basic": basic,
    "entities": entities,
    // "recEntities": recEntities,
    "titleCertificate": titleCertificate,
    "nationality": nationality,
    "sfShips": sfShips,
    "dtos": dtos,
    "issueData": issueDa
}
var basicData = {}
//查询是否有进出港报告和查验
var sqlreport = """
   select case
         when report_flag = 0 and inspect_flag = 0 then
          '0' --都无
         when report_flag = 1 and inspect_flag = 0 then
          '1' --报告有
         when report_flag = 0 and inspect_flag = 1 then
          '2' --查验有
         else
          '3'
       end report_inspect_flag

          from (select sum(case
                         when nvl(REPORT_ID_IN, REPORT_ID_OUT) is null then
                          0
                         else
                          1
                       end) report_flag,
                       sum(case
                         when nvl(INSPECT_ID_IN, INSPECT_ID_OUT) is null then
                          0
                         else
                          1
                       end ) inspect_flag
                  from sub_biz_data.ship_dynamics_data
            <trim prefix="WHERE" prefixOverrides="AND |OR ">
           
                  <if test="shipNo != null and shipNo!=''">
                             ship_no = #{shipNo}
                   </if>
                    <if test="shipId != null and shipId!=''">
                           or SHIP_ID = #{shipId}
                   </if>
                   <if test="shipImo != null and shipImo!=''">
                         or ship_Imo = #{shipImo}
                   </if>
            </trim>

               
                )

    """
d = new Date();
startTime = d.getTime();
var reportInspectFlag = db.base_data.camel().selectValue(sqlreport);
d = new Date();
endTime = d.getTime();
log.info("查询船舶基本信息reportInspectFlag耗时==" + (endTime - startTime).toString());

if (reportInspectFlag == null || reportInspectFlag == "") {
    basic.reportInspectFlag = "0";
} else {
    basic.reportInspectFlag = reportInspectFlag;
}


if (dataSource == "船舶登记") {
    basicData = {
        "shipAge": basic.shipAge,
        "shipRegNo": basic.shipRegNo,
        "reportInspectFlag": basic.reportInspectFlag,
        "shipNo": basic.shipNo,
        "certObtainDate": titleCertificate.certObtainDate,
        "statusFlag": flag,
        "dataSource": dataSource,
        "shipOwnerCn": basic.shipOwner,
        "ownerLegalPerson": titleCertificate.ownerLegalPerson,
        "shipNameCn": basic.shipNameCn,
        "shipNameEn": basic.shipNameEn,
        "origShipNameCn": basic.origShipNameCn,
        "shipId": basic.shipId,
        "shipFirstregNo": basic.shipFirstregNo,
        "orgCode": basic.orgCode,
        "shipInspectNo": basic.shipInspectNo,
        "inspectionOrgName": entities.inspectionOrgName,
        "shipRegionType": basic.shipRegionType,
        "regportCode": basic.regportCode,
        "origRegportName": basic.origRegportName,
        "sailingareaCode": basic.sailingareaCode,
        "shipTypeCode": basic.shipTypeCode,
        "shipHullMaterialCode": basic.shipHullMaterialCode,
        "shipValue": basic.shipValue,
        "shipBuiltDate": basic.shipBuiltDate,
        "shipyardCn": entities.shipyardCn,
        "shipBuiltAddrCn": basic.shipBuiltAddrCn,
        "shipRebuiltDate": basic.shipRebuiltDate,
        "shipRebuiltAddrCn": basic.shipRebuiltAddrCn,
        "mmsi": basic.mmsi,
        "shipLength": basic.shipLength,
        "shipBreadth": basic.shipBreadth,
        "shipDepth": basic.shipDepth,
        "shipGrosston": basic.shipGrosston,
        "shipNetton": basic.shipNetton,
        "shipDwt": basic.shipDwt,
        "shipEngineTypeCode": basic.shipEngineTypeCode,
        "shipEngineNum": basic.shipEngineNum,
        "shipEnginePower": basic.shipEnginePower,
        "shipPropellerKindCode": basic.shipPropellerKindCode,
        "shipPropellerNum": basic.shipPropellerNum,
        "shipShareSituation": titleCertificate.shipShareSituation,
        "shipParkingNum": basic.shipParkingNum,
        "shipContainerNum": basic.shipContainerNum,
        "shipPassengerNum": basic.shipPassengerNum,
        "titleCertificate": titleCertificate.titleCertificate,
        "ownerContactPhone": titleCertificate.ownerContactPhone,
        "_ownerContactPhone": DesensitizationUtil.isFixed(titleCertificate.ownerContactPhone),
        //"shipOperatorCn": basic.shipOperator,
        "shipOperatorCn": operatorCompany,
        "operatorContactPhone": nationality.operatorContactPhone,
        "_operatorContactPhone": DesensitizationUtil.isFixed(nationality.operatorContactPhone),
        "shipOperatorAddrCn": nationality.shipOperatorAddrCn,
        "shipManagerCn": basic.shipManager,
        "shipManagerAddrCn": nationality.shipManagerAddrCn,
        "managerContactPhone": nationality.managerContactPhone,
        "_managerContactPhone": DesensitizationUtil.isFixed(nationality.managerContactPhone),
        "companyName": dtos.companyName,
        "contactPerson": dtos.contactPerson,
        "mobilePhone": dtos.mobilePhone,
        "_mobilePhone": DesensitizationUtil.mobilePhone(dtos.mobilePhone),
        // "bidName": recEntities.bidName,
        // "mobilePhone": DesensitizationUtil.mobilePhone(recEntities.mobilePhone),
        "shipSafetyManageCertNo": issueDa.shipSafetyManageCertNo,
        "ifsystem": sfShips.ifsystem,
        "manageBeginDate": sfShips.manageBeginDate,
        "ownerCompanName": ownerCompany.ownerCompanName,
        "ownerCompanUscc": ownerCompany.ownerCompanUscc,
        "ownerCompanyId": ownerCompany.ownerCompanyId,
        "credi_ryb_flag": "",
        "credi_ch_flag": "",
        "credi_sx_flag": "",
        "shipRegNo": basic.shipRegNo,
        "regportBelongProvince": basic.regportBelongProvince,
        "shipFlagCode": basic.shipFlagCode,
        "shipContact": basic.shipContact,
        "shipContactTel": basic.shipContactTel,
        "scjstate": basic.scjstate,
        "is130Type": basic.is130Type,
        "isBulbousbow": basic.isBulbousbow,
        "isPowership": basic.isPowership,
        "ifCompletePower": basic.ifCompletePower,
        "completePowerDate": basic.completePowerDate,
        "orgCode": basic.orgCode,
        "nationCode": basic.nationCode,
        "shipImo": basic.shipImo,
        "emptyDisplacement": basic.emptyDisplacement,
        "underwaterDeviceSize": basic.underwaterDeviceSize,
        "appCargoType": basic.appCargoType,
        "extremeBreadth": basic.extremeBreadth,
        "maxHeight": basic.maxHeight,
        "shipMinimumFreeboard": basic.shipMinimumFreeboard,
        "freeboardHeight": basic.freeboardHeight,
        "loadWeight": basic.loadWeight,
        "shipSummerDraft": basic.shipSummerDraft,
        "loadDisplacement": basic.loadDisplacement,
        "shipWindLevel": basic.shipWindLevel,
        "minimumNum": basic.minimumNum,
        "shipRouteCode": basic.shipRouteCode,
        "layingKeelDate": basic.layingKeelDate,
        "operationIssueOrg": basic.operationIssueOrg,
        "operationCode": basic.operationCode,
        "operationIssueDate": basic.operationIssueDate,
        "operationEndDate": basic.operationEndDate,
        "bareboatcCarterer": basic.bareboatcCarterer
    }
} else if (dataSource == "船舶安全监督") {
    basicData = {
        "shipRegNo": basic.shipRegNo,
        "reportInspectFlag": basic.reportInspectFlag,
        "shipNo": basic.shipNo,
        "certObtainDate": titleCertificate.certObtainDate,
        "statusFlag": flag,
        "dataSource": dataSource,
        "shipOwnerCn": basic.shipOwner,
        "ownerLegalPerson": titleCertificate.ownerLegalPerson,
        "shipNameCn": basic.shipNameCn,
        "shipNameEn": basic.shipNameEn,
        "origShipNameCn": basic.origShipNameCn,
        "shipId": basic.shipId,
        "shipFirstregNo": basic.shipFirstregNo,
        "orgCode": basic.orgCode,
        "shipInspectNo": basic.shipInspectNo,
        "inspectionOrgName": entities.inspectionOrgName,
        "shipRegionType": basic.shipRegionType,
        "regportCode": basic.regportCode,
        "origRegportName": basic.origRegportName,
        "sailingareaCode": basic.sailingareaCode,
        "shipTypeCode": basic.shipTypeCode,
        "shipHullMaterialCode": basic.shipHullMaterialCode,
        "shipValue": basic.shipValue,
        "shipBuiltDate": basic.shipBuiltDate,
        "shipyardCn": entities.shipyardCn,
        "shipBuiltAddrCn": basic.shipBuiltAddrCn,
        "shipRebuiltDate": basic.shipRebuiltDate,
        "shipRebuiltAddrCn": basic.shipRebuiltAddrCn,
        "mmsi": basic.mmsi,
        "shipLength": basic.shipLength,
        "shipBreadth": basic.shipBreadth,
        "shipDepth": basic.shipDepth,
        "shipGrosston": basic.shipGrosston,
        "shipNetton": basic.shipNetton,
        "shipDwt": basic.shipDwt,
        "shipEngineTypeCode": basic.shipEngineTypeCode,
        "shipEngineNum": basic.shipEngineNum,
        "shipEnginePower": basic.shipEnginePower,
        "shipPropellerKindCode": basic.shipPropellerKindCode,
        "shipPropellerNum": basic.shipPropellerNum,
        "shipShareSituation": titleCertificate.shipShareSituation,
        "shipParkingNum": basic.shipParkingNum,
        "shipContainerNum": basic.shipContainerNum,
        "shipPassengerNum": basic.shipPassengerNum,
        "titleCertificate": titleCertificate.titleCertificate,
        "ownerContactPhone": titleCertificate.ownerContactPhone,
        "_ownerContactPhone": DesensitizationUtil.isFixed(titleCertificate.ownerContactPhone),
        //"shipOperatorCn": basic.shipOperator,
        "shipOperatorCn": operatorCompany,
        "operatorContactPhone": nationality.operatorContactPhone,
        "_operatorContactPhone": DesensitizationUtil.isFixed(nationality.operatorContactPhone),
        "shipOperatorAddrCn": nationality.shipOperatorAddrCn,
        "shipManagerCn": basic.shipManager,
        "shipManagerAddrCn": nationality.shipManagerAddrCn,
        "managerContactPhone": nationality.managerContactPhone,
        "_managerContactPhone": DesensitizationUtil.isFixed(nationality.managerContactPhone),
        "companyName": dtos.companyName,
        "contactPerson": dtos.contactPerson,
        // 数据脱敏
        "mobilePhone": dtos.mobilePhone,
        "_mobilePhone": DesensitizationUtil.mobilePhone(dtos.mobilePhone),
        //"bidName": recEntities.bidName,
        // "mobilePhone": DesensitizationUtil.mobilePhone(recEntities.mobilePhone),
        "shipSafetyManageCertNo": issueDa.shipSafetyManageCertNo,
        "ifsystem": sfShips.ifsystem,
        "manageBeginDate": sfShips.manageBeginDate,
        "ownerCompanName": ownerCompany.ownerCompanName,
        "ownerCompanUscc": ownerCompany.ownerCompanUscc,
        "ownerCompanyId": ownerCompany.ownerCompanyId,
        "credi_ryb_flag": "",
        "credi_ch_flag": "",
        "credi_sx_flag": "",
        "shipRegNo": basic.shipRegNo,
        "regportBelongProvince": basic.regportBelongProvince,
        "shipFlagCode": basic.shipFlagCode,
        "shipContact": basic.shipContact,
        "shipContactTel": basic.shipContactTel,
        "scjstate": basic.scjstate,
        "is130Type": basic.is130Type,
        "isBulbousbow": basic.isBulbousbow,
        "isPowership": basic.isPowership,
        "ifCompletePower": basic.ifCompletePower,
        "completePowerDate": basic.completePowerDate,
        "orgCode": basic.orgCode,
        "nationCode": basic.nationCode,
        "shipImo": basic.shipImo,
        "emptyDisplacement": basic.emptyDisplacement,
        "underwaterDeviceSize": basic.underwaterDeviceSize,
        "appCargoType": basic.appCargoType,
        "extremeBreadth": basic.extremeBreadth,
        "maxHeight": basic.maxHeight,
        "shipMinimumFreeboard": basic.shipMinimumFreeboard,
        "freeboardHeight": basic.freeboardHeight,
        "loadWeight": basic.loadWeight,
        "shipSummerDraft": basic.shipSummerDraft,
        "loadDisplacement": basic.loadDisplacement,
        "shipWindLevel": basic.shipWindLevel,
        "minimumNum": basic.minimumNum,
        "shipRouteCode": basic.shipRouteCode,
        "layingKeelDate": basic.layingKeelDate,
        "operationIssueOrg": basic.operationIssueOrg,
        "operationCode": basic.operationCode,
        "operationIssueDate": basic.operationIssueDate,
        "operationEndDate": basic.operationEndDate,
        "bareboatcCarterer": basic.bareboatcCarterer
    }
} else if (dataSource == "PSC") {
    basicData = {
        "shipRegNo": basic.shipRegNo,
        "reportInspectFlag": basic.reportInspectFlag,
        "shipNo": basic.shipNo,
        "certObtainDate": titleCertificate.certObtainDate,
        "statusFlag": flag,
        "dataSource": dataSource,
        "shipOwnerCn": basic.shipOwner,
        "ownerLegalPerson": titleCertificate.ownerLegalPerson,
        "shipNameCn": basic.shipNameCn,
        "shipNameEn": basic.shipName,
        "origShipNameCn": basic.origShipNameCn,
        "shipId": basic.shipId,
        "shipFirstregNo": basic.shipFirstregNo,
        "orgCode": basic.orgCode,
        "shipInspectNo": basic.shipInspectNo,
        "inspectionOrgName": entities.inspectionOrgName,
        "shipRegionType": basic.shipRegionType,
        "regportCode": basic.regportCode,
        "origRegportName": basic.origRegportName,
        "sailingareaCode": basic.sailingareaCode,
        "shipTypeCode": basic.shipTypeCode,
        "shipHullMaterialCode": basic.shipHullMaterialCode,
        "shipValue": basic.shipValue,
        "shipBuiltDate": basic.shipBuiltDate,
        "shipyardCn": entities.shipyardCn,
        "shipBuiltAddrCn": basic.shipBuiltAddrCn,
        "shipRebuiltDate": basic.shipRebuiltDate,
        "shipRebuiltAddrCn": basic.shipRebuiltAddrCn,
        "mmsi": basic.mmsi,
        "shipLength": basic.shipLength,
        "shipBreadth": basic.shipBreadth,
        "shipDepth": basic.shipDepth,
        "shipGrosston": basic.shipGrosston,
        "shipNetton": basic.shipNetton,
        "shipDwt": basic.shipDwt,
        "shipEngineTypeCode": basic.shipEngineTypeCode,
        "shipEngineNum": basic.shipEngineNum,
        "shipEnginePower": basic.shipEnginePower,
        "shipPropellerKindCode": basic.shipPropellerKindCode,
        "shipPropellerNum": basic.shipPropellerNum,
        "shipShareSituation": titleCertificate.shipShareSituation,
        "shipParkingNum": basic.shipParkingNum,
        "shipContainerNum": basic.shipContainerNum,
        "shipPassengerNum": basic.shipPassengerNum,
        "titleCertificate": titleCertificate.titleCertificate,
        "ownerContactPhone": titleCertificate.ownerContactPhone,
        "_ownerContactPhone": DesensitizationUtil.isFixed(titleCertificate.ownerContactPhone),
        "shipOperatorCn": basic.shipOperator,
        "operatorContactPhone": nationality.operatorContactPhone,
        "_operatorContactPhone": DesensitizationUtil.isFixed(nationality.operatorContactPhone),
        "shipOperatorAddrCn": nationality.shipOperatorAddrCn,
        "shipManagerCn": basic.shipManager,
        "shipManagerAddrCn": nationality.shipManagerAddrCn,
        "managerContactPhone": nationality.managerContactPhone,
        "_managerContactPhone": DesensitizationUtil.isFixed(nationality.managerContactPhone),
        "companyName": dtos.companyName,
        "contactPerson": dtos.contactPerson,
        //数据脱敏
        "mobilePhone": dtos.mobilePhone,
        "_mobilePhone": DesensitizationUtil.mobilePhone(dtos.mobilePhone),
        // "bidName": recEntities.bidName,
        //"mobilePhone": DesensitizationUtil.mobilePhone(recEntities.mobilePhone),
        "shipSafetyManageCertNo": issueDa.shipSafetyManageCertNo,
        "ifsystem": sfShips.ifsystem,
        "manageBeginDate": sfShips.manageBeginDate,
        "ownerCompanName": ownerCompany.ownerCompanName,
        "ownerCompanUscc": ownerCompany.ownerCompanUscc,
        "ownerCompanyId": ownerCompany.ownerCompanyId,
        "credi_ryb_flag": "",
        "credi_ch_flag": "",
        "credi_sx_flag": "",
        "shipRegNo": basic.shipRegNo,
        "regportBelongProvince": basic.regportBelongProvince,
        "shipFlagCode": basic.shipFlagCode,
        "shipContact": basic.shipContact,
        "shipContactTel": basic.shipContactTel,
        "scjstate": basic.scjstate,
        "is130Type": basic.is130Type,
        "isBulbousbow": basic.isBulbousbow,
        "isPowership": basic.isPowership,
        "ifCompletePower": basic.ifCompletePower,
        "completePowerDate": basic.completePowerDate,
        "orgCode": basic.orgCode,
        "nationCode": basic.nationCode,
        "shipImo": basic.shipImo,
        "emptyDisplacement": basic.emptyDisplacement,
        "underwaterDeviceSize": basic.underwaterDeviceSize,
        "appCargoType": basic.appCargoType,
        "extremeBreadth": basic.extremeBreadth,
        "maxHeight": basic.maxHeight,
        "shipMinimumFreeboard": basic.shipMinimumFreeboard,
        "freeboardHeight": basic.freeboardHeight,
        "loadWeight": basic.loadWeight,
        "shipSummerDraft": basic.shipSummerDraft,
        "loadDisplacement": basic.loadDisplacement,
        "shipWindLevel": basic.shipWindLevel,
        "minimumNum": basic.minimumNum,
        "shipRouteCode": basic.shipRouteCode,
        "layingKeelDate": basic.layingKeelDate,
        "operationIssueOrg": basic.operationIssueOrg,
        "operationCode": basic.operationCode,
        "operationIssueDate": basic.operationIssueDate,
        "operationEndDate": basic.operationEndDate,
        "bareboatcCarterer": basic.bareboatcCarterer

    }
}
if (crediData != null) { //将信用数据塞进基本信息接口
    basicData.put("credi_ryb_flag", crediData.get("crediRybFlag"));
    basicData.put("credi_ch_flag", crediData.get("crediChFlag"));
    basicData.put("credi_sx_flag", crediData.get("crediSxFlag"));

}

var ip = request.getHeaders("X-Forwarded-For"); //获取客户端ip
var length = request.getHeaders("X-Forwarded-For").getLength();
var data = StringRedisTemplate.boundHashOps("whileIps").get("whileIp"); //模拟集成redis 获取白名单ip 
//如果访问ip在白名单内，返回所有功能权限
if (length >= 1 && data != null) {
    if (data.toString().contains(ip[0].toString().split(",")[0])) {
        basicData.perfection = perfection;
        return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            result: basicData,
            crediData3: crediData

        });
    }
}

if (request.getHeaders("Access_Source").contains("app")) { //智搜app权限字段过滤
    if (body.ownerShip == '2') {

        basicData = TreeUtil.ZzMap(StringRedisTemplate, "2658708411142713345", basicData); //查询个人权限
    } else {
        basicData = TreeUtil.ZzMap(StringRedisTemplate, "1658708411142713345", basicData); //查询公共权限
    }

}
basicData.perfection = perfection;
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",

    result: basicData,

    crediData4: crediData

});