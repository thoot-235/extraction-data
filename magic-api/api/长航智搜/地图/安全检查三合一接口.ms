{
  "properties" : { },
  "id" : "5f03751f06ee4a9fa7c59bb5f6ab2c32",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "安全检查三合一接口",
  "createTime" : null,
  "updateTime" : 1691749538447,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getNewSecurityCheck",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipId",
    "value" : "CN20201439282",
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
    "name" : "begintime",
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
  }, {
    "name" : "endtime",
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
  }, {
    "name" : "shipNameEn",
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
  }, {
    "name" : "shipImo",
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
  }, {
    "name" : "mmsi",
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
  }, {
    "name" : "shipCallsign",
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
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"FSC\": {\n            \"domesticSecurityNumber\": \"20180703090932705090202\",\n            \"statusControlId\": \"20201130155206933070104\",\n            \"taskId\": \"S05920201130155206973070104\",\n            \"voyageId\": \"\",\n            \"prelInvestDomesticSecno\": \"\",\n            \"inspectType\": \"0000000001\",\n            \"shipNo\": \"A350315000046\",\n            \"captainCertNo\": \"BFB111202000743\",\n            \"captainPhone\": \"13604118121\",\n            \"portCode\": \"\",\n            \"inspectorCode\": \"0712121212\",\n            \"inspectorName\": \"刘维新\",\n            \"praticeInspectorCode\": \"0714811481,0721852185\",\n            \"praticeInspectorName\": \"吴永昭,陈磊\",\n            \"inspectDate\": \"2020-11-30 00:00:00\",\n            \"preliminaryReviewSign\": \"初查\",\n            \"detentionMark\": \"否\",\n            \"inspectAction\": \"\",\n            \"otherDesc\": \"\",\n            \"remark\": \"航行安全检查\",\n            \"numberOfDefects\": \"8\",\n            \"correctMark\": \"1\",\n            \"notCloseDefectsnum\": \"0   \",\n            \"isSpecialInsp\": \"1 \",\n            \"securityType\": \"\",\n            \"isPassSpecInsp\": \"\",\n            \"priorityOrder\": \"FP2\",\n            \"fscBusiNo\": \"20201130155207044070000\",\n            \"riskAttribute\": \"S2\",\n            \"totalCount\": \"1\",\n            \"portCodeCn\": \"\"\n        },\n        \"PSC\": {\n            \"formAId\": \"80852B2C31CE41FDA7EDD261D955100F\",\n            \"flagStateCode\": \"HK\",\n            \"formACompId\": \"1777DFB09D39402E9709FDC6F8EE0AB7\",\n            \"formAInspPortCode\": \"AUBEL\",\n            \"shipTypeCode\": \"330\",\n            \"formAInspAuthCode\": \"AU\",\n            \"formAInspDate\": \"2021-05-06 00:00:00\",\n            \"formAInspDetention\": \"N         \",\n            \"formAInspComment\": \"AMSA Inspection EventId: 1328505\",\n            \"formAInspId\": \"1041447\",\n            \"shipImo\": \"9366263\",\n            \"shipNameEn\": \"HIGH SATURN\",\n            \"shipCallsign\": \"VRDW7\",\n            \"mmsi\": \"477058400\",\n            \"formAShipDateKeelLaid\": \"20071220\",\n            \"shipGrosston\": \"29733\",\n            \"formAShipDeadweight\": \"51527\",\n            \"formAShipClassSocietyName\": \"\",\n            \"idCode\": \"6028950\",\n            \"cmpNm\": \"Diamond Anglo Ship Management Pte Ltd (DASM)\",\n            \"formAReleaseDate\": \"\",\n            \"formAInspPscoName\": \"Jean-Marie Dominique SAUZIER\",\n            \"formAInspType\": \"INITIAL   \",\n            \"formALastModifyTime\": \"2021-12-11 01:20:44\",\n            \"formASubmitTime\": \"\",\n            \"formADefTotal\": \"1\",\n            \"nameOfMaster\": \"Aditya SINGH\",\n            \"formAInspDistrict\": \"Devonport\",\n            \"formAInspDistrictOffice\": \"Devonport Office\",\n            \"formAInspSuppDocum\": \"N         \",\n            \"formAAcceptByApcisTime\": \"\",\n            \"formATraineeName\": \"\",\n            \"formAShipClassSocietyCode\": \"158\",\n            \"formACompImo\": \"6028950\",\n            \"formAInspAuthReference\": \"\",\n            \"formACompAddress\": \"\",\n            \"formACompTown\": \"\",\n            \"formACompRegistration\": \"\",\n            \"formACompResidence\": \"\",\n            \"formACompPhone\": \"\",\n            \"formACompFax\": \"\",\n            \"formACompEmail\": \"\",\n            \"formACompWebsite\": \"\",\n            \"formAPortOffice\": \"\",\n            \"totalCount\": \"100\"\n        },\n        \"inspection\": {\n            \"inspectNo\": \"07030620190716113452893\",\n            \"supervisionId\": \"20190716113519841070000\",\n            \"taskId\": \"S0720190716112216422070306\",\n            \"voyageId\": \"\",\n            \"shipNo\": \"A361420957\",\n            \"shipId\": \"CN20201439282\",\n            \"shipNameCn\": \"荣宁96\",\n            \"shipOperator\": \"浙江象山县荣宁船务公司\",\n            \"shipBusinessAddress\": \"\",\n            \"shipBusinessFax\": \"\",\n            \"shipManager\": \"\",\n            \"shipManagerAddr\": \"\",\n            \"shipManagerFax\": \"\",\n            \"captainName\": \"\",\n            \"inspectOrg\": \"岙山海事处\",\n            \"inspectionSite\": \"浙江舟山定海港口浦煤场码头\",\n            \"inspectDate\": \"2019-07-16 11:34:50\",\n            \"inspectorCode\": \"330902197211266918,230184198602163010\",\n            \"inspectorName\": \"方海平,王文成\",\n            \"inspectTimeLimit\": \"0\",\n            \"reason\": \"\",\n            \"problemOrViolation\": \"1\",\n            \"remark\": \"\",\n            \"spotBusiNo\": \"\",\n            \"priorityOrder\": \"不可检船\",\n            \"riskAttribute\": \"中等风险船\",\n            \"praticeInspectorCode\": \"\",\n            \"praticeInspectorName\": \"\",\n            \"isSpecialInspect\": \"0\",\n            \"inspectType\": \"\",\n            \"ifSafeinspect\": \"0\",\n            \"preliminaryReviewSign\": \"初查\",\n            \"initialInspectNo\": \"\",\n            \"numberOfDefects\": \"8\",\n            \"correctMark\": \"0\",\n            \"notCloseDefectsnum\": \"6\",\n            \"shipRegNo\": \"\",\n            \"shipFirstregNo\": \"\",\n            \"shipNameEn\": \"\",\n            \"shipInspectNo\": \"\",\n            \"shipCallsign\": \"\",\n            \"shipImo\": \"\",\n            \"mmsi\": \"\",\n            \"shipRegionType\": \"\",\n            \"shipRouteCode\": \"\",\n            \"sailingareaCode\": \"\",\n            \"regportCode\": \"\",\n            \"origRegportName\": \"\",\n            \"shipTypeCode\": \"\",\n            \"shipHullMaterialCode\": \"\",\n            \"shipBuiltDate\": \"\",\n            \"shipyardCn\": \"\",\n            \"shipLength\": \"\",\n            \"shipBreadth\": \"\",\n            \"shipDepth\": \"\",\n            \"shipGrosston\": \"\",\n            \"shipNetton\": \"\",\n            \"shipDwt\": \"\",\n            \"shipEngineTypeCode\": \"\",\n            \"shipEngineNum\": \"\",\n            \"shipEnginePower\": \"\",\n            \"shipPropellerKindCode\": \"\",\n            \"shipPropellerNum\": \"\",\n            \"shipSummerDraft\": \"\",\n            \"shipWindLevel\": \"\",\n            \"shipMinimumFreeboard\": \"\",\n            \"shipContainerNum\": \"\",\n            \"shipParkingNum\": \"\",\n            \"shipPassengerNum\": \"\",\n            \"statusFlag\": \"\",\n            \"orgCode\": \"\",\n            \"totalCount\": \"3\",\n            \"regportCodeCn\": \"\",\n            \"shipRouteCodeCn\": \"\",\n            \"shipTypeCodeCN\": \"\",\n            \"sailingareaCodeCn\": \"\",\n            \"shipHullMaterialCodeCn\": \"\",\n            \"shipEngineTypeCodeCn\": \"\",\n            \"shipPropellerKindCodeCn\": \"\"\n        }\n    }\n}",
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
        "name" : "FSC",
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
          "name" : "domesticSecurityNumber",
          "value" : "20180703090932705090202",
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
          "name" : "statusControlId",
          "value" : "20201130155206933070104",
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
          "name" : "taskId",
          "value" : "S05920201130155206973070104",
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
          "name" : "voyageId",
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
          "name" : "prelInvestDomesticSecno",
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
          "name" : "inspectType",
          "value" : "0000000001",
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
          "value" : "A350315000046",
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
          "name" : "captainCertNo",
          "value" : "BFB111202000743",
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
          "name" : "captainPhone",
          "value" : "13604118121",
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
          "name" : "portCode",
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
          "name" : "inspectorCode",
          "value" : "0712121212",
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
          "name" : "inspectorName",
          "value" : "刘维新",
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
          "name" : "praticeInspectorCode",
          "value" : "0714811481,0721852185",
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
          "name" : "praticeInspectorName",
          "value" : "吴永昭,陈磊",
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
          "name" : "inspectDate",
          "value" : "2020-11-30 00:00:00",
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
          "name" : "preliminaryReviewSign",
          "value" : "初查",
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
          "name" : "detentionMark",
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
          "name" : "inspectAction",
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
          "name" : "otherDesc",
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
          "name" : "remark",
          "value" : "航行安全检查",
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
          "name" : "numberOfDefects",
          "value" : "8",
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
          "name" : "correctMark",
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
          "name" : "notCloseDefectsnum",
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
          "name" : "isSpecialInsp",
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
          "name" : "securityType",
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
          "name" : "isPassSpecInsp",
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
          "name" : "priorityOrder",
          "value" : "FP2",
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
          "name" : "fscBusiNo",
          "value" : "20201130155207044070000",
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
          "name" : "riskAttribute",
          "value" : "S2",
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
          "name" : "portCodeCn",
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
      }, {
        "name" : "PSC",
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
          "name" : "formAId",
          "value" : "80852B2C31CE41FDA7EDD261D955100F",
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
          "value" : "HK",
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
          "name" : "formACompId",
          "value" : "1777DFB09D39402E9709FDC6F8EE0AB7",
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
          "name" : "formAInspPortCode",
          "value" : "AUBEL",
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
          "value" : "330",
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
          "name" : "formAInspAuthCode",
          "value" : "AU",
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
          "name" : "formAInspDate",
          "value" : "2021-05-06 00:00:00",
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
          "name" : "formAInspDetention",
          "value" : "N",
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
          "name" : "formAInspComment",
          "value" : "AMSA Inspection EventId: 1328505",
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
          "name" : "formAInspId",
          "value" : "1041447",
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
          "value" : "9366263",
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
          "value" : "HIGH SATURN",
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
          "value" : "VRDW7",
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
          "value" : "477058400",
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
          "name" : "formAShipDateKeelLaid",
          "value" : "20071220",
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
          "value" : "29733",
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
          "name" : "formAShipDeadweight",
          "value" : "51527",
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
          "name" : "formAShipClassSocietyName",
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
          "name" : "idCode",
          "value" : "6028950",
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
          "name" : "cmpNm",
          "value" : "Diamond Anglo Ship Management Pte Ltd (DASM)",
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
          "name" : "formAReleaseDate",
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
          "name" : "formAInspPscoName",
          "value" : "Jean-Marie Dominique SAUZIER",
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
          "name" : "formAInspType",
          "value" : "INITIAL",
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
          "name" : "formALastModifyTime",
          "value" : "2021-12-11 01:20:44",
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
          "name" : "formASubmitTime",
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
          "name" : "formADefTotal",
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
          "name" : "nameOfMaster",
          "value" : "Aditya SINGH",
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
          "name" : "formAInspDistrict",
          "value" : "Devonport",
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
          "name" : "formAInspDistrictOffice",
          "value" : "Devonport Office",
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
          "name" : "formAInspSuppDocum",
          "value" : "N",
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
          "name" : "formAAcceptByApcisTime",
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
          "name" : "formATraineeName",
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
          "name" : "formAShipClassSocietyCode",
          "value" : "158",
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
          "name" : "formACompImo",
          "value" : "6028950",
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
          "name" : "formAInspAuthReference",
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
          "name" : "formACompAddress",
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
          "name" : "formACompTown",
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
          "name" : "formACompRegistration",
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
          "name" : "formACompResidence",
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
          "name" : "formACompPhone",
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
          "name" : "formACompFax",
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
          "name" : "formACompEmail",
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
          "name" : "formACompWebsite",
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
          "name" : "formAPortOffice",
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
          "name" : "totalCount",
          "value" : "100",
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
        "name" : "inspection",
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
          "name" : "inspectNo",
          "value" : "07030620190716113452893",
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
          "name" : "supervisionId",
          "value" : "20190716113519841070000",
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
          "name" : "taskId",
          "value" : "S0720190716112216422070306",
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
          "name" : "voyageId",
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
          "name" : "shipNo",
          "value" : "A361420957",
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
          "value" : "CN20201439282",
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
          "value" : "荣宁96",
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
          "value" : "浙江象山县荣宁船务公司",
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
          "name" : "shipBusinessAddress",
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
          "name" : "shipBusinessFax",
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
          "name" : "shipManager",
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
          "name" : "shipManagerAddr",
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
          "name" : "shipManagerFax",
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
          "name" : "captainName",
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
          "name" : "inspectOrg",
          "value" : "岙山海事处",
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
          "name" : "inspectionSite",
          "value" : "浙江舟山定海港口浦煤场码头",
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
          "name" : "inspectDate",
          "value" : "2019-07-16 11:34:50",
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
          "name" : "inspectorCode",
          "value" : "330902197211266918,230184198602163010",
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
          "name" : "inspectorName",
          "value" : "方海平,王文成",
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
          "name" : "inspectTimeLimit",
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
          "name" : "reason",
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
          "name" : "problemOrViolation",
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
          "name" : "remark",
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
          "name" : "spotBusiNo",
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
          "name" : "priorityOrder",
          "value" : "不可检船",
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
          "name" : "riskAttribute",
          "value" : "中等风险船",
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
          "name" : "praticeInspectorCode",
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
          "name" : "praticeInspectorName",
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
          "name" : "isSpecialInspect",
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
          "name" : "inspectType",
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
          "name" : "ifSafeinspect",
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
          "name" : "preliminaryReviewSign",
          "value" : "初查",
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
          "name" : "initialInspectNo",
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
          "name" : "numberOfDefects",
          "value" : "8",
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
          "name" : "correctMark",
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
          "name" : "notCloseDefectsnum",
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
          "name" : "shipRegNo",
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
          "name" : "shipFirstregNo",
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
          "name" : "shipNameEn",
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
          "name" : "shipInspectNo",
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
          "name" : "shipCallsign",
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
          "name" : "shipRegionType",
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
          "name" : "sailingareaCode",
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
          "name" : "regportCode",
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
          "name" : "origRegportName",
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
          "name" : "shipTypeCode",
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
          "name" : "shipHullMaterialCode",
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
          "name" : "shipBuiltDate",
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
          "name" : "shipLength",
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
          "name" : "shipBreadth",
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
          "name" : "shipDepth",
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
          "name" : "shipGrosston",
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
          "name" : "shipNetton",
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
          "name" : "shipEngineNum",
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
          "name" : "shipEnginePower",
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
          "name" : "shipPropellerKindCode",
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
          "name" : "shipPropellerNum",
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
          "name" : "shipMinimumFreeboard",
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
          "name" : "shipContainerNum",
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
          "name" : "statusFlag",
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
          "name" : "orgCode",
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
          "name" : "totalCount",
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
          "name" : "regportCodeCn",
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
          "name" : "shipRouteCodeCn",
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
          "name" : "shipTypeCodeCN",
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
          "name" : "sailingareaCodeCn",
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
          "name" : "shipHullMaterialCodeCn",
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
          "name" : "shipEngineTypeCodeCn",
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
          "name" : "shipPropellerKindCodeCn",
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
      } ]
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;

var sql="""select *
        from (select DOMESTIC_SECURITY_NUMBER,STATUS_CONTROL_ID,TASK_ID,VOYAGE_ID,PREL_INVEST_DOMESTIC_SECNO,INSPECT_TYPE,
        SHIP_NO,CAPTAIN_CERT_NO,CAPTAIN_PHONE,PORT_CODE,INSPECTOR_CODE,INSPECTOR_NAME,PRATICE_INSPECTOR_CODE,
        PRATICE_INSPECTOR_NAME,INSPECT_DATE,PRELIMINARY_REVIEW_SIGN,DETENTION_MARK,INSPECT_ACTION,OTHER_DESC,REMARK,
        NUMBER_OF_DEFECTS,CORRECT_MARK,NOT_CLOSE_DEFECTSNUM,IS_SPECIAL_INSP,SECURITY_TYPE,IS_PASS_SPEC_INSP,
        PRIORITY_ORDER,FSC_BUSI_NO,RISK_ATTRIBUTE,count(*) OVER() total_count from (select
        x.DOMESTIC_SECURITY_NUMBER,x.STATUS_CONTROL_ID,x.TASK_ID,x.VOYAGE_ID,x.PREL_INVEST_DOMESTIC_SECNO,x.INSPECT_TYPE,
        x.SHIP_NO,x.CAPTAIN_CERT_NO,x.CAPTAIN_PHONE,x.PORT_CODE,x.INSPECTOR_CODE,x.INSPECTOR_NAME,x.PRATICE_INSPECTOR_CODE,
        x.PRATICE_INSPECTOR_NAME,x.INSPECT_DATE,x.PRELIMINARY_REVIEW_SIGN,x.DETENTION_MARK,x.INSPECT_ACTION,x.OTHER_DESC,x.REMARK,
        x.NUMBER_OF_DEFECTS,x.CORRECT_MARK,x.NOT_CLOSE_DEFECTSNUM,x.IS_SPECIAL_INSP,x.SECURITY_TYPE,x.IS_PASS_SPEC_INSP,
        x.PRIORITY_ORDER,x.FSC_BUSI_NO,x.RISK_ATTRIBUTE
        from bds_biz_data.SHP_STATE_CONTROL x
        where x.ship_no = (SELECT  DISTINCT SHIP_NO FROM
        (select ship_id, 'A'||ship_firstreg_no SHIP_NO from SHP_BASIC_DATA  where ship_id=#{shipId}) where rownum =1 )
        union all
        select
        x.DOMESTIC_SECURITY_NUMBER,x.STATUS_CONTROL_ID,x.TASK_ID,x.VOYAGE_ID,x.PREL_INVEST_DOMESTIC_SECNO,x.INSPECT_TYPE,
        x.SHIP_NO,x.CAPTAIN_CERT_NO,x.CAPTAIN_PHONE,x.PORT_CODE,x.INSPECTOR_CODE,x.INSPECTOR_NAME,x.PRATICE_INSPECTOR_CODE,
        x.PRATICE_INSPECTOR_NAME,x.INSPECT_DATE,x.PRELIMINARY_REVIEW_SIGN,x.DETENTION_MARK,x.INSPECT_ACTION,x.OTHER_DESC,x.REMARK,
        x.NUMBER_OF_DEFECTS,x.CORRECT_MARK,x.NOT_CLOSE_DEFECTSNUM,x.IS_SPECIAL_INSP,x.SECURITY_TYPE,x.IS_PASS_SPEC_INSP,
        x.PRIORITY_ORDER,x.FSC_BUSI_NO,x.RISK_ATTRIBUTE
        from bds_biz_data.SHP_STATE_CONTROL x
        where x.ship_no = ( select  'B' || ship_imo from SHP_BASIC_DATA  where ship_imo IS NOT NULL AND  ship_id=#{shipId} and rownum =1 ))x
        where 1=1
        ?{begintime,and x.INSPECT_DATE >= to_date(#{begintime}, 'yyyy-MM-dd hh24:mi:ss')}
        ?{endtime,and x.INSPECT_DATE <= to_date(#{endtime}, 'yyyy-MM-dd hh24:mi:ss')}
        order by x.inspect_date desc) x
        where rownum = 1""";

var fsc=db.base_data.camel().selectOne(sql);
if(fsc!=null){
        if(fsc.get("preliminaryReviewSign")!=null && fsc.get("preliminaryReviewSign")!=''){
                fsc.put("preliminaryReviewSign",TagUtils.getTagNameByCode("inspectMark",fsc.get("preliminaryReviewSign")::string))
        }
        fsc.put("portCodeCn",TagUtils.getTagNameByCode("portListTag",fsc.get("portCode")))    
        fsc.put("portCode",TagUtils.getTagNameByCode("portListTag",fsc.get("portCode")))    
        fsc.put("detentionMark",TagUtils.getTagNameByCode("isOwnTag",fsc.get("detentionMark")))       
}    
if(fsc==null){
  fsc={};
}
sql="""select *
        from (select  FORM_A_ID, FLAG_STATE_CODE, FORM_A_COMP_ID, FORM_A_INSP_PORT_CODE, SHIP_TYPE_CODE, FORM_A_INSP_AUTH_CODE, 
        FORM_A_INSP_DATE, FORM_A_INSP_DETENTION, FORM_A_INSP_COMMENT, FORM_A_INSP_ID, SHIP_IMO, SHIP_NAME_EN, SHIP_CALLSIGN,    
        MMSI,FORM_A_SHIP_DATE_KEEL_LAID, SHIP_GROSSTON, FORM_A_SHIP_DEADWEIGHT, FORM_A_SHIP_CLASS_SOCIETY_NAME, ID_CODE, CMP_NM, 
        FORM_A_RELEASE_DATE, FORM_A_INSP_PSCO_NAME,FORM_A_INSP_TYPE, FORM_A_LAST_MODIFY_TIME, FORM_A_SUBMIT_TIME, FORM_A_DEF_TOTAL, 
        NAME_OF_MASTER,FORM_A_INSP_DISTRICT, FORM_A_INSP_DISTRICT_OFFICE,FORM_A_INSP_SUPP_DOCUM, FORM_A_ACCEPT_BY_APCIS_TIME,
        FORM_A_TRAINEE_NAME,FORM_A_SHIP_CLASS_SOCIETY_CODE, FORM_A_COMP_IMO, FORM_A_INSP_AUTH_REFERENCE,FORM_A_COMP_ADDRESS,
        FORM_A_COMP_TOWN, FORM_A_COMP_REGISTRATION, FORM_A_COMP_RESIDENCE, FORM_A_COMP_PHONE, FORM_A_COMP_FAX, FORM_A_COMP_EMAIL, 
        FORM_A_COMP_WEBSITE, FORM_A_PORT_OFFICE,count(*) OVER() 
        total_count
        from PSC_INSP_FORM_A  where 1=1 
        ?{begintime,and FORM_A_INSP_DATE >= to_date(#{beginTime}, 'yyyy-MM-dd hh24:mi:ss')}
        ?{endtime,and FORM_A_INSP_DATE <= to_date(#{endTime}, 'yyyy-MM-dd hh24:mi:ss')}
        ?{shipNameEn,and ship_name_en = #{shipNameEn}}
        ?{shipImo,and ship_imo = #{shipImo}}
        ?{mmsi,and mmsi = #{mmsi}}
        ?{shipCallsign,and ship_callsign = #{shipCallsign}}
        order by FORM_A_LAST_MODIFY_TIME desc) x
        where rownum = 1
        """;
var psc=db.biz_data.camel().selectOne(sql);
if(psc==null){
  psc={};
}
sql="""select *
        from (select distinct x.INSPECT_NO,x.SUPERVISION_ID,x.TASK_ID,x.VOYAGE_ID,x.SHIP_NO,x.SHIP_ID,x.SHIP_NAME_CN,x.SHIP_OPERATOR,
        x.SHIP_BUSINESS_ADDRESS,x.SHIP_BUSINESS_FAX,x.SHIP_MANAGER,x.SHIP_MANAGER_ADDR,x.SHIP_MANAGER_FAX,x.CAPTAIN_NAME,
        x.INSPECT_ORG,x.INSPECTION_SITE,x.INSPECT_DATE,x.INSPECTOR_CODE,x.INSPECTOR_NAME,x.INSPECT_TIME_LIMIT,x.REASON,
        x.PROBLEM_OR_VIOLATION,x.REMARK,x.SPOT_BUSI_NO,x.PRIORITY_ORDER,x.RISK_ATTRIBUTE,x.PRATICE_INSPECTOR_CODE,
        x.PRATICE_INSPECTOR_NAME,x.IS_SPECIAL_INSPECT,x.INSPECT_TYPE,x.IF_SAFEINSPECT,x.PRELIMINARY_REVIEW_SIGN,
        x.INITIAL_INSPECT_NO,x.NUMBER_OF_DEFECTS,x.CORRECT_MARK,x.NOT_CLOSE_DEFECTSNUM,y.SHIP_REG_NO,
        y.SHIP_FIRSTREG_NO,y.SHIP_NAME_EN,y.SHIP_INSPECT_NO,y.SHIP_CALLSIGN,y.SHIP_IMO,
        y.MMSI,y.SHIP_REGION_TYPE,y.SHIP_ROUTE_CODE,y.SAILINGAREA_CODE,y.REGPORT_CODE,y.ORIG_REGPORT_NAME,
        y.SHIP_TYPE_CODE,y.SHIP_HULL_MATERIAL_CODE,y.SHIP_BUILT_DATE,y.SHIPYARD_CN,y.SHIP_LENGTH,y.SHIP_BREADTH,y.SHIP_DEPTH,
        y.SHIP_GROSSTON,y.SHIP_NETTON,y.SHIP_DWT,y.SHIP_ENGINE_TYPE_CODE,y.SHIP_ENGINE_NUM,y.SHIP_ENGINE_POWER,
        y.SHIP_PROPELLER_KIND_CODE,y.SHIP_PROPELLER_NUM,y.SHIP_SUMMER_DRAFT,y.SHIP_WIND_LEVEL,y.SHIP_MINIMUM_FREEBOARD,
        y.SHIP_CONTAINER_NUM,y.SHIP_PARKING_NUM,y.SHIP_PASSENGER_NUM,
       y.STATUS_FLAG,y.ORG_CODE,count(*) OVER() total_count
        from bds_biz_data.SHP_SITE_SUPERVISION x left join SHP_BASIC_DATA y on x.ship_no = ('A'||y.SHIP_FIRSTREG_NO) where x.SHIP_ID = #{shipId}
        ?{begintime,and x.INSPECT_DATE >= to_date(#{begintime}, 'yyyy-MM-dd hh24:mi:ss')}
        ?{endtime,and x.INSPECT_DATE <= to_date(#{endtime}, 'yyyy-MM-dd hh24:mi:ss')}
        order by x.inspect_date desc
        ) x
        where rownum = 1""";
var inspection = db.base_data.camel().selectOne(sql);
if(inspection!=null){
        if(inspection.get("preliminaryReviewSign")!=null && inspection.get("preliminaryReviewSign")!=''){
                inspection.put("preliminaryReviewSign",TagUtils.getTagNameByCode("inspectMark",inspection.get("preliminaryReviewSign")::string))
        }
      inspection.put("riskAttribute",TagUtils.getTagNameByCode("riskAttributeLevel",inspection.get("riskAttribute")))    
      inspection.put("priorityOrder",TagUtils.getTagNameByCode("priorityOrderTag",inspection.get("priorityOrder")))
      inspection.put("regportCodeCn",TagUtils.getTagNameByCode("shipRegportTag",inspection.get("regportCode")))            
      inspection.put("regportCode",TagUtils.getTagNameByCode("shipRegportTag",inspection.get("regportCode")))
      inspection.put("shipRouteCodeCn",TagUtils.getTagNameByCode("shipRouteLineTag",inspection.get("shipRouteCode")))            
      inspection.put("shipRouteCode",TagUtils.getTagNameByCode("shipRouteLineTag",inspection.get("shipRouteCode")))
      inspection.put("shipTypeCodeCN",TagUtils.getTagNameByCode("shipClassTag",inspection.get("shipTypeCode")))            
      inspection.put("shipTypeCode",TagUtils.getTagNameByCode("shipClassTag",inspection.get("shipTypeCode"))) 
      inspection.put("sailingareaCodeCn",TagUtils.getTagNameByCode("shipRouteAreaTag",inspection.get("sailingareaCode")))            
      inspection.put("sailingareaCode",TagUtils.getTagNameByCode("shipRouteAreaTag",inspection.get("sailingareaCode")))
      inspection.put("shipHullMaterialCodeCn",TagUtils.getTagNameByCode("shipHullTag",inspection.get("shipHullMaterialCode")))            
      inspection.put("shipHullMaterialCode",TagUtils.getTagNameByCode("shipHullTag",inspection.get("shipHullMaterialCode")))
      inspection.put("shipEngineTypeCodeCn",TagUtils.getTagNameByCode("shipEngineTag",inspection.get("shipEngineTypeCode")))            
      inspection.put("shipEngineTypeCode",TagUtils.getTagNameByCode("shipEngineTag",inspection.get("shipEngineTypeCode")))
      inspection.put("shipPropellerKindCodeCn",TagUtils.getTagNameByCode("shipPropllerTag",inspection.get("shipPropellerKindCode")))            
      inspection.put("shipPropellerKindCode",TagUtils.getTagNameByCode("shipPropllerTag",inspection.get("shipPropellerKindCode")))            
      inspection.put("shipRegionType",TagUtils.getTagNameByCode("shipRegionTypeTag",inspection.get("shipRegionType")))            
      inspection.put("orgCode",TagUtils.getTagNameByCode("issuOrgTag",inspection.get("orgCode")))            
      inspection.put("inspectOrg",TagUtils.getTagNameByCode("issuOrgTag",inspection.get("inspectOrg")))            
      inspection.put("inspectionSite",TagUtils.getTagNameByCode("berthTag",inspection.get("inspectionSite")))            
      inspection.put("riskAttribute",TagUtils.getTagNameByCode("riskAttributeLevel",inspection.get("riskAttribute")))            
      inspection.put("priorityOrder",TagUtils.getTagNameByCode("priorityOrderTag",inspection.get("priorityOrder"))) 
}
if(inspection==null){
  inspection={};
}
var back={
        "FSC":fsc,
        "PSC":psc,
        "inspection":inspection
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: back
});