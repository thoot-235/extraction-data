{
  "properties" : { },
  "id" : "cf1cffeec36e4621be3e5c481b2a2c78",
  "script" : null,
  "groupId" : "a2c371bd05c44f67b356888b31fa69af",
  "name" : "信用信息列表",
  "createTime" : null,
  "updateTime" : 1755756337885,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getCreditDataList",
  "method" : "GET",
  "parameters" : [ {
    "name" : "type",
    "value" : "ship",
    "description" : "person、company、ship  人员 公司 船舶三种类型查询",
    "required" : true,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "startTime",
    "value" : "",
    "description" : "开始日期",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "endTime",
    "value" : "",
    "description" : "结束日期",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "keyword",
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
  }, {
    "name" : "size",
    "value" : "10",
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
    "name" : "partFlag",
    "value" : "",
    "description" : "传1 是精确",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "id",
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
    "name" : "dataSource",
    "value" : "",
    "description" : "长航信用、红黄黑、三峡信用",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "dataSourceType",
    "value" : "",
    "description" : "长航信用：绿码、蓝码、黄码、红码；红黄黑：红名单、黄名单、黑名单",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "cardNo",
    "value" : "CN20223646741",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"total\": 1,\n        \"list\": [{\n            \"cardNo\": \"CN20223646741\",\n            \"dataSource\": \"长航信用\",\n            \"bodyType\": \"船舶\",\n            \"seriousBreachFlag\": \"N\",\n            \"basicsNumber\": \"1000\",\n            \"deductionNumber\": \"0\",\n            \"bonusNumber\": \"120\",\n            \"safeValue\": \"1120\",\n            \"name\": \"长航货运003\",\n            \"shipRegNo\": \"120823000105\",\n            \"shipId\": \"CN20223646741\",\n            \"shipNameCn\": \"长航货运003\",\n            \"shipNameEn\": \"CHANG HANG HUO YUN 003\",\n            \"mmsi\": \"413876425\",\n            \"shipFirstregNo\": \"120823000105\",\n            \"shipInspectNo\": \"2023Q0002167\",\n            \"shipRegionTypeName\": \"内河船\",\n            \"regportName\": \"武汉\",\n            \"origRegportName\": \"----\",\n            \"shipTypeName\": \"散货船\",\n            \"shipBigType\": \"干散货\",\n            \"shipPower\": \"4000\",\n            \"shipLength\": \"129.98\",\n            \"shipBreadth\": \"16.2\",\n            \"shipDepth\": \"7.2\",\n            \"shipGrosston\": \"4877\",\n            \"shipNetton\": \"2731\",\n            \"shipDwt\": \"9691\",\n            \"shipEngineNum\": \"2\",\n            \"nationName\": \"中国\",\n            \"shipContainerNum\": \"0\",\n            \"shipParkingNum\": \"0\",\n            \"shipPassengerNum\": \"0\",\n            \"sailingareaName\": \"内河AJ\",\n            \"shipBuiltDate\": \"2023-12-21 00:00:00\",\n            \"shipOwner\": \"长航货运有限公司\",\n            \"shipOperator\": \"长航货运有限公司\",\n            \"shipManager\": \"\",\n            \"ownerUscc\": \"91420001MA4KLLRY4D\",\n            \"operatorUscc\": \"91420001MA4KLLRY4D\",\n            \"managerUscc\": \"\",\n            \"ownerPhone\": \"\",\n            \"operatorPhone\": \"\",\n            \"managerPhone\": \"\",\n            \"ownerAddr\": \"武汉市江汉区沿江大道69号长航大厦22层1室\",\n            \"operatorAddr\": \"武汉市江汉区沿江大道69号长航大厦22层1室\",\n            \"managerAddr\": \"\",\n            \"orgName\": \"武汉海事局\",\n            \"inspectOrgName\": \"\",\n            \"rptTimes\": \"142\",\n            \"activeState\": \"\",\n            \"breakDegree\": \"信用长江绿码\",\n            \"prePortName\": \"镇江\",\n            \"sfxny\": \"0 \",\n            \"sfzdgx\": \"\",\n            \"sfbjcx\": \"\",\n            \"delFlag\": \"0\",\n            \"createBy\": \"\",\n            \"createTime\": \"2024-06-27 19:36:25\",\n            \"updateBy\": \"\",\n            \"updateTime\": \"2025-08-04 01:00:52\",\n            \"lastUpdateTime\": \"2023-12-22 16:22:33\",\n            \"xyjlcs\": \"\",\n            \"xypf\": \"\",\n            \"origShipNameCn\": \"----\",\n            \"status\": \"1\",\n            \"importTime\": \"2025-01-20 17:12:22\",\n            \"orgCode\": \"120800\",\n            \"statusFlagName\": \"登记\",\n            \"province\": \"江苏\",\n            \"reportOrgName\": \"镇江海事局\",\n            \"reportOrgCode\": \"060400\",\n            \"integrity\": \"\",\n            \"reportTime\": \"2025-07-03 15:45:09\",\n            \"ztLable\": \"新能源,过闸\",\n            \"reportProvince\": \"湖北\",\n            \"glsd\": \"湖北\",\n            \"orgCodeSh\": \"120800\",\n            \"orgNameSh\": \"武汉海事局\",\n            \"districtTj\": \"湖北\",\n            \"glxqOrgCode\": \"120800\",\n            \"glxqOrgName\": \"武汉海事局\",\n            \"importTimeZt\": \"2024-01-04 17:27:59\",\n            \"ztLableFlag\": \"否\",\n            \"rowId\": \"1\"\n        }]\n    }\n}",
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
      "name" : "result",
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
        "value" : "1",
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
            "name" : "cardNo",
            "value" : "CN20223646741",
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
            "name" : "dataSource",
            "value" : "长航信用",
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
            "name" : "bodyType",
            "value" : "船舶",
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
            "name" : "seriousBreachFlag",
            "value" : "N",
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
            "name" : "basicsNumber",
            "value" : "1000",
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
            "name" : "deductionNumber",
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
            "name" : "bonusNumber",
            "value" : "120",
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
            "name" : "safeValue",
            "value" : "1120",
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
            "value" : "长航货运003",
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
            "value" : "120823000105",
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
            "value" : "CN20223646741",
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
            "value" : "长航货运003",
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
            "value" : "CHANG HANG HUO YUN 003",
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
            "value" : "413876425",
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
            "value" : "120823000105",
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
            "value" : "2023Q0002167",
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
            "name" : "shipRegionTypeName",
            "value" : "内河船",
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
            "name" : "regportName",
            "value" : "武汉",
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
            "name" : "origRegportName",
            "value" : "----",
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
            "name" : "shipTypeName",
            "value" : "散货船",
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
            "name" : "shipBigType",
            "value" : "干散货",
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
            "name" : "shipPower",
            "value" : "4000",
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
            "value" : "129.98",
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
            "value" : "16.2",
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
            "value" : "7.2",
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
            "value" : "4877",
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
            "value" : "2731",
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
            "value" : "9691",
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
            "name" : "shipEngineNum",
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
            "name" : "nationName",
            "value" : "中国",
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
            "name" : "shipContainerNum",
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
            "name" : "shipParkingNum",
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
            "name" : "shipPassengerNum",
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
            "name" : "sailingareaName",
            "value" : "内河AJ",
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
            "name" : "shipBuiltDate",
            "value" : "2023-12-21 00:00:00",
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
            "value" : "长航货运有限公司",
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
            "value" : "长航货运有限公司",
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
            "name" : "shipManager",
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
            "name" : "ownerUscc",
            "value" : "91420001MA4KLLRY4D",
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
            "name" : "operatorUscc",
            "value" : "91420001MA4KLLRY4D",
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
            "name" : "managerUscc",
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
            "name" : "ownerPhone",
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
            "name" : "operatorPhone",
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
            "name" : "managerPhone",
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
            "name" : "ownerAddr",
            "value" : "武汉市江汉区沿江大道69号长航大厦22层1室",
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
            "name" : "operatorAddr",
            "value" : "武汉市江汉区沿江大道69号长航大厦22层1室",
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
            "name" : "managerAddr",
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
            "name" : "orgName",
            "value" : "武汉海事局",
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
            "name" : "inspectOrgName",
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
            "name" : "rptTimes",
            "value" : "142",
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
            "name" : "activeState",
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
            "name" : "breakDegree",
            "value" : "信用长江绿码",
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
            "value" : "镇江",
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
            "name" : "sfxny",
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
            "name" : "sfzdgx",
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
            "name" : "sfbjcx",
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
            "name" : "delFlag",
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
            "name" : "createBy",
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
            "name" : "createTime",
            "value" : "2024-06-27 19:36:25",
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
            "name" : "updateBy",
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
            "name" : "updateTime",
            "value" : "2025-08-04 01:00:52",
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
            "name" : "lastUpdateTime",
            "value" : "2023-12-22 16:22:33",
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
            "name" : "xyjlcs",
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
            "name" : "xypf",
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
            "name" : "origShipNameCn",
            "value" : "----",
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
            "name" : "importTime",
            "value" : "2025-01-20 17:12:22",
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
            "value" : "120800",
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
            "name" : "statusFlagName",
            "value" : "登记",
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
            "name" : "province",
            "value" : "江苏",
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
            "name" : "reportOrgName",
            "value" : "镇江海事局",
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
            "name" : "reportOrgCode",
            "value" : "060400",
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
            "name" : "integrity",
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
            "name" : "reportTime",
            "value" : "2025-07-03 15:45:09",
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
            "name" : "ztLable",
            "value" : "新能源,过闸",
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
            "name" : "reportProvince",
            "value" : "湖北",
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
            "name" : "glsd",
            "value" : "湖北",
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
            "name" : "orgCodeSh",
            "value" : "120800",
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
            "name" : "orgNameSh",
            "value" : "武汉海事局",
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
            "name" : "districtTj",
            "value" : "湖北",
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
            "name" : "glxqOrgCode",
            "value" : "120800",
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
            "name" : "glxqOrgName",
            "value" : "武汉海事局",
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
            "name" : "importTimeZt",
            "value" : "2024-01-04 17:27:59",
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
            "name" : "ztLableFlag",
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
            "name" : "rowId",
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
          } ]
        } ]
      } ]
    } ]
  }
}
================================
import org.ssssssss.magicapi.modules.db.model.PageResult
import com.alibaba.cloud.commons.lang.StringUtils;
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
import 'org.springblade.common.utils.ZzSecurityHelper' as ZzSecurityHelper;
import 'com.alibaba.fastjson.JSON' as JSONA;
import response;
import log;
var sql="""""";
var ret=[];
//信用长江绿码1 信用长江蓝码2 信用长江黄码3 信用长江红码4
if(dataSourceType!=null){
  dataSourceType=dataSourceType.replace("红码","1").replace("黄码","2").replace("蓝码","3").replace("绿码","4");
   var dataSourceTypeArray = [];
    var dataSourceTypeArray1 = [];
    if(dataSourceType!="" && dataSourceType != null){
      dataSourceTypeArray1 = dataSourceType.split(",");
      for(item in dataSourceTypeArray1){
        dataSourceTypeArray.add("'"+item+"'");
      }
    }
}
var selectSql="""""";
if("ship".equals(type)){//查船舶
   selectSql="""select a.DEDUCTION_OBJECT_ID as card_No,
                     '长航信用' as data_Source,
                     '船舶' as body_Type,
                    a.SERIOUS_BREACH_FLAG,
                    a.BASICS_NUMBER,
                    a.DEDUCTION_NUMBER,
                    a.BONUS_NUMBER,
                    a.SCALE_INTERVAL as safe_Value,
                    a.DEDUCTION_OBJECT_NAME as name,
                    b.SHIP_REG_NO,
                    b.SHIP_ID,
                    b.SHIP_NAME_CN,
                    b.SHIP_NAME_EN,
                    b.MMSI,
                    b.SHIP_FIRSTREG_NO,
                    b.SHIP_INSPECT_NO,
                    b.SHIP_REGION_TYPE_NAME,
                    b.REGPORT_NAME,
                    b.ORIG_REGPORT_NAME,
                    b.SHIP_TYPE_NAME,
                    b.SHIP_BIG_TYPE,
                    b.SHIP_POWER,
                    b.SHIP_LENGTH,
                    b.SHIP_BREADTH,
                    b.SHIP_DEPTH,
                    b.SHIP_GROSSTON,
                    b.SHIP_NETTON,
                    b.SHIP_DWT,
                    b.SHIP_ENGINE_NUM,
                    b.NATION_NAME,
                    b.SHIP_CONTAINER_NUM,
                    b.SHIP_PARKING_NUM,
                    b.SHIP_PASSENGER_NUM,
                    b.SAILINGAREA_NAME,
                    b.SHIP_BUILT_DATE,
                    b.SHIP_OWNER,
                    b.SHIP_OPERATOR,
                    b.SHIP_MANAGER,
                    b.OWNER_USCC,
                    b.OPERATOR_USCC,
                    b.MANAGER_USCC,
                    b.OWNER_PHONE,
                    b.OPERATOR_PHONE,
                    b.MANAGER_PHONE,
                    b.OWNER_ADDR,
                    b.OPERATOR_ADDR,
                    b.MANAGER_ADDR,
                    b.ORG_NAME,
                    b.INSPECT_ORG_NAME,
                    b.RPT_TIMES,
                    b.ACTIVE_STATE,
                    (case when a.AQYXM='1' then '信用长江红码' 
                    when a.AQYXM='2' then '信用长江黄码'
                    when a.AQYXM='3' then '信用长江蓝码'
                    when a.AQYXM='4' then '信用长江绿码'
                    else '' end) break_Degree  ,
                    b.PRE_PORT_NAME,
                    b.SFXNY,
                    b.SFZDGX,
                    b.SFBJCX,
                    b.DEL_FLAG,
                    b.CREATE_BY,
                    b.CREATE_TIME,
                    b.UPDATE_BY,
                    b.UPDATE_TIME,
                    b.LAST_UPDATE_TIME,
                    b.XYJLCS,
                    b.XYPF,
                    b.ORIG_SHIP_NAME_CN,
                    b.STATUS,
                    b.IMPORT_TIME,
                    
                    b.ORG_CODE,
                    b.STATUS_FLAG_NAME,
                    b.PROVINCE,
                    b.REPORT_ORG_NAME,
                    b.REPORT_ORG_CODE,
                    b.INTEGRITY,
                    b.REPORT_TIME,
                    b.ZT_LABLE,
                    b.REPORT_PROVINCE,
                    b.GLSD,
                    b.ORG_CODE_SH,
                    b.ORG_NAME_SH,
                    b.DISTRICT_TJ,
                    b.GLXQ_ORG_CODE,
                    b.GLXQ_ORG_NAME,
                    b.IMPORT_TIME_ZT,
                    (case when ZT_LABLE like '诚信船舶%' then '是' else '否' end) ZT_LABLE_Flag
                from ods_hs_share.BASE_SC_ACCOUNT_GUARD a
                left join ods_hs_share.sc_ship_result b
                  on a.DEDUCTION_OBJECT_ID = b.ship_id
                and b.status = '1'
              where a.process_state = '2'
                and a.zhuti_name = '船舶'
                ?{partFlag=='1' and keyword!=null and keyword!='', 
                and a.DEDUCTION_OBJECT_NAME = #{keyword}}

                ?{ cardNo!=null and cardNo!='', 
                and a.DEDUCTION_OBJECT_ID = #{cardNo}}

                ?{partFlag!='1' and keyword!=null and keyword!='', 
                and a.DEDUCTION_OBJECT_NAME like '%'||#{keyword}||'%' }

                 <if test="dataSourceType!=null and dataSourceType!=''">
                  and a.AQYXM in
                  <foreach item='item' collection="dataSourceTypeArray" open="(" separator="," close=")">
                    ${item}
                  </foreach>
                </if>

              """;

}/*
else if("person".equals(type)){//查船员
 selectSql="""select a.DEDUCTION_OBJECT_ID as card_No,
       a.SERIOUS_BREACH_FLAG,
       '长航信用' as data_Source,
        '船员' as body_Type,
       a.BASICS_NUMBER,
       a.DEDUCTION_NUMBER,
       a.BONUS_NUMBER,
        a.SCALE_INTERVAL as safe_Value ,
       a.DEDUCTION_OBJECT_NAME  as name,
       b.ID_CARD_NO,b.BIRTH_DATE,b.SEX,b.NATION,b.IDCARD_ADDRESS,b.MOBILE_PHONE,b.CREW_WFJS,b.DUTY,b.DISTRICT,
       b.ORG_NAME, (case when a.AQYXM='1' then '信用长江红码' 
                    when a.AQYXM='2' then '信用长江黄码'
                    when a.AQYXM='3' then '信用长江蓝码'
                    when a.AQYXM='4' then '信用长江绿码'
                    else '' end) break_Degree ,b.ACTIVE_STATE,b.XYPF,b.CREW_TYPE,b.SFZDGZ,b.SFBZCX,b.STATUS,b.LAST_UPDATE_TIME,b.DEL_FLAG,b.CREATE_BY,b.UPDATE_BY,b.UPDATE_TIME,b.CREATE_TIME,b.XYJLCS,b.PRE_PORT_NAME,b.IMPORT_TIME,b.ORG_CODE,b.SHIP_REGION_TYPE_NAME,b.REGISTER_PROVINCE,b.REGISTER_CITY,b.REGISTER_COUNTY,b.INTEGRITY,b.ON_IMPORT_TIME,b.ZT_LABLE,b.GLSD,b.ORG_CODE_SH,b.ORG_NAME_SH,b.DISTRICT_TJ,b.GLXQ_ORG_CODE,b.GLXQ_ORG_NAME,b.IMPORT_TIME_ZT,
                    (case when ZT_LABLE like '诚信船员%' then '是' else '否' end) ZT_LABLE_Flag
  from ods_hs_share.BASE_SC_ACCOUNT_GUARD a
  left join ods_hs_share.sc_crew_result b
    on a.DEDUCTION_OBJECT_ID = b.id_card_no
   and b.status = '1'
 where a.process_state = '2'
   and a.zhuti_name = '船员'
    ?{partFlag=='1' and keyword!=null and keyword!='', 
                and a.DEDUCTION_OBJECT_NAME = #{keyword}}

                ?{partFlag!='1' and keyword!=null and keyword!='', 
                and a.DEDUCTION_OBJECT_NAME like '%'||#{keyword}||'%' }

                  ?{ cardNo!=null and cardNo!='', 
                and a.DEDUCTION_OBJECT_ID = #{cardNo}}

                 <if test="dataSourceType!=null and dataSourceType!=''">
                  and a.AQYXM in
                  <foreach item='item' collection="dataSourceTypeArray" open="(" separator="," close=")">
                    ${item}
                  </foreach>
                </if>"""

}*/
else if("company".equals(type)){//查船企
     selectSql="""select a.DEDUCTION_OBJECT_ID as card_No,
            a.SERIOUS_BREACH_FLAG,
             '长航信用' as data_Source,
            '公司' as body_Type,
            a.BASICS_NUMBER,
            a.DEDUCTION_NUMBER,
            a.BONUS_NUMBER,
            a.SCALE_INTERVAL as safe_Value,
            a.DEDUCTION_OBJECT_NAME  as name,
            b.USCC,b.COMPANY_NAME,b.START_TIME,b.LEGAL_REPRESENTATIVE,b.COMPANY_REG_ADDR,b.COMPANY_OPERATE_ADDR,b.CONTACT_TEL,b.COMPANY_TYPE,b.COMPANY_NATURE,b.INDUSTRY,b.COMPANY_OPERATE_SCOP,b.SHIP_NUM,b.RPT_TIMES,b.ACTIVE_STATE,(case when a.AQYXM='1' then '信用长江红码' 
                    when a.AQYXM='2' then '信用长江黄码'
                    when a.AQYXM='3' then '信用长江蓝码'
                    when a.AQYXM='4' then '信用长江绿码'
                    else '' end) break_Degree  ,b.IS_IN_COMPANY,b.DISTRICT,b.ORG_NAME,b.XYJLCS,b.DOC_NO,b.DOC_START_TIME,b.DOC_XYQ,b.LAST_UPDATE_TIME,b.DEL_FLAG,b.CREATE_BY,b.UPDATE_BY,b.UPDATE_TIME,b.CREATE_TIME,b.XYPF,b.SFZDGZ,b.SFBZCX,b.STATUS,b.CONTACT_PERSON,b.IMPORT_TIME_ZT,b.ORG_CODE,b.REGCAPITAL,b.REGISTER_PROVINCE,b.REGISTER_CITY,b.REGISTER_COUNTY,b.DISTRICT_TJ,b.INTEGRITY,b.ZT_LABLE,b.ORG_CODE_SH,b.ORG_NAME_SH,b.IMPORT_TIME,b.SHIP_GROSSTON,
                    (case when ZT_LABLE like '诚信公司%' then '是' else '否' end) ZT_LABLE_Flag
        from ods_hs_share.BASE_SC_ACCOUNT_GUARD a
        left join ods_hs_share.sc_company_result b
          on a.DEDUCTION_OBJECT_ID = b.uscc
        and b.status = '1'
      where a.process_state = '2'
        and a.zhuti_name = '公司'  
         ?{partFlag=='1' and keyword!=null and keyword!='', 
                and a.DEDUCTION_OBJECT_NAME = #{keyword}}

                ?{partFlag!='1' and keyword!=null and keyword!='', 
                and a.DEDUCTION_OBJECT_NAME like '%'||#{keyword}||'%' }

                  ?{ cardNo!=null and cardNo!='', 
                and a.DEDUCTION_OBJECT_ID = #{cardNo}}

                 <if test="dataSourceType!=null and dataSourceType!=''">
                  and a.AQYXM in
                  <foreach item='item' collection="dataSourceTypeArray" open="(" separator="," close=")">
                    ${item}
                  </foreach>
                </if>
                """
}

var data=db.ods_data.camel().page(selectSql);

return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        //result:  data
        result:  ZzSecurityHelper.encryptAES(JSONA.toJSONString(data))
  });