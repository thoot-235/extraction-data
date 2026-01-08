{
  "properties" : { },
  "id" : "9d8e09191b674a8b9f2a993012cbbd51",
  "script" : null,
  "groupId" : "429bf27232e44bdbae1a46ea3dcc6609",
  "name" : "船员基本信息",
  "createTime" : null,
  "updateTime" : 1749721861971,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getCrewBasic",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"idCardNo\": \"FXtN7UWYnjkbNKiyP+54CshLHbufzumOhzLoZ4Hxshw=\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"regOrg\": \"\",\n        \"name\": \"葛德翔\",\n        \"nameSpell\": \"Ge Dexiang\",\n        \"idCardNo\": \"340***********133\",\n        \"idNoRedundancy\": \"340321198907203133\",\n        \"homeAddr\": \"安徽省蚌埠市怀远县河溜镇街道９号\",\n        \"birthDate\": \"1989-07-20\",\n        \"nationality\": \"中国\",\n        \"mobilePhone\": \"13995698099\",\n        \"contact1Rela\": \"本人\",\n        \"sex\": \"男\",\n        \"nation\": \"1\",\n        \"education\": \"\",\n        \"degree\": \"\",\n        \"professional\": \"\",\n        \"graduateUniversityName\": \"\",\n        \"graduateUniversity\": \"\",\n        \"diplomaNo\": \"\",\n        \"otherEducation\": \"\",\n        \"otherDegree\": \"\",\n        \"otherProfessional\": \"\",\n        \"otherGraduateUniversity\": \"\",\n        \"otherDiplomaNo\": \"\",\n        \"otherGraduateDate\": \"\",\n        \"placeBirth\": \"安徽省\",\n        \"age\": \"35\",\n        \"servbookCode\": \"340***********133\",\n        \"issuOrg\": \"怀远县公安局\",\n        \"nameUsed\": \"\",\n        \"idcardStartDate\": \"2021-12-15\",\n        \"idcardEndDate\": \"2041-12-15\",\n        \"idcardAddress\": \"安徽省蚌埠市怀远县河溜镇街道９号\",\n        \"commAddr\": \"河溜镇街道９号\",\n        \"officePhone\": \"\",\n        \"email\": \"\",\n        \"zipCode\": \"\",\n        \"contact1Name\": \"\",\n        \"cellPhone1\": \"\",\n        \"contact2Name\": \"\",\n        \"contact2Rela\": \"\",\n        \"cellPhone2\": \"\",\n        \"diplomaDate\": \"1900-01-01 00:00:00\",\n        \"commProv\": \"安徽省\",\n        \"commCity\": \"蚌埠市\",\n        \"commCounty\": \"怀远县\",\n        \"servIssuOrg\": \"安徽省地方海事局\",\n        \"servIssuDate\": \"2010/06/30\",\n        \"ifPartyMember\": \"\",\n        \"registerProvince\": \"安徽省\",\n        \"idcardIssueOrg\": \"怀远县公安局\",\n        \"registerCity\": \"\",\n        \"registerCounty\": \"\",\n        \"passportType\": \"\",\n        \"passportId\": \"\",\n        \"passportEndDate\": \"1900-01-01 00:00:00\",\n        \"title\": \"\",\n        \"qqNo\": \"\",\n        \"wechatNo\": \"\",\n        \"regOrgCn\": \"\",\n        \"_mobilePhone\": \"139****8099\",\n        \"_cellPhone1\": \"\",\n        \"_cellPhone2\": \"\",\n        \"servbookCodeOriginal\": \"340321198907203133\",\n        \"_officePhone\": \"--\",\n        \"emailOriginal\": \"\",\n        \"credi_ryb_flag\": \"\",\n        \"perfection\": \"\"\n    }\n}",
  "description" : "",
  "requestBodyDefinition" : {
    "name" : "root",
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
      "value" : "FXtN7UWYnjkbNKiyP+54CshLHbufzumOhzLoZ4Hxshw=",
      "description" : "",
      "required" : true,
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
        "name" : "regOrg",
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
        "name" : "name",
        "value" : "葛德翔",
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
        "name" : "nameSpell",
        "value" : "Ge Dexiang",
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
        "value" : "340***********133",
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
        "name" : "idNoRedundancy",
        "value" : "340321198907203133",
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
        "name" : "homeAddr",
        "value" : "安徽省蚌埠市怀远县河溜镇街道９号",
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
        "name" : "birthDate",
        "value" : "1989-07-20",
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
        "name" : "nationality",
        "value" : "中国",
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
        "value" : "13995698099",
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
        "name" : "contact1Rela",
        "value" : "本人",
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
        "name" : "sex",
        "value" : "男",
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
        "name" : "nation",
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
        "name" : "education",
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
        "name" : "degree",
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
        "name" : "professional",
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
        "name" : "graduateUniversityName",
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
        "name" : "graduateUniversity",
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
        "name" : "diplomaNo",
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
        "name" : "otherEducation",
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
        "name" : "otherDegree",
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
        "name" : "otherProfessional",
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
        "name" : "otherGraduateUniversity",
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
        "name" : "otherDiplomaNo",
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
        "name" : "otherGraduateDate",
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
        "name" : "placeBirth",
        "value" : "安徽省",
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
        "name" : "age",
        "value" : "35",
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
        "name" : "servbookCode",
        "value" : "340***********133",
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
        "name" : "issuOrg",
        "value" : "怀远县公安局",
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
        "name" : "nameUsed",
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
        "name" : "idcardStartDate",
        "value" : "2021-12-15",
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
        "name" : "idcardEndDate",
        "value" : "2041-12-15",
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
        "name" : "idcardAddress",
        "value" : "安徽省蚌埠市怀远县河溜镇街道９号",
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
        "name" : "commAddr",
        "value" : "河溜镇街道９号",
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
        "name" : "officePhone",
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
        "name" : "email",
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
        "name" : "zipCode",
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
        "name" : "contact1Name",
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
        "name" : "cellPhone1",
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
        "name" : "contact2Name",
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
        "name" : "contact2Rela",
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
        "name" : "cellPhone2",
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
        "name" : "diplomaDate",
        "value" : "1900-01-01 00:00:00",
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
        "name" : "commProv",
        "value" : "安徽省",
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
        "name" : "commCity",
        "value" : "蚌埠市",
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
        "name" : "commCounty",
        "value" : "怀远县",
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
        "name" : "servIssuOrg",
        "value" : "安徽省地方海事局",
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
        "name" : "servIssuDate",
        "value" : "2010/06/30",
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
        "name" : "ifPartyMember",
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
        "name" : "registerProvince",
        "value" : "安徽省",
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
        "name" : "idcardIssueOrg",
        "value" : "怀远县公安局",
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
        "name" : "registerCity",
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
        "name" : "registerCounty",
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
        "name" : "passportType",
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
        "name" : "passportId",
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
        "name" : "passportEndDate",
        "value" : "1900-01-01 00:00:00",
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
        "name" : "title",
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
        "name" : "qqNo",
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
        "name" : "wechatNo",
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
        "name" : "regOrgCn",
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
        "value" : "139****8099",
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
        "name" : "_cellPhone1",
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
        "name" : "_cellPhone2",
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
        "name" : "servbookCodeOriginal",
        "value" : "340321198907203133",
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
        "name" : "_officePhone",
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
        "name" : "emailOriginal",
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
        "name" : "credi_ryb_flag",
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
        "name" : "perfection",
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
      } ]
    } ]
  }
}
================================
import org.springblade.common.utils.ZzSecurityHelper
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
import log;
import response;
import 'org.springblade.core.secure.BladeUser' as  BladeUser
import 'org.springblade.core.secure.utils.AuthUtil' as AuthUtil

//过滤字段
import 'org.springframework.data.redis.core.StringRedisTemplate' as StringRedisTemplate
import 'org.ssssssss.magic.utils.TreeUtil' as TreeUtil;
import request;

//BladeUser user=AuthUtil.getUser();
log.info('==============开始时间：'+now()::string)
var idCardNo=(body.idCardNo==null?"":body.idCardNo).replace("<em>","").replace("</em>","");
if(idCardNo==null || idCardNo ==""){
    return response.json({
        resultCode: 200,
        resultMsg: "idCardNo不能为空"
    });
}
log.info("------------------------idCardNo---------------------------"+idCardNo);
idCardNo = ZzSecurityHelper.decryptAES(idCardNo);
/*
var fieldsPowerSql=""" select listagg(column_en,',')  within group 
                            (order by table_name_en)  as "colum" from bds_base_data.sc_table_fields 
                                where table_name_en='BDS_BASE_DATA.CREW_BASIC_DATA'""";
var fieldsPower=db.base_data.selectOne(fieldsPowerSql);//字段权限控制
log.info('===============fieldsPower完成时间：'+now()::string)
//先查询船员红黄黑名单

var crediSql="""
        select CREDI_RYB_FLAG,card_no
        from (select row_number() over(partition by card_no order by dishonesjs_date desc) rn,
                    card_no,
                    dishonesjs_date,
                    CREDI_RYB_FLAG
                from (select a.card_no,
                            b.create_time as dishonesjs_date,
                            'red' as CREDI_RYB_FLAG
                        from bds_biz_data.js_credijs_body_natural_person a
                        inner join bds_biz_data.js_credijs_red_list b
                            on a.info_id = b.id
                        where a.boins_type_id = '1'
                        
                        union all (
                                
                                select a.card_no,
                                        b.dishonesjs_date,
                                        'yellow' as CREDI_RYB_FLAG
                                    from bds_biz_data.js_credijs_body_natural_person a
                                inner join bds_biz_data.JS_CREDIJS_YELLOW_LIST b
                                    on a.info_id = b.id
                                where a.boins_type_id = '2')
                        
                        union all (                               
                                select a.card_no,
                                        b.dishonesjs_date,
                                        'black' as CREDI_RYB_FLAG
                                    from bds_biz_data.js_credijs_body_natural_person a
                                inner join bds_biz_data.js_credijs_black_list b
                                    on a.info_id = b.id
                                where a.boins_type_id = '3'
                                
                                ))) aa where  1=1 and  card_no=#{idCardNo}
        and aa.rn = 1  """;

   var basicCredi = db.base_data.camel().selectOne(crediSql);
       
log.info('===============basicCredi完成时间：'+now()::string)

 var sqlCount="select "+fieldsPower.get("colum")+""" from  bds_base_data.CREW_BASIC_DATA d
  where 1=1  
 and  d.delete_flag='0' 
 and d.id_card_no = #{idCardNo}
 and d.VALID_FLAG='1'""";
*/
var sql = """
select 
d.REG_ORG,d.name,
  d.name_spell,
       d.id_card_no,
       d.id_card_no as id_no_redundancy,----拦截器使用 勿删
       d.IDCARD_ADDRESS home_addr,
       case when to_char(d.birth_date, 'yyyy-MM-dd')='1900-01-01' then '--' else to_char(d.birth_date, 'yyyy-MM-dd') end   as birth_date,
       d.nationality,
       (case when d.mobile_phone is not null then d.mobile_phone 
            when d.mobile_phone is null and d.cell_Phone1 is not null then d.cell_Phone1
              when  d.mobile_phone is null and d.cell_Phone1 is  null then d.cell_phone2
                else '' end)mobile_phone ,
      (case when d.mobile_phone is not null then '本人' 
            when d.mobile_phone is null and d.cell_Phone1 is not null then '紧急联系人'
              when  d.mobile_phone is null and d.cell_Phone1 is  null then '紧急联系人'
                else '' end)CONTACT1_RELA ,            
       d.sex,
       d.nation,
       (case when d.education is null then d.OTHER_EDUCATION else d.education end) education,
        (case when d.education is null then d.other_DEGREE else d.DEGREE end)  DEGREE,
         (case when d.education is null then d.OTHER_PROFESSIONAL else d.PROFESSIONAL end) PROFESSIONAL,          
          (case when d.education is null then '' else 
          (SELECT COMP_NAME FROM BDS_BASE_DATA.ORG_CREW_BASIC_INFO WHERE COMP_ID = d.graduate_university) end) graduate_university_name ,
      -- (SELECT COMP_NAME FROM BDS_BASE_DATA.ORG_CREW_BASIC_INFO WHERE COMP_ID = d.graduate_university) as  graduate_university_name,
       (case when d.education is null then d.OTHER_graduate_university else d.graduate_university end) graduate_university,
       (case when d.education is null then d.OTHER_DIPLOMA_NO else d.DIPLOMA_NO end)  as DIPLOMA_NO,
       d.OTHER_EDUCATION,
       d.OTHER_DEGREE,
        d.OTHER_PROFESSIONAL,
       nvl((SELECT COMP_NAME FROM BDS_BASE_DATA.ORG_CREW_BASIC_INFO WHERE COMP_ID = d.OTHER_GRADUATE_UNIVERSITY),d.OTHER_GRADUATE_UNIVERSITY) 
       OTHER_GRADUATE_UNIVERSITY,
      
       d.OTHER_DIPLOMA_NO,
       case when '1900-01-01'=to_char(d.OTHER_GRADUATE_DATE,'yyyy-mm-dd') then null else 
        to_char(d.OTHER_GRADUATE_DATE,'yyyy-mm-dd') end OTHER_GRADUATE_DATE,
       d.place_birth,
       TRUNC( months_between( SYSDATE, d.BIRTH_DATE ) / 12 ) as age,
      -- c.SERVBOOK_CODE,
       d.IDCARD_ISSUE_ORG as issu_org,
       d.name_used,
       case when to_char(d.idcard_start_date,'yyyy-mm-dd')='1900-01-01' then '--' 
        else to_char(d.idcard_start_date,'yyyy-mm-dd')  end as idcard_start_date,
       case when to_char(d.idcard_end_date,'yyyy-mm-dd')='1900-01-01' then '--'
       when to_char(d.idcard_end_date,'yyyy-mm-dd')='3000-01-01' then '长期'
        else to_char(d.idcard_end_date,'yyyy-mm-dd') end  as idcard_end_date,
       d.IDCARD_ADDRESS,
       d.COMM_ADDR,
       d.OFFICE_PHONE,
       d.EMAIL,
       d.ZIP_CODE,
       d.CONTACT1_NAME,      
       d.CELL_PHONE1,
       d.CONTACT2_NAME,
       '' as CONTACT2_RELA,
       d.CELL_PHONE2,      
       case when '1900-01-01'=to_char(d.DIPLOMA_DATE,'yyyy-mm-dd') then null else  to_char(d.DIPLOMA_DATE,'yyyy-mm-dd') end  DIPLOMA_DATE,
        d.COMM_PROV,COMM_CITY,
       d.COMM_COUNTY ,
       --c.ISSU_ORG_CODE  as serv_ISSU_ORG,
       --case when to_char(c.ISSU_DATE,'yyyy-mm-dd')='1900-01-01' then '--' else to_char(c.ISSU_DATE,'yyyy/mm/dd') end  as serv_ISSU_DATE,
       d.IF_PARTY_MEMBER,d.CONTACT1_NAME,d.REGISTER_PROVINCE,d.IDCARD_ISSUE_ORG,d.REGISTER_CITY,d.REGISTER_COUNTY,d.PASSPORT_TYPE,d.PASSPORT_ID,d.PASSPORT_END_DATE,d.COMM_PROV,d.COMM_CITY,d.COMM_COUNTY,d.TITLE,d.DIPLOMA_DATE,d.QQ_NO,d.WECHAT_NO,d.CELL_PHONE1
  from bds_base_data.CREW_BASIC_DATA d
  --left join bds_base_data.CREW_CERT_SERVICEBOOK c
   -- on d.id_card_no = c.id_card_no and c.delete_flag='0'
 where  d.delete_flag='0' 
 and d.id_card_no = #{idCardNo}
 and d.VALID_FLAG='1'
 """
 /*
var sqlScore = """
    select nvl(sum(DEDUCSCORE_VALUE),0) as score from bds_base_data.CREW_ILLEGAL_SCORE where VALID_FLAG='1' ?{idCardNo,and id_card_no = #{idCardNo}}
 """*/
var basic = db.base_data.camel().select(sql);
log.info('===============basic完成时间：'+now()::string)
/*var sqlCountData = db.base_data.camel().selectOne(sqlCount);
log.info('===============sqlCountData完成时间：'+now()::string)
var perfection;
//计算空值率
if(sqlCountData!=null){
   var total=0;
   var notEmpty=0;
   sqlCountData.forEach((k,v)->{
       ++total;
       if(v!=null&&v!=''){
        ++notEmpty;
       }
       });
       perfection=String.format("%.2f",(Double.parseDouble(notEmpty.toString())/Double.parseDouble(total.toString()))*100)+"%";
       //log.info("空值率==="+Integer.parseInt(total.toString())+"个"+Integer.parseInt(notEmpty.toString())+"个" 
       //+String.format("%.2f",(Double.parseDouble(notEmpty.toString())/Double.parseDouble(total.toString()))*100)+"%")
}
*/
if (basic != null) {
    for (ret in basic) {
        ret.put("otherEducation", TagUtils.getTagNameByCode("educationTag", ret.get("otherEducation")));
        ret.put("otherDegree", TagUtils.getTagNameByCode("degreeTag", ret.get("otherDegree")));
        ret.put("otherGraduateUniversity", TagUtils.getTagNameByCode("degreeTag", ret.get("otherGraduateUniversity")));
        ret.put("otherProfessional", TagUtils.getTagNameByCode("professionalTag", ret.get("otherProfessional")));

        ret.put("sex", TagUtils.getTagNameByCode("sexTag", ret.get("sex")));
        ret.put("nation", TagUtils.getTagNameByCode("nationTag", ret.get("nation")));
        ret.put("nationality", TagUtils.getTagNameByCode("nationalityCrewTag", ret.get("nationality")));
        ret.put("education", TagUtils.getTagNameByCode("educationTag", ret.get("education")));
        ret.put("placeBirth", TagUtils.getTagNameByCode("placeBirthTag", ret.get("placeBirth")));
        ret.put("professional", TagUtils.getTagNameByCode("professionalTag", ret.get("professional")));
        ret.put("degree", TagUtils.getTagNameByCode("degreeTag", ret.get("degree")));
        ret.put("regOrgCn", TagUtils.getTagNameByCode("issuOrgTag", ret.get("regOrg")));


        ret.put("ifPartyMember", TagUtils.getTagNameByCode("isOrNotTag", ret.get("ifPartyMember")));
        ret.put("registerProvince", TagUtils.getTagNameByCode("placeBirthTag", ret.get("registerProvince")));
        ret.put("registerCity", TagUtils.getTagNameByCode("placeBirthTag", ret.get("registerCity")));
        ret.put("registerCounty", TagUtils.getTagNameByCode("placeBirthTag", ret.get("registerCounty")));
        ret.put("passportType", TagUtils.getTagNameByCode("passportType", ret.get("passportType")));
        ret.put("commProv", TagUtils.getTagNameByCode("placeBirthTag", ret.get("commProv")));
        ret.put("commCity", TagUtils.getTagNameByCode("placeBirthTag", ret.get("commCity")));
        ret.put("commCounty", TagUtils.getTagNameByCode("placeBirthTag", ret.get("commCounty")));
        ret.put("title", TagUtils.getTagNameByCode("title", ret.get("title")));

        
         //ret.put("servIssuOrg", TagUtils.getTagNameByCode("issuOrgTag", ret.get("servIssuOrg")));

 var _code=ret.get("servIssuOrg");
    if(_code!=null){
        _codeCn=TagUtils.getTagNameByCode("issuOrgTag", _code);
        
        if(_code==_codeCn){
            _code=_code.substring(0,4)+'00';
            _codeCn=TagUtils.getTagNameByCode("issuOrgTag", _code);
        if(_code==_codeCn){
                 _code=_code.substring(0,2)+'0000';
               
            _codeCn=TagUtils.getTagNameByCode("issuOrgTag", _code);
        }
           
        }
         ret.put("servIssuOrg", TagUtils.getTagNameByCode("issuOrgTag", _codeCn));
    }


        //  ret.put("contact1Rela",TagUtils.getTagNameByCode("degreeTag",ret.get("contact1Rela")));
        if (ret.get("graduateUniversityName") == null || ret.get("graduateUniversityName") == '') {
            ret.put("graduateUniversityName", ret.get("graduateUniversity"));
        }
     /*   var score = db.base_data.camel().selectOne(sqlScore);
        if (score != null) {
            ret.put("duceScore", score.get("score"));
        } else {
            ret.put("duceScore", 0);
        }*/
    }
}
log.info('===============sqlCount处理完成时间：'+now()::string)
//当前任职船舶、当前任职职务
//var crewDutySql = """
//select x.*, count(*) OVER() total_count
//  from (select row_number() over(partition by a.SERIAL_NO order by c.cj_active_time desc) rn,
//               a.offi_duty,
//               a.offi_ship_name_cn
//          from bds_biz_data.CREW_SERVICE_EXPE a
//          left join sub_base_data.shp_basic_data b
//            on (a.ship_id = b.ship_id or a.ship_no = b.ship_no)
//           and (a.ship_id is not null or a.ship_no is not null)
//        
//          left join sub_biz_data.SHIP_DYNAMICS_DATA c
//            on (a.ship_id = c.ship_id or a.ship_no = c.ship_no)
 //          and (a.ship_id is not null or a.ship_no is not null)
//           and c.cj_active_time is not null
//         where a.delete_flag = '0'
//           and a.id_card_no = #{idCardNo}
//         order by a.OFFI_DATE, decode(b.STATUS_FLAG, '1', 1) desc) x
// where rn = '1'
//"""

//当前任职船舶、当前任职职务
/*
var crewDutySql = """
select * from(select a.duty_name offiDuty,b.ship_name_cn offiShipNameCn, b.mmsi,b.ship_id from sub_biz_data.rpt_ship_eep_report_rec b, sub_biz_data.rpt_on_ship_crew_rec a 
where a.report_id=b.report_id and  a.id_card_no = #{idCardNo} and b.report_time >=sysdate-60
order by b.report_time desc)  where rownum=1
 */
/*
var crewDutySql = """
select c.item_name_cn offiDuty,b.ship_name_cn offiShipNameCn, b.mmsi,b.ship_id from ch.c_cb_ship_eep_report_rec b, ch.c_cb_on_ship_crew_rec a ,ch.d_cy_cert_duty_code c
where a.report_id=b.report_id and  a.duty_Code=c.code and a.id_card_no = #{idCardNo} and b.report_time >=current_date-60
order by b.report_time desc limit 1
"""



var crewDuty = db.gpadmin.camel().selectOne(crewDutySql);
log.info('===============crewDuty完成时间：'+now()::string)
log.info("crewDuty11111111111111111111"+crewDuty);
*/
if (basic.size() > 0) {
    basic = basic[0];
    //脱敏处理
    basic.put("_mobilePhone", DesensitizationUtil.mobilePhone(basic.get("mobilePhone")))
    basic.put("_cellPhone1", DesensitizationUtil.mobilePhone(basic.get("cellPhone1")))
    basic.put("_cellPhone2", DesensitizationUtil.mobilePhone(basic.get("cellPhone2")))
    basic.put("idCardNo", DesensitizationUtil.idCardNum(basic.get("idCardNo")))
    basic.put("servbookCodeOriginal", (basic.get("servbookCode")))
    basic.put("servbookCode", DesensitizationUtil.isIdCardNo(basic.get("servbookCode")))
    basic.put("_officePhone", DesensitizationUtil.isFixed(basic.get("officePhone") != null && basic.get("officePhone") != '' ? basic.get("officePhone") : '-'))
    basic.put("emailOriginal", (basic.get("email")))
    basic.put("email", DesensitizationUtil.email(basic.get("email")))
     if(basicCredi!=null){
        basic.put("credi_ryb_flag",basicCredi.get("crediRybFlag") );
      }else{
            basic.put("credi_ryb_flag","" );            
      }
/*
    if(crewDuty != null){
      //船员当前任职船舶、任职职务
        //basic.put("offiDuty",TagUtils.getTagNameByCode("offiDutyTag", crewDuty.get("offiDuty")));
        //basic.put("offiShipNameCn", crewDuty.get("offiShipNameCn"));
        
        var mmsi=crewDuty.get("mmsi");
        //从船舶基本信息取mmsi码，如果取不到再用报告里的mmsi码
        var shipSql = """
          select * from 
          (select mmsi from bds_base_data.sc_ship_basic_data
           where ship_id=#{crewDuty.get("shipId")} and mmsi is not null 
           order by status_flag asc, create_time desc nulls last
          ) where rownum=1         
        """
        var shipMmsi = db.base_data.camel().selectOne(shipSql);
        if(shipMmsi!=null){
          mmsi=shipMmsi.get("mmsi");
        }

        var crewDuty =  db.gpadmin.camel().selectOne(crewDutySql);
        basic.put("offiDuty",crewDuty.get("offiduty"));
        basic.put("offiShipNameCn", crewDuty.get("offishipnamecn"));
        basic.put("mmsi", mmsi);
        basic.put("shipId", crewDuty.get("shipId"));
    }else{
        basic.put("offiDuty","--");
        basic.put("offiShipNameCn", "--");
          basic.put("mmsi", "--");
    }
*/
} else {
    basic = {}
}

                      
        basic.perfection=perfection;
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: basic
});