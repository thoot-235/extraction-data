{
  "properties" : { },
  "id" : "5ee21f83a24a4649aaea620e65f6a047",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "根据mmsiId获取船舶信息",
  "createTime" : null,
  "updateTime" : 1693552389960,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "getShipInfoByMmsi",
  "method" : "GET",
  "parameters" : [ {
    "name" : "mmsiId",
    "value" : "413991999",
    "description" : "",
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
    "value" : "君旅号",
    "description" : "中文船名",
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
    "value" : "JUN LU HAO",
    "description" : "英文船名",
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
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"certObtainDate\": \"2019-12-31\",\n        \"statusFlag\": \"\",\n        \"dataSource\": \"船舶登记\",\n        \"shipOwnerCn\": \"武汉市轮渡公司\",\n        \"ownerLegalPerson\": \"张四九\",\n        \"shipNameCn\": \"君旅号\",\n        \"shipNameEn\": \"JUN LU HAO\",\n        \"origShipNameCn\": \"——\",\n        \"shipId\": \"CN20197828373\",\n        \"shipFirstregNo\": \"120820000008\",\n        \"orgCode\": \"武汉海事局\",\n        \"shipInspectNo\": \"2019H0000606\",\n        \"inspectionOrgName\": \"中国船级社江阴办事处\",\n        \"shipRegionType\": \"内河船\",\n        \"regportCode\": \"武汉\",\n        \"origRegportName\": \"——\",\n        \"sailingareaCode\": \"内河B\",\n        \"shipTypeCode\": \"旅游客船\",\n        \"shipHullMaterialCode\": \"钢质\",\n        \"shipValue\": \"----\",\n        \"shipBuiltDate\": \"2019-12-31\",\n        \"shipyardCn\": \"无锡东方船研高性能船艇工程有限公司\",\n        \"shipBuiltAddrCn\": \"江苏省无锡市\",\n        \"shipRebuiltDate\": \"1900-01-01\",\n        \"shipRebuiltAddrCn\": \"\",\n        \"mmsi\": \"413843904\",\n        \"shipLength\": \"53.2\",\n        \"shipBreadth\": \"10.8\",\n        \"shipDepth\": \"2.7\",\n        \"shipGrosston\": \"822\",\n        \"shipNetton\": \"493\",\n        \"shipDwt\": \"-\",\n        \"shipEngineTypeCode\": \"其它\",\n        \"shipEngineNum\": \"2\",\n        \"shipEnginePower\": \"400\",\n        \"shipPropellerKindCode\": \"\",\n        \"shipPropellerNum\": \"0\",\n        \"shipShareSituation\": \"非共有船舶。\",\n        \"shipParkingNum\": \"0\",\n        \"shipContainerNum\": \"0\",\n        \"shipPassengerNum\": \"300\",\n        \"titleCertificate\": \"\",\n        \"ownerContactPhone\": \"13638686805\",\n        \"shipOperatorCn\": \"\",\n        \"operatorContactPhone\": \"\",\n        \"shipOperatorAddrCn\": \"\",\n        \"shipManagerCn\": \"\",\n        \"shipManagerAddrCn\": \"\",\n        \"managerContactPhone\": \"\",\n        \"companyName\": \"\",\n        \"contactPerson\": \"\",\n        \"mobilePhone\": \"13387503900\",\n        \"bidName\": \"王雄峰\",\n        \"shipSafetyManageCertNo\": \"\",\n        \"ifsystem\": \"\",\n        \"manageBeginDate\": \"\"\n    }\n}",
  "description" : "",
  "requestBodyDefinition" : {
    "name" : "root",
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
      "name" : "mmsiId",
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
        "name" : "certObtainDate",
        "value" : "2019-12-31",
        "description" : "",
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
        "value" : "武汉市轮渡公司",
        "description" : "",
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
        "value" : "张四九",
        "description" : "",
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
        "value" : "君旅号",
        "description" : "",
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
        "value" : "JUN LU HAO",
        "description" : "",
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
        "value" : "——",
        "description" : "",
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
        "value" : "CN20197828373",
        "description" : "",
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
        "value" : "120820000008",
        "description" : "",
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
        "value" : "武汉海事局",
        "description" : "",
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
        "value" : "2019H0000606",
        "description" : "",
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
        "value" : "中国船级社江阴办事处",
        "description" : "",
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
        "value" : "内河船",
        "description" : "",
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
        "value" : "武汉",
        "description" : "",
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
        "value" : "——",
        "description" : "",
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
        "value" : "内河B",
        "description" : "",
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
        "value" : "旅游客船",
        "description" : "",
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
        "name" : "shipBuiltDate",
        "value" : "2019-12-31",
        "description" : "",
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
        "value" : "无锡东方船研高性能船艇工程有限公司",
        "description" : "",
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
        "value" : "江苏省无锡市",
        "description" : "",
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
        "name" : "shipRebuiltAddrCn",
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
        "value" : "413843904",
        "description" : "",
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
        "value" : "53.2",
        "description" : "",
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
        "value" : "10.8",
        "description" : "",
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
        "value" : "2.7",
        "description" : "",
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
        "value" : "822",
        "description" : "",
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
        "value" : "493",
        "description" : "",
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
        "value" : "-",
        "description" : "",
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
        "value" : "其它",
        "description" : "",
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
        "value" : "400",
        "description" : "",
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
        "name" : "shipShareSituation",
        "value" : "非共有船舶。",
        "description" : "",
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
        "value" : "300",
        "description" : "",
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
        "value" : "13638686805",
        "description" : "",
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
        "value" : "13387503900",
        "description" : "",
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
        "value" : "王雄峰",
        "description" : "",
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
      } ]
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;
var shipImo = "";
var shipId = "";
var shipRegNo = "";
var dataSource = "";
//statusFlag: 有效--1；无效--3


dataSource = "PSC"
var cbSql;
var basic = null;
//查外国籍船 --psc

    var sqlPz = """""";
    


//查中国籍船
if (basic == null) {
    dataSource = "船舶登记"
    var sqlPz = """""";
    if (mmsiId != null && mmsiId != '') {
        sqlPz = """ and (
       ?{mmsiId, (m.mmsi=#{mmsiId} or t.mmsi=#{mmsiId})}
       ?{shipNameCn,  or   t.SHIP_NAME_CN=#{shipNameCn} } 
       ?{shipNameEn,  or   t.SHIP_NAME_en=#{shipNameEn} } )
       order by t.CREATE_DATE
   """
    } else if (shipNameCn != null && shipNameCn != '') {
        sqlPz = """ and (
       ?{shipNameCn,     t.SHIP_NAME_CN=#{shipNameCn} } 
              ?{mmsiId,or (m.mmsi=#{mmsiId} or t.mmsi=#{mmsiId})}
  
       ?{shipNameEn,  or   t.SHIP_NAME_en=#{shipNameEn} } )
        order by t.CREATE_DATE
   """
    } else {
        sqlPz = """ and (
       ?{shipNameEn,     t.SHIP_NAME_en=#{shipNameEn} } 
       ?{shipNameCn,   or  t.SHIP_NAME_CN=#{shipNameCn} } 
       ?{mmsiId,or (m.mmsi=#{mmsiId} or t.mmsi=#{mmsiId})}
    
         )
          order by t.CREATE_DATE
   """
    }

     if(shipId!=null && shipId!=''){
        sqlPz = """ and 
            ?{shipId,     ship_id=#{shipId} } 
             order by t.CREATE_DATE
        """
    }
    cbSql = """
     select 'A'||t.SHIP_FIRSTREG_NO as ship_no,substr(t.ship_type_code,0,2)as ship_type_code_name,
                    t.SHIP_REG_NO,t.SHIP_ID,t.SHIP_NAME_CN,t.SHIP_NAME_EN,t.ORIG_SHIP_NAME_CN,t.SHIP_FIRSTREG_NO,t.SHIP_IMO,
                    m.mmsi  ,
                    t.REGPORT_CODE,t.SHIP_ROUTE_CODE,t.SHIP_TYPE_CODE,t.SHIP_VALUE,t.SHIP_SUMMER_DRAFT,
                    t.SHIP_WIND_LEVEL,t.             SHIP_MINIMUM_FREEBOARD,
                    t.SHIP_CONTAINER_NUM,t.SHIP_PARKING_NUM,t.SHIP_PASSENGER_NUM,t.IC_CARD_NO,
                    t.MORTGAGE_FLAG,t.BAREBOAT_FLAG,t.ALTER_FLAG,t.STATUS_FLAG,
                    t.HANDOUT_CARD_FLAG,t.FINANCIAL_LEASE_FLAG,t.HIBERNATE_FLAG,t.TRIAL_SHIP_FLAG,
                    t.REMARK,t.SHIP_INSPECT_NO,t.SHIP_CALLSIGN,t.SAILINGAREA_CODE,
                    t.SHIP_HULL_MATERIAL_CODE,to_char(t.SHIP_BUILT_DATE, 'yyyy-mm-dd') SHIP_BUILT_DATE,
                    t.SHIPYARD_CN,t.SHIPYARD_EN,t.SHIP_BUILT_ADDR_CN,t.SHIP_BUILT_ADDR_EN,t.SHIP_LENGTH,t.SHIP_BREADTH,
                    t.SHIP_DEPTH,t.SHIP_GROSSTON,t.SHIP_NETTON,t.SHIP_DWT,t.SHIP_ENGINE_TYPE_CODE,
                    t.SHIP_ENGINE_POWER,t.SHIP_ENGINE_NUM,t.SHIP_PROPELLER_NUM,
                    t.SHIP_PROPELLER_KIND_CODE,t.ORIG_REGPORT_NAME,
                    t.SHIP_ID_FLAG,t.ORIG_SHIP_NAME_EN,t.ORIG_SHIP_REG_NO,t.SHIP_REGION_TYPE,
                    to_char(t.SHIP_REBUILT_DATE, 'yyyy-mm-dd') SHIP_REBUILT_DATE,
                    t.SHIP_REBUILT_ADDR_CN,t.SHIP_REBUILT_ADDR_EN,to_char(t.ORIG_DELETION_DATE, 'yyyy-mm-dd') ORIG_DELETION_DATE
                    ,t.PERMANENT_SEAL_REMARK,t.DETENTION_FLAG,t.SHIPID_SEAL_FLAG,
                    t.ORG_CODE 
                    
                    from SHP_BASIC_DATA t left join (select * from (
  select t.*,row_number() over (partition by ship_id order by create_date desc) as num
  from shp_mmsi t where mmsi_status='1' and ship_id is not null
) where num=1) m on t.ship_reg_no=m.ship_reg_no and m.delete_flag='0' where 
                    1=1     ?{statusFlag, and t.status_flag=#{statusFlag}}
                    and t.delete_flag='0'
    
""";

    cbSql = cbSql + sqlPz;
    basic = db.base_data.camel().selectOne(cbSql);

  
}

//查询船舶安全监督
if (basic == null) {


    dataSource = "船舶安全监督"
    var sqlPz = """""";
    if (mmsiId != null && mmsiId != '') {
        sqlPz = """ and (
       ?{mmsiId,     MMSI=#{mmsiId} } 
       ?{shipNameCn,  or   SHIP_NAME_CN=#{shipNameCn} } 
       ?{shipNameEn,  or   SHIP_NAME_en=#{shipNameEn} } )
       order by CREATE_DATE
   """
    } else if (shipNameCn != null && shipNameCn != '') {
        sqlPz = """ and (
       ?{shipNameCn,     SHIP_NAME_CN=#{shipNameCn} } 
       ?{mmsiId,   or  MMSI=#{mmsiId} }      
       ?{shipNameEn,  or   SHIP_NAME_en=#{shipNameEn} } )
       order by CREATE_DATE
   """
    } else {
        sqlPz = """ and (
       ?{shipNameEn,     SHIP_NAME_en=#{shipNameEn} } 
       ?{shipNameCn,   or  SHIP_NAME_CN=#{shipNameCn} } 
       ?{mmsiId,   or  MMSI=#{mmsiId} }      
         )
         order by CREATE_DATE
   """
    }

     if(shipId!=null && shipId!=''){
        sqlPz = """ and 
            ?{shipId,     ship_id=#{shipId} } 
           order by CREATE_DATE
        """
    }
    
    cbSql = """
     select SHIP_NO,
        SHIP_CLASS,
        SHIP_REG_NO,SHIP_ID,SHIP_FIRSTREG_NO,SHIP_NAME_CN,SHIP_NAME_EN,SHIP_INSPECT_NO,SHIP_CALLSIGN,SHIP_IMO,
        SHIP_CARD_NO,MMSI,SHIP_REGION_TYPE,       SHIP_ROUTE_CODE,SAILINGAREA_CODE,NATION_CODE,REGPORT_CODE,REGPORT_NAME,
        SHIP_TYPE_CODE,SHIP_HULL_MATERIAL_CODE,to_char(SHIP_BUILT_DATE, 'yyyy-mm-dd') SHIP_BUILT_DATE,SHIPYARD_CN,SHIP_LENGTH,
        SHIP_BREADTH,SHIP_DEPTH,SHIP_GROSSTON,SHIP_NETTON,SHIP_DWT,SHIP_ENGINE_TYPE_CODE,SHIP_ENGINE_NUM,SHIP_ENGINE_POWER,
        SHIP_PROPELLER_KIND_CODE,SHIP_PROPELLER_NUM,SHIP_SUMMER_DRAFT,SHIP_WIND_LEVEL,SHIP_MINIMUM_FREEBOARD,SHIP_CONTAINER_NUM,
        SHIP_PARKING_NUM,SHIP_PASSENGER_NUM,SHIP_SPEED,SHIP_OWNER_NO,SHIP_OWNER,SHIP_OPERATOR_NO,SHIP_OPERATOR,SHIP_MANAGER_NO,
        SHIP_MANAGER,RESCUE_NUM,MINIMUM_NUM,REMARK,SOURCE_CODE,DATA_ORG_CODE,CREATE_DATE,CREATOR,LAST_UPDATE_DATE,UPDATE_BY,
        DELETE_FLAG,PROCESS_STATUS,IMPORT_TIME from SHP_BASIC_DATA_SSM
                    where 1=1 and delete_flag='0'    """
    cbSql = cbSql + sqlPz;
    basic = db.base_data.camel().selectOne(cbSql);
   
}

if(basic==null){

    if (mmsiId != null && mmsiId != '') {
        sqlPz = """ and (
       ?{mmsiId,     SHIP_MMSI=#{mmsiId} } 
       ?{shipNameCn,  or   SHIP_NAME_CN=#{shipNameCn} } 
       ?{shipNameEn,  or   SHIP_NAME=#{shipNameEn} } )
       order by CREATE_DATE
   """
    } else if (shipNameCn != null && shipNameCn != '') {
        sqlPz = """ and (
       ?{shipNameCn,     SHIP_NAME_CN=#{shipNameCn} } 
       ?{mmsiId,   or  SHIP_MMSI=#{mmsiId} }      
       ?{shipNameEn,  or   SHIP_NAME=#{shipNameEn} } )
       order by CREATE_DATE
   """
    } else {
        sqlPz = """ and (
       ?{shipNameEn,     SHIP_NAME=#{shipNameEn} } 
       ?{shipNameCn,   or  SHIP_NAME_CN=#{shipNameCn} } 
       ?{mmsiId,   or  SHIP_MMSI=#{mmsiId} }      
         )
         order by CREATE_DATE
   """
    }
    if(shipId!=null && shipId!=''){
        sqlPz = """ and 
            ?{shipId,     ship_id=#{shipId} } 
            order by CREATE_DATE
           
        """
    }
    cbSql = """
     select ship_id as ship_no,SHIP_ID,SHIP_FLAG_CODE,SHIP_TYPE_CODE,SHIP_CLASS_SOCIETY_CODE,SHIP_COMP_CODE,SHIP_COMP_ID,SHIP_IMO,
                    SHIP_NAME_CN,SHIP_NAME,SHIP_CALLSIGN,SHIP_MMSI,SHIP_GROSSTON,SHIP_DEADWEIGHT,
                    to_char(to_date            (SHIP_DATE_KEEL_LAID,'yyyy-MM-dd'),'yyyy-MM-dd') SHIP_DATE_KEEL_LAID,
                    SHIP_LENGTH,SHIP_REMARKS,SHIP_CLASS_SOCIETY_NAME,SHIP_LAST_MODIFY_DATE,SHIP_NAME_OF_SHIP_MASTER,
                    LAST_UPDATE_DATE from SHP_BASIC_DATA_PSC
                    where  
                    1=1    
                   
                    and delete_flag='0'
                    """;



   basic = db.base_data.camel().selectOne(cbSql+sqlPz);

}
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

} else {
    basic = {}
}

var entities = {};
var recEntities = {};
shipId = basic.shipId;
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
                    DELETE_FLAG,PROCESS_STATUS from SHP_REBUILT_INFO where  1=1 and      ship_id='""" + shipId + """'  and delete_flag='0'
      """;
    entities = db.base_data.camel().selectOne(cbGjSql);
    if (entities != null) {

    } else {
        entities = {}
    }
    //进出港报告 
    var jcgSql = """
    select REPORT_ID,REG_SHIP_ID,SHIP_ID,SHIP_REG_NO,SHIP_FIRSTREG_NO,SHIP_INSPECT_NO,SHIP_NAME_CN,SHIP_NAME_EN,SHIP_IMO,MMSI, 
            SHIP_CALLSIGN,REGPORT_CODE,FLAG_STATE_CODE,SHIP_REGION_TYPE,SHIP_TYPE_CODE,SHIP_GROSSTON,SHIP_NETTON,
            SHIP_DWT,MAINENGINE_POWER, 
            SHIP_PASSENGER_NUM,SHIP_LENGTH,SHIP_BREADTH,SHIP_DEPTH,LINE_CODE,AREA_CODE,CONSTRUCTION_DATE,
            SHIP_OWNER,OWNER_ADDRESS,OWNER_CONTACT_PHONE, 
            OWNER_CORPORATION,SHIP_OPERATOR,OPERATOR_ADDRESS,OPERATOR_TELEPHONE,OPERATOR_CORPORATION,
            BUSINESS_CODE,REPORT_NO,ORG_CODE,REPORT_PORT_NAME, 
            REPORT_PORT_CODE,ARRIVAL_OR_LEAVE,ARRIVAL_REPORT_ID,NEXT_PORT_NAME,NEXT_PORT_CODE,REPORT_TIME,
            BID_NAME,MOBILE_PHONE,EXPECT_TIME,IF_ANCHORED, 
            DRAFT_FORWARD,AFT_DRAFT,BERTH_CODE,BERTH_NAME,OTHER_QUANTITY,ACTUAL_CARRYING_CAPACITY,PORT_CARGO,
            REAL_DANGER_CARGO,PORT_DANGER_CARGO,ACTUAL_CAPACITY, 
            PORT_PASSENGER,REAL_VEHICLE,PORT_VEHICLE,NUM_OF_BARGE,PORT_BARGE,REAL_CONTAINER_QAY,PORT_CONTAINER_QAY,
            LONGITUDE,LATITUDE,IF_REVOKE,VOYAGE_REPORT, 
            FREQUENCY,NAVIGATION_SECTION,PRE_PORT_NAME,PRE_PORT_CODE 
			     
             from  RPT_SHIP_EEP_REPORT_REC 
             where    ship_id='""" + shipId + """' and delete_flag='0' order by report_time desc
  """;
    recEntities = db.biz_data.camel().selectOne(jcgSql);

    if (recEntities != null) {

        recEntities.put("ifAnchored", TagUtils.getTagNameByCode("ifAnchored", recEntities.get("ifAnchored")::string))
        recEntities.put("ifRevoke", TagUtils.getTagNameByCode("ifRevoke", recEntities.get("ifRevoke").toString()))

        recEntities.put("arrivalOrLeave", TagUtils.getTagNameByCode("arrivalOrLeave", recEntities.get("arrivalOrLeave")::string))
        recEntities.put("orgCode", TagUtils.getTagNameByCode("issuOrgTag", recEntities.get("orgCode")))
        recEntities.put("offiSources", TagUtils.getTagNameByCode("isOwnTag", recEntities.get("offiSources")))


    } else {
        recEntities = {};
    }
} else {
    entities = {};
    recEntities = {};
}
var issueDa = {}; //航运公司_安全管理证书
var titleCertificate = {}; //查询船舶所有权
var nationality = {}; //船舶国籍证书信息
var sfShips = {}; //船舶信息
var dtos = {}; //船舶公司

shipRegNo = basic.shipRegNo;
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
          FROM SHP_CERT_OWNERSHIP WHERE 1=1  
          and     SHIP_REG_NO='""" + shipRegNo + """' and delete_flag = '0'
  """;
    titleCertificate = db.base_data.camel().selectOne(cbsyqSql);

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
        DELETE_FLAG, PROCESS_STATUS  FROM SHP_CERT_NATIONAL  where status_flag = '1' 
      and        SHIP_REG_NO='""" + shipRegNo + """'  and delete_flag = '0'    
    """;
    nationality = db.base_data.camel().selectOne(cbgjzhSql);

    if (nationality != null) {

    } else {
        nationality = {}
    }

    //管理船舶信息
    var glcbsQL = """
      SELECT SHIP_PRIMARY_KEY,AUDIT_SHIP_TYPE,MANAGE_FORMS,COMPANYID, to_char(MANAGE_BEGIN_DATE,'yyyy-mm-dd') MANAGE_BEGIN_DATE,NUM_IN_SYSTEM,
       (case when IFSYSTEM='1' then '是'  else '否' end) 
        IFSYSTEM,IFSYSTEM ifsystem_Name,AUDIT_ORG_CODE,JOIN_DATE,IN_LAND_SPC_NO,SOURCE_CODE,DATA_ORG_CODE,
      CREATE_DATE,CREATOR,LAST_UPDATE_DATE,UPDATE_BY,DELETE_FLAG,PROCESS_STATUS FROM CMP_MNG_SP_INFO where
         SHIP_PRIMARY_KEY='""" + shipRegNo + """'  and delete_flag = '0'    
      """;
    sfShips = db.base_data.camel().selectOne(glcbsQL);

    if (sfShips != null) {

    } else {
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
                   1=1  and companyId = """ + companyId + """ and delete_flag = '0'
                   
             """;
            dtos = db.base_data.camel().selectOne(cbSqLxxx);
            if (dtos != null) {

            } else {
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
            where 1=1
                 and SHIP_REG_NO ='""" + shipRegNo + """'    and IS_CANCEL=0  and delete_flag = '0' """;
    issueDa = db.base_data.camel().selectOne(HygsSql);
    if (issueDa != null) {

    } else {
        issueDa = {}
    }
    //dtos=db.base_data.camel().select(cbSqLxxx);
}


var data = {
    "basic": basic,
    "entities": entities,
    "recEntities": recEntities,
    "titleCertificate": titleCertificate,
    "nationality": nationality,
    "sfShips": sfShips,
    "dtos": dtos,
    "issueData": issueDa

}
var basicData = {}
if (dataSource == "船舶登记") {
    basicData = {
        "certObtainDate": titleCertificate.certObtainDate,
        "statusFlag": flag,
        "dataSource": dataSource,
        "shipOwnerCn": titleCertificate.shipOwnerCn,
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
        "shipOperatorCn": nationality.shipOperatorCn,
        "operatorContactPhone": nationality.operatorContactPhone,
        "shipOperatorAddrCn": nationality.shipOperatorAddrCn,
        "shipManagerCn": nationality.shipManagerCn,
        "shipManagerAddrCn": nationality.shipManagerAddrCn,
        "managerContactPhone": nationality.managerContactPhone,
        "companyName": dtos.companyName,
        "contactPerson": dtos.contactPerson,
        "mobilePhone": dtos.mobilePhone,
        "bidName": recEntities.bidName,
        "mobilePhone": recEntities.mobilePhone,
        "shipSafetyManageCertNo": issueDa.shipSafetyManageCertNo,
        "ifsystem": sfShips.ifsystem,
        "manageBeginDate": sfShips.manageBeginDate
    }
} else if (dataSource == "船舶安全监督") {
    basicData = {
        "certObtainDate": titleCertificate.certObtainDate,
        "statusFlag": flag,
        "dataSource": dataSource,
        "shipOwnerCn": basic.shipOwner,
        "shipNo": basic.shipNo,
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
        "shipOperatorCn": basic.shipOperator,
        "operatorContactPhone": nationality.operatorContactPhone,
        "shipOperatorAddrCn": nationality.shipOperatorAddrCn,
        "shipManagerCn": nationality.shipManager,
        "shipManagerAddrCn": nationality.shipManagerAddrCn,
        "managerContactPhone": nationality.managerContactPhone,
        "companyName": dtos.companyName,
        "contactPerson": dtos.contactPerson,
        "mobilePhone": dtos.mobilePhone,
        "bidName": recEntities.bidName,
        "mobilePhone": recEntities.mobilePhone,
        "shipSafetyManageCertNo": issueDa.shipSafetyManageCertNo,
        "ifsystem": sfShips.ifsystem,
        "manageBeginDate": sfShips.manageBeginDate
    }
} else if (dataSource == "PSC") {
    basicData = {
        "certObtainDate": titleCertificate.certObtainDate,
        "statusFlag": flag,
        "dataSource": dataSource,
        "shipOwnerCn": titleCertificate.shipOwnerCn,
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
        "shipOperatorCn": nationality.shipOperatorCn,
        "operatorContactPhone": nationality.operatorContactPhone,
        "shipOperatorAddrCn": nationality.shipOperatorAddrCn,
        "shipManagerCn": nationality.shipManagerCn,
        "shipManagerAddrCn": nationality.shipManagerAddrCn,
        "managerContactPhone": nationality.managerContactPhone,
        "companyName": dtos.companyName,
        "contactPerson": dtos.contactPerson,
        "mobilePhone": dtos.mobilePhone,
        "bidName": recEntities.bidName,
        "mobilePhone": recEntities.mobilePhone,
        "shipSafetyManageCertNo": issueDa.shipSafetyManageCertNo,
        "ifsystem": sfShips.ifsystem,
        "manageBeginDate": sfShips.manageBeginDate
    }
} else {
    basicData = {
        "certObtainDate": "",
        "statusFlag": "",
        "dataSource": "",
        "shipOwnerCn": "",
        "ownerLegalPerson": "",
        "shipNameCn": "",
        "shipNameEn": "",
        "origShipNameCn": "",
        "shipId": "",
        "shipFirstregNo": "",
        "orgCode": "",
        "shipInspectNo": "",
        "inspectionOrgName": "",
        "shipRegionType": "",
        "regportCode": "",
        "origRegportName": "",
        "sailingareaCode": "",
        "shipTypeCode": "",
        "shipHullMaterialCode": "",
        "shipValue": "",
        "shipBuiltDate": "",
        "shipyardCn": "",
        "shipBuiltAddrCn": "",
        "shipRebuiltDate": "",
        "shipRebuiltAddrCn": "",
        "mmsi": "",
        "shipLength": "",
        "shipBreadth": "",
        "shipDepth": "",
        "shipGrosston": "",
        "shipNetton": "",
        "shipDwt": "",
        "shipEngineTypeCode": "",
        "shipEngineNum": "",
        "shipEnginePower": "",
        "shipPropellerKindCode": "",
        "shipPropellerNum": "",
        "shipShareSituation": "",
        "shipParkingNum": "",
        "shipContainerNum": "",
        "shipPassengerNum": "",
        "titleCertificate": "",
        "ownerContactPhone": "",
        "shipOperatorCn": "",
        "operatorContactPhone": "",
        "shipOperatorAddrCn": "",
        "shipManagerCn": "",
        "shipManagerAddrCn": "",
        "managerContactPhone": "",
        "companyName": "",
        "contactPerson": "",
        "mobilePhone": "",
        "bidName": "",
        "mobilePhone": "",
        "shipSafetyManageCertNo": "",
        "ifsystem": "",
        "manageBeginDate": ""
    }
}

return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: basicData
});