{
  "properties" : { },
  "id" : "f935260542da4bd8a4e63971e5fa7d2c",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "查询船舶配员证书信息详情",
  "createTime" : null,
  "updateTime" : 1706864176740,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/queryShipManningCert",
  "method" : "GET",
  "parameters" : [ {
    "name" : "serialNo",
    "value" : "CBDJ10091300010501",
    "description" : "CBDJ10091300010501",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"basic\": [{\n            \"serialNo\": \"CBDJ10091300010501\",\n            \"shipRegNo\": \"100913000105\",\n            \"manningVersion\": \"01\",\n            \"shipType\": \"内河\",\n            \"nationVersion\": \"01\",\n            \"shipId\": \"CN20116941661\",\n            \"shipImo\": \"----\",\n            \"shipCallsign\": \"----\",\n            \"shipNameCn\": \"海巡10529\",\n            \"shipNameEn\": \"HAI XUN 10529\",\n            \"shipTypeCode\": \"公务船\",\n            \"shipGrosston\": \"7吨\",\n            \"shipEnginePower\": \"82千瓦\",\n            \"shipPassengerNum\": \"0\",\n            \"regportCode\": \"梧州\",\n            \"gmdssType\": \"\",\n            \"naviArea\": \"内河航区\",\n            \"sailingareaEn\": \"\",\n            \"autodegreCode\": \"驾机合一\",\n            \"rescueNum\": \"0\",\n            \"gmdssSituation\": \"\",\n            \"shipconvenType\": \"\",\n            \"watersCode\": \"\",\n            \"specialReq\": \"\",\n            \"routingNaviMark\": \"\",\n            \"routingNaviStart\": \"\",\n            \"routingNaviEnd\": \"\",\n            \"expdateStart\": \"2016-05-06\",\n            \"expdateEnd\": \"2021-05-05\",\n            \"statusFlag\": \"无效\",\n            \"printFlag\": \"已打印\",\n            \"orgId\": \"梧州海事局\",\n            \"remark\": \"本船舶连续航行作业时间不超过10小时，如超过10小时应增加驾驶员1人。\",\n            \"remarkEn\": \"\",\n            \"endorse\": \"\",\n            \"certPrintNo\": \"15*******62\",\n            \"regDeletionNo\": \"\",\n            \"certSerialNo\": \"\",\n            \"issuOrgCode\": \"梧州海事局\",\n            \"issuePlace\": \"\",\n            \"issuDate\": \"2016-05-06\",\n            \"certPrintOrgCode\": \"100900\",\n            \"certPrintDate\": \"2016-05-10\",\n            \"selfprintSign\": \"\",\n            \"selfprintNum\": \"0\",\n            \"selfprintIp\": \"\",\n            \"bidNo\": \"\",\n            \"invaForm\": \"证书到期自动注销\",\n            \"invamanName\": \"系统自动注销\",\n            \"invaDate\": \"2021-05-06\",\n            \"invaType\": \"换新证注销\",\n            \"invareason\": \"证书到期，自动注销\",\n            \"invamanId\": \"00000000001\",\n            \"invamanIp\": \"198.10.1.157\",\n            \"lastUpdateDate\": \"2021-05-06\",\n            \"acceptOrg\": \"\",\n            \"acceptTime\": \"1900-01-01\",\n            \"applyScopeCn\": \"\",\n            \"certVersion\": \"1\",\n            \"specialType\": \"\",\n            \"userRule\": \"\",\n            \"detailList\": [{\n                \"serialNo\": \"CBDJ10091300010501000\",\n                \"certNo\": \"CB**************01\",\n                \"post\": \"000\",\n                \"postNameCn\": \"普通船员\",\n                \"postNameEn\": \"\",\n                \"convclau\": \"--\",\n                \"certCategory\": \"\",\n                \"majorCode\": \"1\",\n                \"manningNum\": \"0\",\n                \"applNum\": \"\",\n                \"crewNumber\": \"0\",\n                \"remark\": \"\",\n                \"lastUpdateDate\": \"2017-12-27 15:50:21\"\n            }, {\n                \"serialNo\": \"CBDJ10091300010501002\",\n                \"certNo\": \"CB**************01\",\n                \"post\": \"002\",\n                \"postNameCn\": \"客运部人员\",\n                \"postNameEn\": \"\",\n                \"convclau\": \"--\",\n                \"certCategory\": \"\",\n                \"majorCode\": \"1\",\n                \"manningNum\": \"0\",\n                \"applNum\": \"\",\n                \"crewNumber\": \"0\",\n                \"remark\": \"\",\n                \"lastUpdateDate\": \"2017-12-27 15:45:53\"\n            }, {\n                \"serialNo\": \"CBDJ1009130001050115\",\n                \"certNo\": \"CB**************01\",\n                \"post\": \"15\",\n                \"postNameCn\": \"驾机员\",\n                \"postNameEn\": \"Pilot\",\n                \"convclau\": \"\",\n                \"certCategory\": \"\",\n                \"majorCode\": \"1\",\n                \"manningNum\": \"0\",\n                \"applNum\": \"\",\n                \"crewNumber\": \"0\",\n                \"remark\": \"\",\n                \"lastUpdateDate\": \"2017-12-27 15:45:16\"\n            }, {\n                \"serialNo\": \"CBDJ1009130001050119\",\n                \"certNo\": \"CB**************01\",\n                \"post\": \"19\",\n                \"postNameCn\": \"渡工\",\n                \"postNameEn\": \"Ferryman\",\n                \"convclau\": \"--\",\n                \"certCategory\": \"\",\n                \"majorCode\": \"1\",\n                \"manningNum\": \"0\",\n                \"applNum\": \"\",\n                \"crewNumber\": \"0\",\n                \"remark\": \"\",\n                \"lastUpdateDate\": \"2017-12-27 15:49:47\"\n            }, {\n                \"serialNo\": \"CBDJ1009130001050132\",\n                \"certNo\": \"CB**************01\",\n                \"post\": \"32\",\n                \"postNameCn\": \"驾驶员\",\n                \"postNameEn\": \"Navigator\",\n                \"convclau\": \"三类\",\n                \"certCategory\": \"\",\n                \"majorCode\": \"1\",\n                \"manningNum\": \"1\",\n                \"applNum\": \"\",\n                \"crewNumber\": \"1\",\n                \"remark\": \"\",\n                \"lastUpdateDate\": \"2017-12-27 15:47:05\"\n            }, {\n                \"serialNo\": \"CBDJ1009130001050151\",\n                \"certNo\": \"CB**************01\",\n                \"post\": \"51\",\n                \"postNameCn\": \"船长\",\n                \"postNameEn\": \"Master\",\n                \"convclau\": \"\",\n                \"certCategory\": \"\",\n                \"majorCode\": \"1\",\n                \"manningNum\": \"0\",\n                \"applNum\": \"\",\n                \"crewNumber\": \"0\",\n                \"remark\": \"\",\n                \"lastUpdateDate\": \"2017-12-27 15:45:46\"\n            }, {\n                \"serialNo\": \"CBDJ1009130001050152\",\n                \"certNo\": \"CB**************01\",\n                \"post\": \"52\",\n                \"postNameCn\": \"大副\",\n                \"postNameEn\": \"Chief Mate\",\n                \"convclau\": \"\",\n                \"certCategory\": \"\",\n                \"majorCode\": \"1\",\n                \"manningNum\": \"0\",\n                \"applNum\": \"\",\n                \"crewNumber\": \"0\",\n                \"remark\": \"\",\n                \"lastUpdateDate\": \"2017-12-27 15:46:24\"\n            }, {\n                \"serialNo\": \"CBDJ1009130001050153\",\n                \"certNo\": \"CB**************01\",\n                \"post\": \"53\",\n                \"postNameCn\": \"二副\",\n                \"postNameEn\": \"Second Mate\",\n                \"convclau\": \"\",\n                \"certCategory\": \"\",\n                \"majorCode\": \"1\",\n                \"manningNum\": \"0\",\n                \"applNum\": \"\",\n                \"crewNumber\": \"0\",\n                \"remark\": \"\",\n                \"lastUpdateDate\": \"2017-12-27 15:47:34\"\n            }, {\n                \"serialNo\": \"CBDJ1009130001050154\",\n                \"certNo\": \"CB**************01\",\n                \"post\": \"54\",\n                \"postNameCn\": \"三副\",\n                \"postNameEn\": \"Third Mate\",\n                \"convclau\": \"\",\n                \"certCategory\": \"\",\n                \"majorCode\": \"1\",\n                \"manningNum\": \"0\",\n                \"applNum\": \"\",\n                \"crewNumber\": \"0\",\n                \"remark\": \"\",\n                \"lastUpdateDate\": \"2017-12-27 15:50:25\"\n            }, {\n                \"serialNo\": \"CBDJ1009130001050155\",\n                \"certNo\": \"CB**************01\",\n                \"post\": \"55\",\n                \"postNameCn\": \"值班水手\",\n                \"postNameEn\": \"A.B.forming part of a navigational watch\",\n                \"convclau\": \"II/4\",\n                \"certCategory\": \"\",\n                \"majorCode\": \"1\",\n                \"manningNum\": \"0\",\n                \"applNum\": \"\",\n                \"crewNumber\": \"0\",\n                \"remark\": \"\",\n                \"lastUpdateDate\": \"2017-12-27 15:46:09\"\n            }, {\n                \"serialNo\": \"CBDJ1009130001050157\",\n                \"certNo\": \"CB**************01\",\n                \"post\": \"57\",\n                \"postNameCn\": \"助理驾驶员\",\n                \"postNameEn\": \"\",\n                \"convclau\": \"--\",\n                \"certCategory\": \"\",\n                \"majorCode\": \"1\",\n                \"manningNum\": \"0\",\n                \"applNum\": \"\",\n                \"crewNumber\": \"0\",\n                \"remark\": \"\",\n                \"lastUpdateDate\": \"2017-12-27 15:46:53\"\n            }, {\n                \"serialNo\": \"CBDJ1009130001050133\",\n                \"certNo\": \"CB**************01\",\n                \"post\": \"33\",\n                \"postNameCn\": \"轮机员\",\n                \"postNameEn\": \"\",\n                \"convclau\": \"\",\n                \"certCategory\": \"\",\n                \"majorCode\": \"2\",\n                \"manningNum\": \"0\",\n                \"applNum\": \"\",\n                \"crewNumber\": \"0\",\n                \"remark\": \"\",\n                \"lastUpdateDate\": \"2017-12-27 15:50:25\"\n            }, {\n                \"serialNo\": \"CBDJ1009130001050161\",\n                \"certNo\": \"CB**************01\",\n                \"post\": \"61\",\n                \"postNameCn\": \"轮机长\",\n                \"postNameEn\": \"Chief Engineer officer\",\n                \"convclau\": \"\",\n                \"certCategory\": \"\",\n                \"majorCode\": \"2\",\n                \"manningNum\": \"0\",\n                \"applNum\": \"\",\n                \"crewNumber\": \"0\",\n                \"remark\": \"\",\n                \"lastUpdateDate\": \"2017-12-27 15:50:09\"\n            }, {\n                \"serialNo\": \"CBDJ1009130001050162\",\n                \"certNo\": \"CB**************01\",\n                \"post\": \"62\",\n                \"postNameCn\": \"大管轮\",\n                \"postNameEn\": \"Second engineer officer\",\n                \"convclau\": \"\",\n                \"certCategory\": \"\",\n                \"majorCode\": \"2\",\n                \"manningNum\": \"0\",\n                \"applNum\": \"\",\n                \"crewNumber\": \"0\",\n                \"remark\": \"\",\n                \"lastUpdateDate\": \"2017-12-27 15:45:22\"\n            }, {\n                \"serialNo\": \"CBDJ1009130001050163\",\n                \"certNo\": \"CB**************01\",\n                \"post\": \"63\",\n                \"postNameCn\": \"二管轮\",\n                \"postNameEn\": \"Third engineer officer\",\n                \"convclau\": \"\",\n                \"certCategory\": \"\",\n                \"majorCode\": \"2\",\n                \"manningNum\": \"0\",\n                \"applNum\": \"\",\n                \"crewNumber\": \"0\",\n                \"remark\": \"\",\n                \"lastUpdateDate\": \"2017-12-27 15:49:15\"\n            }, {\n                \"serialNo\": \"CBDJ1009130001050164\",\n                \"certNo\": \"CB**************01\",\n                \"post\": \"64\",\n                \"postNameCn\": \"三管轮\",\n                \"postNameEn\": \"Fourth engineer officer\",\n                \"convclau\": \"\",\n                \"certCategory\": \"\",\n                \"majorCode\": \"2\",\n                \"manningNum\": \"0\",\n                \"applNum\": \"\",\n                \"crewNumber\": \"0\",\n                \"remark\": \"\",\n                \"lastUpdateDate\": \"2017-12-27 15:49:39\"\n            }, {\n                \"serialNo\": \"CBDJ1009130001050165\",\n                \"certNo\": \"CB**************01\",\n                \"post\": \"65\",\n                \"postNameCn\": \"值班机工\",\n                \"postNameEn\": \"Motorman forming part of an engineering watch\",\n                \"convclau\": \"--\",\n                \"certCategory\": \"\",\n                \"majorCode\": \"2\",\n                \"manningNum\": \"1\",\n                \"applNum\": \"\",\n                \"crewNumber\": \"1\",\n                \"remark\": \"\",\n                \"lastUpdateDate\": \"2017-12-27 15:45:46\"\n            }, {\n                \"serialNo\": \"CBDJ1009130001050169\",\n                \"certNo\": \"CB**************01\",\n                \"post\": \"69\",\n                \"postNameCn\": \"助理轮机员\",\n                \"postNameEn\": \"\",\n                \"convclau\": \"--\",\n                \"certCategory\": \"\",\n                \"majorCode\": \"2\",\n                \"manningNum\": \"0\",\n                \"applNum\": \"\",\n                \"crewNumber\": \"0\",\n                \"remark\": \"\",\n                \"lastUpdateDate\": \"2017-12-27 15:47:54\"\n            }, {\n                \"serialNo\": \"CBDJ1009130001050173\",\n                \"certNo\": \"CB**************01\",\n                \"post\": \"73\",\n                \"postNameCn\": \"GMDSS 通用操作员\",\n                \"postNameEn\": \"GMDSS General  Operator\",\n                \"convclau\": \"--\",\n                \"certCategory\": \"\",\n                \"majorCode\": \"3\",\n                \"manningNum\": \"0\",\n                \"applNum\": \"\",\n                \"crewNumber\": \"0\",\n                \"remark\": \"\",\n                \"lastUpdateDate\": \"2017-12-27 15:46:44\"\n            }]\n        }]\n    }\n}",
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
        "name" : "basic",
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
            "name" : "serialNo",
            "value" : "CBDJ10091300010501",
            "description" : "",
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
            "value" : "100913000105",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "manningVersion",
            "value" : "01",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "shipType",
            "value" : "内河",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "nationVersion",
            "value" : "01",
            "description" : "",
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
            "value" : "CN20116941661",
            "description" : "",
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
            "value" : "----",
            "description" : "",
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
            "value" : "----",
            "description" : "",
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
            "value" : "海巡10529",
            "description" : "",
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
            "value" : "HAI XUN 10529",
            "description" : "",
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
            "value" : "公务船",
            "description" : "",
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
            "value" : "7吨",
            "description" : "",
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
            "value" : "82千瓦",
            "description" : "",
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
            "name" : "regportCode",
            "value" : "梧州",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "gmdssType",
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
            "name" : "naviArea",
            "value" : "内河航区",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "sailingareaEn",
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
            "name" : "autodegreCode",
            "value" : "驾机合一",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "rescueNum",
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
            "name" : "gmdssSituation",
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
            "name" : "shipconvenType",
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
            "name" : "watersCode",
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
            "name" : "specialReq",
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
            "name" : "routingNaviMark",
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
            "name" : "routingNaviStart",
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
            "name" : "routingNaviEnd",
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
            "name" : "expdateStart",
            "value" : "2016-05-06",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "expdateEnd",
            "value" : "2021-05-05",
            "description" : "",
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
            "value" : "无效",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "printFlag",
            "value" : "已打印",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "orgId",
            "value" : "梧州海事局",
            "description" : "",
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
            "value" : "本船舶连续航行作业时间不超过10小时，如超过10小时应增加驾驶员1人。",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "remarkEn",
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
            "name" : "endorse",
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
            "name" : "certPrintNo",
            "value" : "15*******62",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "regDeletionNo",
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
            "name" : "certSerialNo",
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
            "name" : "issuOrgCode",
            "value" : "梧州海事局",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "issuePlace",
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
            "name" : "issuDate",
            "value" : "2016-05-06",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "certPrintOrgCode",
            "value" : "100900",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "certPrintDate",
            "value" : "2016-05-10",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "selfprintSign",
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
            "name" : "selfprintNum",
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
            "name" : "selfprintIp",
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
            "name" : "bidNo",
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
            "name" : "invaForm",
            "value" : "证书到期自动注销",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "invamanName",
            "value" : "系统自动注销",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "invaDate",
            "value" : "2021-05-06",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "invaType",
            "value" : "换新证注销",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "invareason",
            "value" : "证书到期，自动注销",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "invamanId",
            "value" : "00000000001",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "invamanIp",
            "value" : "198.10.1.157",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "lastUpdateDate",
            "value" : "2021-05-06",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "acceptOrg",
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
            "name" : "acceptTime",
            "value" : "1900-01-01",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "applyScopeCn",
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
            "name" : "certVersion",
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
            "name" : "specialType",
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
            "name" : "userRule",
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
            "name" : "detailList",
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
                "name" : "serialNo",
                "value" : "CBDJ10091300010501000",
                "description" : "",
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
                "value" : "CB**************01",
                "description" : "",
                "required" : false,
                "dataType" : "String",
                "type" : "",
                "defaultValue" : "",
                "validateType" : "",
                "error" : "",
                "expression" : "",
                "children" : [ ]
              }, {
                "name" : "post",
                "value" : "000",
                "description" : "",
                "required" : false,
                "dataType" : "String",
                "type" : "",
                "defaultValue" : "",
                "validateType" : "",
                "error" : "",
                "expression" : "",
                "children" : [ ]
              }, {
                "name" : "postNameCn",
                "value" : "普通船员",
                "description" : "",
                "required" : false,
                "dataType" : "String",
                "type" : "",
                "defaultValue" : "",
                "validateType" : "",
                "error" : "",
                "expression" : "",
                "children" : [ ]
              }, {
                "name" : "postNameEn",
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
                "name" : "convclau",
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
                "name" : "certCategory",
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
                "name" : "majorCode",
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
                "name" : "manningNum",
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
                "name" : "applNum",
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
                "name" : "crewNumber",
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
                "name" : "lastUpdateDate",
                "value" : "2017-12-27 15:50:21",
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
      } ]
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;

var cbSql;

cbSql = """
      select SERIAL_NO,SHIP_REG_NO,MANNING_VERSION,SHIP_TYPE,NATION_VERSION,SHIP_ID,SHIP_IMO,SHIP_CALLSIGN,
      SHIP_NAME_CN,SHIP_NAME_EN,SHIP_TYPE_CODE,SHIP_GROSSTON||'吨' SHIP_GROSSTON,SHIP_ENGINE_POWER||'千瓦' SHIP_ENGINE_POWER,SHIP_PASSENGER_NUM
      ,REGPORT_CODE,GMDSS_TYPE,NAVI_AREA,SAILINGAREA_EN,AUTODEGRE_CODE,RESCUE_NUM,GMDSS_SITUATION,
      SHIPCONVEN_TYPE,WATERS_CODE,SPECIAL_REQ,ROUTING_NAVI_MARK, ROUTING_NAVI_START,ROUTING_NAVI_END,
      replace(to_char(EXPDATE_START, 'yyyy-mm-dd'),'1900-01-01','--') EXPDATE_START,replace(to_char(EXPDATE_END, 'yyyy-mm-dd'),'1900-01-01','--') EXPDATE_END,
      STATUS_FLAG,PRINT_FLAG,ORG_ID,REMARK,REMARK_EN,ENDORSE,CERT_PRINT_NO,REG_DELETION_NO,
      CERT_SERIAL_NO,ISSU_ORG_CODE,ISSUE_PLACE,replace(to_char(ISSU_DATE, 'yyyy-mm-dd'),'1900-01-01','--') ISSU_DATE,CERT_PRINT_ORG_CODE,
      replace(to_char(CERT_PRINT_DATE, 'yyyy-mm-dd'),'1900-01-01','--') CERT_PRINT_DATE,
                     SELFPRINT_SIGN,SELFPRINT_NUM,SELFPRINT_IP,BID_NO,INVA_FORM,INVAMAN_NAME,
                     replace(to_char(INVA_DATE, 'yyyy-mm-dd'),'1900-01-01','--') INVA_DATE,INVA_TYPE,INVAREASON,INVAMAN_ID,
                     INVAMAN_IP,to_char(LAST_UPDATE_DATE, 'yyyy-mm-dd') LAST_UPDATE_DATE,ACCEPT_ORG,
                     to_char(ACCEPT_TIME, 'yyyy-mm-dd') ACCEPT_TIME,APPLY_SCOPE_CN,CERT_VERSION,SPECIAL_TYPE,USER_RULE 
                     from SHP_MANNING_CERT where serial_no=#{serialNo} and delete_flag='0'
""";

var basic = db.base_data.camel().select(cbSql);

for (item in basic) {
    item.put("orgId", TagUtils.getTagNameByCode("issuOrgTag", item.get("orgId")));
    item.put("printFlag", TagUtils.getTagNameByCode("printFlag", item.get("printFlag")));
    item.put("issuOrgCode", TagUtils.getTagNameByCode("issuOrgTag", item.get("issuOrgCode")));
    item.put("shipTypeCode", TagUtils.getTagNameByCode("shipClassTag", item.get("shipTypeCode")));
    item.put("regportCode", TagUtils.getTagNameByCode("shipRegportTag", item.get("regportCode")));
    item.put("naviArea", TagUtils.getTagNameByCode("shipManningAreaTag", item.get("naviArea")));
    item.put("invaForm", TagUtils.getTagNameByCode("invaFormTag", item.get("invaForm")));
    item.put("invaType", TagUtils.getTagNameByCode("invaTypeTag", item.get("invaType")));
    item.put("gmdssType", TagUtils.getTagNameByCode("gmdssTypeTag", item.get("gmdssType")));
    item.put("autodegreCode", TagUtils.getTagNameByCode("autoDegreTag", item.get("autodegreCode")));
    item.put("statusFlag", TagUtils.getTagNameByCode("validTag", item.get("statusFlag")));
    item.put("watersCode", TagUtils.getTagNameByCode("wartersTag", item.get("watersCode")));
    item.put("acceptOrg", TagUtils.getTagNameByCode("issuOrgTag", item.get("acceptOrg")));
    item.put("shipType", TagUtils.getTagNameByCode("maningShipTypeTag", item.get("shipType")));
    var serialno = item.get("serialNo");
    var sql = """
       select SERIAL_NO,CERT_NO,POST,POST_NAME_CN,POST_NAME_EN,CONVCLAU,CERT_CATEGORY,MAJOR_CODE,MANNING_NUM,APPL_NUM,
                    CREW_NUMBER,REMARK,LAST_UPDATE_DATE 
                    from SHP_MANNING_CERT_DETAIL where cert_no=""" + "'" + serialno + "'" +
        """  and delete_flag='0' order by major_code asc, post asc
    """
    var manningDetailList = db.base_data.camel().select(sql);
    if (manningDetailList == null) {
        manningDetailList = [];
    }
    for (item1 in manningDetailList) {
        //数据脱敏
        item1.put("certNo", DesensitizationUtil.isIdCardNo(item1.get("certNo")::string))
    }
    item.put("detailList", manningDetailList);
    //数据脱敏
    item.put("certPrintNo", DesensitizationUtil.isIdCardNo(item.get("certPrintNo")::string))
}

if (basic == null) {
    basic = [];
}
var data = {
    "basic": basic
}

import response;
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: data
});