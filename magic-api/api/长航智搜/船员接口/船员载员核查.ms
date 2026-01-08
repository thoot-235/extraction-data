{
  "properties" : { },
  "id" : "0f84a94ce74745acb4967f1b55223827",
  "script" : null,
  "groupId" : "69f9552f682c4f55a2f59d8663909151",
  "name" : "船员载员核查",
  "createTime" : null,
  "updateTime" : 1723786684561,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getCheckReportCondition",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n\"idCardNo\":\"75JYsMA3e8eZ0QzdG1LIIfoV1WGDAn1F1KMA2nMEKJk=\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"list\": [{\n            \"totalCount\": \"1\",\n            \"serialNo\": \"080102000055101\",\n            \"businessCode\": \"20180904185038296080102\",\n            \"isPartTimejob\": \"0\",\n            \"offiOrgId\": \"\",\n            \"offiOperId\": \"08010500007\",\n            \"offiOperName\": \"龚亮\",\n            \"offiOperTime\": \"2018-09-04 18:50:38\",\n            \"applState\": \"1\",\n            \"validFlag\": \"有效\",\n            \"createrOrgId\": \"080102\",\n            \"createrId\": \"08010500007\",\n            \"createrName\": \"龚亮\",\n            \"creatingTime\": \"2018-09-04 18:50:38\",\n            \"orgId\": \"080102\",\n            \"idCardNo\": \"450324198908245815\",\n            \"name\": \"宗树林\",\n            \"compCertNo\": \"BGA221201608952\",\n            \"certTypeCode\": \"\",\n            \"certCateCode\": \"C\",\n            \"certLevelCode\": \"62\",\n            \"certDutyCode\": \"61\",\n            \"shipNo\": \"A386000018\",\n            \"shipId\": \"CN19919865467\",\n            \"offiShipNameCn\": \"万德盛\",\n            \"offiShipNameEn\": \"WAN DE SHENG\",\n            \"shipRank\": \"750至3000千瓦\",\n            \"shipGrosston\": \"5003\",\n            \"shipEnginePower\": \"2400\",\n            \"shipOwner\": \"平潭综合实验区岚祺船务有限公司、林鹤鹏\",\n            \"shipClassCode\": \"干货船\",\n            \"naviArea\": \"沿海航区\",\n            \"shipRouteCode\": \"1\",\n            \"dutyCaptainName\": \"\",\n            \"dutyCaptainId\": \"\",\n            \"dutyCaptainPhone\": \"\",\n            \"shipPassengerNum\": \"\",\n            \"offiDuty\": \"大管轮\",\n            \"offiDate\": \"2018-09-04\",\n            \"offiLocation\": \"080100\",\n            \"offiLocationName\": \"福州海事局\",\n            \"offiSources\": \"现场采集（刷卡）\",\n            \"dismissDate\": \"2018-09-27\",\n            \"dismissPlace\": \"040400\",\n            \"dismissPlaceName\": \"\",\n            \"dismissSources\": \"现场采集（刷卡）\",\n            \"dismOgrId\": \"040400\",\n            \"dismOperId\": \"04040000042\",\n            \"dismOperName\": \"卢鑫\",\n            \"dismOperTime\": \"2018-09-27 17:15:33\",\n            \"offiAndDismSign\": \"1\",\n            \"depaEntryMark\": \"0\",\n            \"offiDays\": \"24\",\n            \"ifuseFlag\": \"0\",\n            \"isNormDism\": \"1\",\n            \"dismissReas\": \"\",\n            \"smalvessSign\": \"\",\n            \"remark\": \"\",\n            \"checkResult\": \"\",\n            \"checkContent\": \"\",\n            \"createDate\": \"2019-01-16 03:31:38\",\n            \"lastUpdateDate\": \"2021-05-13 09:54:08\"\n        }],\n        \"total\": 1\n    }\n}",
  "description" : "",
  "requestBodyDefinition" : {
    "name" : "",
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ {
      "name" : "idCardNo",
      "value" : "75JYsMA3e8eZ0QzdG1LIIfoV1WGDAn1F1KMA2nMEKJk=",
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
            "name" : "serialNo",
            "value" : "080102000055101",
            "description" : "",
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
            "value" : "20180904185038296080102",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "isPartTimejob",
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
            "name" : "offiOrgId",
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
            "name" : "offiOperId",
            "value" : "08010500007",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "offiOperName",
            "value" : "龚亮",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "offiOperTime",
            "value" : "2018-09-04 18:50:38",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "applState",
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
            "name" : "validFlag",
            "value" : "有效",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "createrOrgId",
            "value" : "080102",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "createrId",
            "value" : "08010500007",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "createrName",
            "value" : "龚亮",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "creatingTime",
            "value" : "2018-09-04 18:50:38",
            "description" : "",
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
            "value" : "080102",
            "description" : "",
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
            "value" : "450324198908245815",
            "description" : "",
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
            "value" : "宗树林",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "compCertNo",
            "value" : "BGA221201608952",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "certTypeCode",
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
            "name" : "certCateCode",
            "value" : "C",
            "description" : "",
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
            "value" : "62",
            "description" : "",
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
            "value" : "61",
            "description" : "",
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
            "value" : "A386000018",
            "description" : "",
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
            "value" : "CN19919865467",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "offiShipNameCn",
            "value" : "万德盛",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "offiShipNameEn",
            "value" : "WAN DE SHENG",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "shipRank",
            "value" : "750至3000千瓦",
            "description" : "",
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
            "value" : "5003",
            "description" : "",
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
            "value" : "2400",
            "description" : "",
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
            "value" : "平潭综合实验区岚祺船务有限公司、林鹤鹏",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "shipClassCode",
            "value" : "干货船",
            "description" : "",
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
            "value" : "沿海航区",
            "description" : "",
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
            "name" : "dutyCaptainName",
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
            "name" : "dutyCaptainId",
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
            "name" : "dutyCaptainPhone",
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
            "name" : "offiDuty",
            "value" : "大管轮",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "offiDate",
            "value" : "2018-09-04",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "offiLocation",
            "value" : "080100",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "offiLocationName",
            "value" : "福州海事局",
            "description" : "",
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
            "value" : "现场采集（刷卡）",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "dismissDate",
            "value" : "2018-09-27",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "dismissPlace",
            "value" : "040400",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "dismissPlaceName",
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
            "name" : "dismissSources",
            "value" : "现场采集（刷卡）",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "dismOgrId",
            "value" : "040400",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "dismOperId",
            "value" : "04040000042",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "dismOperName",
            "value" : "卢鑫",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "dismOperTime",
            "value" : "2018-09-27 17:15:33",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "offiAndDismSign",
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
            "name" : "depaEntryMark",
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
            "name" : "offiDays",
            "value" : "24",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "ifuseFlag",
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
            "name" : "isNormDism",
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
            "name" : "dismissReas",
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
            "name" : "smalvessSign",
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
            "name" : "checkResult",
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
            "name" : "checkContent",
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
            "name" : "createDate",
            "value" : "2019-01-16 03:31:38",
            "description" : "",
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
            "value" : "2021-05-13 09:54:08",
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
        "value" : "1",
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
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;
import 'org.springblade.common.utils.ZzSecurityHelper' as ZzSecurityHelper;
//idCardNo = (idCardNo == null ? "" : idCardNo).replace("<em>", "").replace("</em>", "");

var idCardNo=(body.idCardNo==null?"":body.idCardNo).replace("<em>","").replace("</em>","");
idCardNo=ZzSecurityHelper.decryptAES(body.idCardNo);
idCardNo = idCardNo.replace("<em>","").replace("</em>","");
if(idCardNo==null || idCardNo==''){
    return  response.json({
        "code": 0,
        "message": "参数[idCardNo]为必填项",
        "data": {},      
        "executeTime": 2
    });
}

var pageNum = body.page;
pageNum= pageNum!=null&pageNum!=''? pageNum :1

var pageSize = body.size;
pageSize= pageSize!=null&pageSize!=''? pageSize :10


var pageStart = """ select *
        from (select rownum rowno, b.*
              from (""";
var pageEnd = """ ) b
        where rownum <= ( #{pageNum} * #{pageSize})) a
        where a.rowno > ( ( #{pageNum} - 1 ) * #{pageSize} )""";
        
var sql = """
      select distinct  count(distinct a.SERIAL_NO ) OVER() total_count ,a.SERIAL_NO,'1' as check_Flag,
        a.BUSINESS_CODE,
        a.IS_PART_TIMEJOB,
        a.OFFI_ORG_ID,
        a.OFFI_OPER_ID,
        a.OFFI_OPER_NAME,
       case when to_char( a.OFFI_OPER_TIME,'yyyy-mm-dd')='1900-01-01' then '--' 
         else  to_char( a.OFFI_OPER_TIME,'yyyy-mm-dd hh24:mi:ss') end OFFI_OPER_TIME,
        a.APPL_STATE,
        a.VALID_FLAG,
        a.CREATER_ORG_ID,
        a.CREATER_ID,
        a.CREATER_NAME,
       case when to_char( a.CREATING_TIME,'yyyy-mm-dd')='1900-01-01' then '--' else to_char( a.CREATING_TIME,'yyyy-mm-dd hh24:mi:ss') end CREATING_TIME,
        a.ORG_ID,
        a.ID_CARD_NO,
        a.NAME,
        a.COMP_CERT_NO,
        a.CERT_TYPE_CODE,
        a.CERT_CATE_CODE,
        a.CERT_LEVEL_CODE,
        a.CERT_DUTY_CODE,
        a.SHIP_NO,
        a.SHIP_ID,
        a.OFFI_SHIP_NAME_CN,
        a.OFFI_SHIP_NAME_EN,
        a.SHIP_RANK,
        a.SHIP_GROSSTON,
        a.SHIP_ENGINE_POWER,
        a.SHIP_OWNER,
        a.SHIP_CLASS_CODE,
        a.NAVI_AREA,
        a.SHIP_ROUTE_CODE,
        a.DUTY_CAPTAIN_NAME,
        a.DUTY_CAPTAIN_ID,
        a.DUTY_CAPTAIN_PHONE,
        a.SHIP_PASSENGER_NUM,
        a.OFFI_DUTY,
       case when to_char( a.OFFI_DATE, 'yyyy-mm-dd')='1900-01-01' then '--' else to_char( a.OFFI_DATE, 'yyyy-mm-dd') end  as OFFI_DATE,
        a.OFFI_LOCATION,
        a.OFFI_LOCATION_NAME,
        a.OFFI_SOURCES,
      case when  to_char( a.DISMISS_DATE, 'yyyy-mm-dd')='1900-01-01' then '--' else to_char( a.DISMISS_DATE, 'yyyy-mm-dd') end  as DISMISS_DATE,
        a.DISMISS_PLACE,
        a.DISMISS_PLACE_NAME,
        a.DISMISS_SOURCES,
        a.DISM_OGR_ID,
        a.DISM_OPER_ID,
        a.DISM_OPER_NAME,
       case when to_char( a.DISM_OPER_TIME,'yyyy-mm-dd')='1900-01-01' then '--' else to_char( a.DISM_OPER_TIME,'yyyy-mm-dd hh24:mi:ss') end DISM_OPER_TIME,
        a.OFFI_AND_DISM_SIGN,
        a.DEPA_ENTRY_MARK,
        a.OFFI_DAYS,
        a.IFUSE_FLAG,
        a.IS_NORM_DISM,
        a.DISMISS_REAS,
        a.SMALVESS_SIGN,
        a.REMARK,
        a.CHECK_RESULT,
        a.CHECK_CONTENT,
        a.CREATE_DATE,
        a.LAST_UPDATE_DATE
   from bds_biz_data.CREW_SERVICE_EXPE a, bds_biz_data.CREW_SERVICE_EXPE b
  where  a.OFFI_AND_DISM_SIGN='1' and b.OFFI_AND_DISM_SIGN='1' and a.id_card_no = b.id_card_no
    and a.ship_id <> b.ship_id
    and a.OFFI_DUTY<>b.OFFI_DUTY
    and ((to_char(a.OFFI_DATE, 'yyyy-mm-dd') <
        to_char(b.OFFI_DATE, 'yyyy-mm-dd') and
        to_char( (case
                   when to_char(a.DISMISS_DATE, 'yyyy-MM-dd') = '1900-01-01' then to_date('3000','yyyy')
                   else a.DISMISS_DATE end ), 'yyyy-mm-dd') >
        to_char(b.OFFI_DATE, 'yyyy-mm-dd')) 
        
        or
        ((to_char(a.OFFI_DATE, 'yyyy-mm-dd') >
        to_char(b.OFFI_DATE, 'yyyy-mm-dd') and
        to_char(a.OFFI_DATE, 'yyyy-mm-dd') <
        to_char( (case
                   when to_char(b.DISMISS_DATE, 'yyyy-MM-dd') = '1900-01-01' then to_date('3000','yyyy')
                   else b.DISMISS_DATE end ), 'yyyy-mm-dd'))))
            and a.id_card_no = #{idCardNo}
         order by OFFI_DATE desc
"""
//var ret = db.biz_data.camel().page(sql);
var list=db.biz_data.camel().select(pageStart+sql+pageEnd);
var totalCount=0;

var dataOne;
if(list.size()==0){
    sql = """
      select distinct  count(distinct a.SERIAL_NO ) OVER() total_count ,a.SERIAL_NO,'0' as check_Flag,
        a.BUSINESS_CODE,
        a.IS_PART_TIMEJOB,
        a.OFFI_ORG_ID,
        a.OFFI_OPER_ID,
        a.OFFI_OPER_NAME,
       case when to_char( a.OFFI_OPER_TIME,'yyyy-mm-dd')='1900-01-01' then '--' 
         else  to_char( a.OFFI_OPER_TIME,'yyyy-mm-dd hh24:mi:ss') end OFFI_OPER_TIME,
        a.APPL_STATE,
        a.VALID_FLAG,
        a.CREATER_ORG_ID,
        a.CREATER_ID,
        a.CREATER_NAME,
       case when to_char( a.CREATING_TIME,'yyyy-mm-dd')='1900-01-01' then '--' else to_char( a.CREATING_TIME,'yyyy-mm-dd hh24:mi:ss') end CREATING_TIME,
        a.ORG_ID,
        a.ID_CARD_NO,
        a.NAME,
        a.COMP_CERT_NO,
        a.CERT_TYPE_CODE,
        a.CERT_CATE_CODE,
        a.CERT_LEVEL_CODE,
        a.CERT_DUTY_CODE,
        a.SHIP_NO,
        a.SHIP_ID,
        a.OFFI_SHIP_NAME_CN,
        a.OFFI_SHIP_NAME_EN,
        a.SHIP_RANK,
        a.SHIP_GROSSTON,
        a.SHIP_ENGINE_POWER,
        a.SHIP_OWNER,
        a.SHIP_CLASS_CODE,
        a.NAVI_AREA,
        a.SHIP_ROUTE_CODE,
        a.DUTY_CAPTAIN_NAME,
        a.DUTY_CAPTAIN_ID,
        a.DUTY_CAPTAIN_PHONE,
        a.SHIP_PASSENGER_NUM,
        a.OFFI_DUTY,
       case when to_char( a.OFFI_DATE, 'yyyy-mm-dd')='1900-01-01' then '--' else to_char( a.OFFI_DATE, 'yyyy-mm-dd') end  as OFFI_DATE,
        a.OFFI_LOCATION,
        a.OFFI_LOCATION_NAME,
        a.OFFI_SOURCES,
      case when  to_char( a.DISMISS_DATE, 'yyyy-mm-dd')='1900-01-01' then '--' else to_char( a.DISMISS_DATE, 'yyyy-mm-dd') end  as DISMISS_DATE,
        a.DISMISS_PLACE,
        a.DISMISS_PLACE_NAME,
        a.DISMISS_SOURCES,
        a.DISM_OGR_ID,
        a.DISM_OPER_ID,
        a.DISM_OPER_NAME,
       case when to_char( a.DISM_OPER_TIME,'yyyy-mm-dd')='1900-01-01' then '--' else to_char( a.DISM_OPER_TIME,'yyyy-mm-dd hh24:mi:ss') end DISM_OPER_TIME,
        a.OFFI_AND_DISM_SIGN,
        a.DEPA_ENTRY_MARK,
        a.OFFI_DAYS,
        a.IFUSE_FLAG,
        a.IS_NORM_DISM,
        a.DISMISS_REAS,
        a.SMALVESS_SIGN,
        a.REMARK,
        a.CHECK_RESULT,
        a.CHECK_CONTENT,
        a.CREATE_DATE,
        a.LAST_UPDATE_DATE
   from bds_biz_data.CREW_SERVICE_EXPE a
  where  a.OFFI_AND_DISM_SIGN='1' 
            and a.id_card_no = #{idCardNo}
         order by OFFI_DATE desc
      

""";
   dataOne=db.biz_data.camel().selectOne(sql);
}




if(list==null){
   list=[];
} 
for(item in list){ 
    totalCount = item.get("totalCount");
} 
if(dataOne!=null){
  list.add(dataOne);
  totalCount=1;
}    
var ret={
        "list":list,
        "total":Integer.parseInt(totalCount::string)
}
if(ret!=null&&ret.list!=null){
for (item in ret.list) {
   var offiDays=item.get("offiDays")==null?"0":item.get("offiDays").asString();
    if("0"==offiDays){
      item.put("offiDays", "--");
    }
   

    item.put("offiDuty", TagUtils.getTagNameByCode("offiDutyTag", item.get("offiDuty")));
    item.put("offiSources", TagUtils.getTagNameByCode("offiSourcesTag", item.get("offiSources")));
    item.put("dismissSources", TagUtils.getTagNameByCode("offiSourcesTag", item.get("dismissSources")));
    item.put("shipRank", TagUtils.getTagNameByCode("shipRankTag", item.get("shipRank")));
    item.put("shipClassCode", TagUtils.getTagNameByCode("shipClassTag", item.get("shipClassCode")));
    item.put("naviArea", TagUtils.getTagNameByCode("naviAreaTag", item.get("naviArea")));
    item.put("validFlag", TagUtils.getTagNameByCode("validTag", item.get("validFlag")));
    if (null == item.get("offiLocationName") || "".equals(item.get("offiLocationName"))) {
        var LocationName = TagUtils.getTagNameByCode("portListTag", item.get("offiLocation"));
        if (item.get("offiLocation").equals(LocationName)) {
            LocationName = TagUtils.getTagNameByCode("issuOrgTag", item.get("offiLocation"));
        }
        item.put("offiLocationName", LocationName);
    }
    item.put("dismissPlaceName", TagUtils.getTagNameByCode("portListTag", item.get("dismissPlaceName")));
     item.put("idCardNo", ZzSecurityHelper.encryptAES( item.get("idCardNo")));
}
}


return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: ret
    // {
    //    "list":ret.list,
    //    "total":ret.total
    // }
});