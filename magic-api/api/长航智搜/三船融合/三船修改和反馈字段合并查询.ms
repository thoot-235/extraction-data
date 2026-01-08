{
  "properties" : { },
  "id" : "ee32936a984d4591b21f94f85d799c4d",
  "script" : null,
  "groupId" : "c02d793d72c844c4b8d76db461f1ddf0",
  "name" : "三船修改和反馈字段合并查询",
  "createTime" : null,
  "updateTime" : 1753777722227,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getAuditAndFeedBack",
  "method" : "GET",
  "parameters" : [ {
    "name" : "type",
    "value" : "3",
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
    "name" : "identifier",
    "value" : "nr0MUPiOq3FvHrlAc2wAp2iAdAhbKBAQTBRNQSknvPw%3D",
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
    "name" : "sourceType",
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
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"columnCn\": \"证件号码\",\n        \"columnEn\": \"ID_CARD_NO\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"\",\n        \"columType\": \"input\",\n        \"auditReferenceUnit\": \"\",\n        \"auditReferenceUnitCode\": \"\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"4\"\n    }, {\n        \"columnCn\": \"姓名\",\n        \"columnEn\": \"NAME\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"\",\n        \"columType\": \"input\",\n        \"auditReferenceUnit\": \"身份证正面,身份证反面,适任证书\",\n        \"auditReferenceUnitCode\": \"3,4,10\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"2\"\n    }, {\n        \"columnCn\": \"性别\",\n        \"columnEn\": \"SEX\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"sexTag\",\n        \"columType\": \"select\",\n        \"auditReferenceUnit\": \"身份证正面,身份证反面,适任证书\",\n        \"auditReferenceUnitCode\": \"3,4,10\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"2\"\n    }, {\n        \"columnCn\": \"民族\",\n        \"columnEn\": \"NATION\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"nationTag\",\n        \"columType\": \"select\",\n        \"auditReferenceUnit\": \"身份证正面,身份证反面,适任证书\",\n        \"auditReferenceUnitCode\": \"3,4,10\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"2\"\n    }, {\n        \"columnCn\": \"出生日期\",\n        \"columnEn\": \"BIRTH_DATE\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"\",\n        \"columType\": \"date\",\n        \"auditReferenceUnit\": \"身份证正面,身份证反面,适任证书\",\n        \"auditReferenceUnitCode\": \"3,4,10\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"2\"\n    }, {\n        \"columnCn\": \"出生地点\",\n        \"columnEn\": \"PLACE_BIRTH\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"placeBirthTag\",\n        \"columType\": \"select\",\n        \"auditReferenceUnit\": \"\",\n        \"auditReferenceUnitCode\": \"\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"2\"\n    }, {\n        \"columnCn\": \"证件住址\",\n        \"columnEn\": \"IDCARD_ADDRESS\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"\",\n        \"columType\": \"input\",\n        \"auditReferenceUnit\": \"身份证正面,身份证反面,适任证书\",\n        \"auditReferenceUnitCode\": \"3,4,10\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"2\"\n    }, {\n        \"columnCn\": \"证件发证机关\",\n        \"columnEn\": \"IDCARD_ISSUE_ORG\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"\",\n        \"columType\": \"input\",\n        \"auditReferenceUnit\": \"身份证正面,身份证反面,适任证书\",\n        \"auditReferenceUnitCode\": \"3,4,10\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"2\"\n    }, {\n        \"columnCn\": \"证件有效开始日期\",\n        \"columnEn\": \"IDCARD_START_DATE\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"\",\n        \"columType\": \"date\",\n        \"auditReferenceUnit\": \"身份证正面,身份证反面,适任证书\",\n        \"auditReferenceUnitCode\": \"3,4,10\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"2\"\n    }, {\n        \"columnCn\": \"证件有效截止日期\",\n        \"columnEn\": \"IDCARD_END_DATE\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"\",\n        \"columType\": \"date\",\n        \"auditReferenceUnit\": \"身份证正面,身份证反面,适任证书\",\n        \"auditReferenceUnitCode\": \"3,4,10\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"2\"\n    }, {\n        \"columnCn\": \"户籍省份\",\n        \"columnEn\": \"REGISTER_PROVINCE\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"placeBirthTag\",\n        \"columType\": \"select\",\n        \"auditReferenceUnit\": \"户口本\",\n        \"auditReferenceUnitCode\": \"18\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"2\"\n    }, {\n        \"columnCn\": \"户籍城市\",\n        \"columnEn\": \"REGISTER_CITY\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"placeBirthTag\",\n        \"columType\": \"select\",\n        \"auditReferenceUnit\": \"户口本\",\n        \"auditReferenceUnitCode\": \"18\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"2\"\n    }, {\n        \"columnCn\": \"户籍区县\",\n        \"columnEn\": \"REGISTER_COUNTY\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"placeBirthTag\",\n        \"columType\": \"select\",\n        \"auditReferenceUnit\": \"户口本\",\n        \"auditReferenceUnitCode\": \"18\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"2\"\n    }, {\n        \"columnCn\": \"护照类型\",\n        \"columnEn\": \"PASSPORT_TYPE\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"passportType\",\n        \"columType\": \"select\",\n        \"auditReferenceUnit\": \"护照\",\n        \"auditReferenceUnitCode\": \"16\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"2\"\n    }, {\n        \"columnCn\": \"护照号码\",\n        \"columnEn\": \"PASSPORT_ID\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"\",\n        \"columType\": \"input\",\n        \"auditReferenceUnit\": \"护照\",\n        \"auditReferenceUnitCode\": \"16\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"2\"\n    }, {\n        \"columnCn\": \"护照截止日期\",\n        \"columnEn\": \"PASSPORT_END_DATE\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"\",\n        \"columType\": \"date\",\n        \"auditReferenceUnit\": \"护照\",\n        \"auditReferenceUnitCode\": \"16\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"2\"\n    }, {\n        \"columnCn\": \"是否党员\",\n        \"columnEn\": \"IF_PARTY_MEMBER\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"isOrNotTag\",\n        \"columType\": \"select\",\n        \"auditReferenceUnit\": \"\",\n        \"auditReferenceUnitCode\": \"\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"3\"\n    }, {\n        \"columnCn\": \"职称\",\n        \"columnEn\": \"TITLE\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"title\",\n        \"columType\": \"select\",\n        \"auditReferenceUnit\": \"\",\n        \"auditReferenceUnitCode\": \"\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"3\"\n    }, {\n        \"columnCn\": \"学历\",\n        \"columnEn\": \"EDUCATION\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"educationTag\",\n        \"columType\": \"select\",\n        \"auditReferenceUnit\": \"\",\n        \"auditReferenceUnitCode\": \"\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"3\"\n    }, {\n        \"columnCn\": \"学位\",\n        \"columnEn\": \"DEGREE\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"degreeTag\",\n        \"columType\": \"select\",\n        \"auditReferenceUnit\": \"\",\n        \"auditReferenceUnitCode\": \"\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"3\"\n    }, {\n        \"columnCn\": \"毕业院校\",\n        \"columnEn\": \"GRADUATE_UNIVERSITY\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"\",\n        \"columType\": \"input\",\n        \"auditReferenceUnit\": \"\",\n        \"auditReferenceUnitCode\": \"\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"3\"\n    }, {\n        \"columnCn\": \"专业\",\n        \"columnEn\": \"PROFESSIONAL\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"professionalTag\",\n        \"columType\": \"select\",\n        \"auditReferenceUnit\": \"\",\n        \"auditReferenceUnitCode\": \"\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"3\"\n    }, {\n        \"columnCn\": \"毕业日期\",\n        \"columnEn\": \"DIPLOMA_DATE\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"\",\n        \"columType\": \"date\",\n        \"auditReferenceUnit\": \"\",\n        \"auditReferenceUnitCode\": \"\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"3\"\n    }, {\n        \"columnCn\": \"毕业证号码\",\n        \"columnEn\": \"DIPLOMA_NO\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"\",\n        \"columType\": \"input\",\n        \"auditReferenceUnit\": \"\",\n        \"auditReferenceUnitCode\": \"\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"3\"\n    }, {\n        \"columnCn\": \"通信省份\",\n        \"columnEn\": \"COMM_PROV\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"placeBirthTag\",\n        \"columType\": \"select\",\n        \"auditReferenceUnit\": \"\",\n        \"auditReferenceUnitCode\": \"\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"3\"\n    }, {\n        \"columnCn\": \"通信城市\",\n        \"columnEn\": \"COMM_CITY\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"placeBirthTag\",\n        \"columType\": \"select\",\n        \"auditReferenceUnit\": \"\",\n        \"auditReferenceUnitCode\": \"\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"3\"\n    }, {\n        \"columnCn\": \"通信区县\",\n        \"columnEn\": \"COMM_COUNTY\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"placeBirthTag\",\n        \"columType\": \"select\",\n        \"auditReferenceUnit\": \"\",\n        \"auditReferenceUnitCode\": \"\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"3\"\n    }, {\n        \"columnCn\": \"通信地址\",\n        \"columnEn\": \"COMM_ADDR\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"\",\n        \"columType\": \"input\",\n        \"auditReferenceUnit\": \"\",\n        \"auditReferenceUnitCode\": \"\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"3\"\n    }, {\n        \"columnCn\": \"邮政编码\",\n        \"columnEn\": \"ZIP_CODE\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"\",\n        \"columType\": \"input\",\n        \"auditReferenceUnit\": \"\",\n        \"auditReferenceUnitCode\": \"\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"3\"\n    }, {\n        \"columnCn\": \"手机号码\",\n        \"columnEn\": \"MOBILE_PHONE\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"\",\n        \"columType\": \"input\",\n        \"auditReferenceUnit\": \"\",\n        \"auditReferenceUnitCode\": \"\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"3\"\n    }, {\n        \"columnCn\": \"电子邮箱\",\n        \"columnEn\": \"EMAIL\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"\",\n        \"columType\": \"input\",\n        \"auditReferenceUnit\": \"\",\n        \"auditReferenceUnitCode\": \"\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"3\"\n    }, {\n        \"columnCn\": \"QQ号码\",\n        \"columnEn\": \"QQ_NO\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"\",\n        \"columType\": \"input\",\n        \"auditReferenceUnit\": \"\",\n        \"auditReferenceUnitCode\": \"\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"3\"\n    }, {\n        \"columnCn\": \"微信号码\",\n        \"columnEn\": \"WECHAT_NO\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"\",\n        \"columType\": \"input\",\n        \"auditReferenceUnit\": \"\",\n        \"auditReferenceUnitCode\": \"\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"3\"\n    }, {\n        \"columnCn\": \"联系人手机\",\n        \"columnEn\": \"CELL_PHONE1\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"\",\n        \"columType\": \"input\",\n        \"auditReferenceUnit\": \"\",\n        \"auditReferenceUnitCode\": \"\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"3\"\n    }, {\n        \"columnCn\": \"联系人名字\",\n        \"columnEn\": \"CONTACT1_NAME\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"\",\n        \"columType\": \"input\",\n        \"auditReferenceUnit\": \"\",\n        \"auditReferenceUnitCode\": \"\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"3\"\n    }, {\n        \"columnCn\": \"联系人与船员关系\",\n        \"columnEn\": \"CONTACT1_RELA\",\n        \"tableNameEn\": \"5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA\",\n        \"tableNameCn\": \"31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9\",\n        \"pkPrimary\": \"ID_CARD_NO\",\n        \"dict\": \"\",\n        \"columType\": \"input\",\n        \"auditReferenceUnit\": \"\",\n        \"auditReferenceUnitCode\": \"\",\n        \"valueCn\": \"\",\n        \"value\": \"\",\n        \"columFlag\": \"3\"\n    }]\n}",
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
          "name" : "columnCn",
          "value" : "证件号码",
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
          "name" : "columnEn",
          "value" : "ID_CARD_NO",
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
          "name" : "tableNameEn",
          "value" : "5BD4F649163149FE6B80A45BE2E60047ABDC0EEA6D8C60B0C77743F46093ABEA",
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
          "name" : "tableNameCn",
          "value" : "31F05B7207027DC1F2C614729B410905A6F68F86A9FC2C296C0BCFA37C66BAF9",
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
          "name" : "pkPrimary",
          "value" : "ID_CARD_NO",
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
          "name" : "dict",
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
          "name" : "columType",
          "value" : "input",
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
          "name" : "auditReferenceUnit",
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
          "name" : "auditReferenceUnitCode",
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
          "name" : "valueCn",
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
          "name" : "value",
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
          "name" : "columFlag",
          "value" : "4",
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
    } ]
  }
}
================================

import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.utils.AESUtil' as AESUtil;
import response;
import log;
import 'org.springblade.common.utils.ZzSecurityHelper' as ZzSecurityHelper;
import 'com.alibaba.fastjson.JSON' as JSONA


log.info("identifieridentifier"+identifier)
var identifierLast=identifier;
var identifier2=ZzSecurityHelper.decryptAES(identifier);
if(identifier2==null){
   identifier=identifierLast;
}else{
   identifier=identifier2;
}


 var  sql=""" 
            select  column_cn  as column_cn,column_en as column_en,a.table_name_en,
            a.table_name_Cn,pk_primary,dict,colum_type,MAINTENANCE_FLAG,IS_AUDITY_FLAG,NOT_AUDITY_FLAG,
            IF_FEEDBACK,
             (case when AUDIT_REFERENCE_UNIT='船检证书或内河船舶安全与环保证书' then '船检证书' else AUDIT_REFERENCE_UNIT end)AUDIT_REFERENCE_UNIT,
            AUDIT_REFERENCE_UNIT_code
            from  sc_table_fields  a
            left join   sc_table_types b on a.table_name_en = b.table_name_en 
            where b.id=#{type}  order by a.order_by
"""
var res=db.base_data.camel().select(sql);
var  tableNameEn = "";
var  tableNameCn = "";
var  pkPrimary="";
var  columns="";  
var  tableNameEnAes = ""; 
var  tableNameCnAes = ""; 

if(res.size()>0){
    var i = 1;
    for(item in res){
        tableNameEn = item.get("tableNameEn");
        
        tableNameEnAes = AESUtil.parseByte2HexStr(AESUtil.encrypt(tableNameEn,"bmtoch"));
        tableNameCnAes = AESUtil.parseByte2HexStr(AESUtil.encrypt(item.get("tableNameCn"),"bmtoch"));
        pkPrimary = item.get("pkPrimary");
        if(i!=res.size()){
           columns=columns+ item.get("columnEn") +","
        }else{
           columns=columns+ item.get("columnEn") 
        }
        
        i++;
    }
}
log.info("tableNameEntableNameEn"+tableNameEn);

log.info("columnscolumns"+columns);

if(pkPrimary.contains("&&")){
    pkPrimary = pkPrimary.replace("&&","||")
}
log.info("pkPrimarypkPrimary"+pkPrimary);

if(identifier.contains("&amp;&amp;")){
    identifier = identifier.replace("&amp;&amp;","")
}
 
var detailSql=""" select ${columns} from ${tableNameEn}   where ${pkPrimary} = #{identifier}"""
if(sourceType!=null){
   if(sourceType.equals("1")){
       detailSql=""" select ${columns} from ${tableNameEn}   where ship_id = #{identifier} and rownum=1"""
   }
}

var resDetail=db.base_data.select(detailSql);

for(item in res){
    var columnName = item.get("columnEn");
    var columType = item.get("columType")!=null?item.get("columType").toString():"";
    var value ="";
    for(item2 in resDetail){
       value = item2.get(columnName);
       if(columType.equals("date")){
          value = item2.get(columnName)!=null?item2.get(columnName).toString():"";
          value=value.replaceAll(" 00:00:00.0","").replaceAll(" 00:00:00","");
       }
    }
    if(item.get("dict")!="" && item.get("dict")!=null){
        var dict =item.get("dict");
        item.put("valueCn",TagUtils.getTagNameByCode(item.get("dict"),value::string));
    }else{
       item.put("valueCn","");
    }

    item.put("value",value);
    item.put("tableNameEn",tableNameEnAes);
    item.put("tableNameCn",tableNameCnAes);

    var maintenanceFlag=item.get("maintenanceFlag");//动态维护标志
    var isAudityFlag=item.get("isAudityFlag");//动态维护标志
    var notAudityFlag=item.get("notAudityFlag");//动态维护标志
    var ifFeedback=item.get("ifFeedback");//动态维护标志
    var columValue=item.get("value");//字段值

    //"类型": "反馈？需要审核？无需审核？纯展示字段"  --字段权限划分
     //反馈的包含：：标志反馈字段ifFeedback==1，如果同时有动态维护字段maintenanceFlag为1且有值 才允许反馈。

     if(isAudityFlag=='1'){
         item.put("columFlag","2");//审核字段
     }
     //不需要审核--不需要审核字段为1
     else if(notAudityFlag=='1'){
         item.put("columFlag","3");//不需要审核字段
     } //纯展示字段
     else{
          item.put("columFlag","4");//纯展示字段
     }


      /**if((ifFeedback=='1'&& maintenanceFlag!='1')||(ifFeedback=='1'&& maintenanceFlag=='1'&&columValue!=null&columValue!='') ){
         item.put("columFlag","1");//反馈字段
      } 
     //需要审核字段-- 情况1：审核标志为isAudityFlag1      情况2：动态维护为1且不需要审核字段不为1，值为空
     else if(isAudityFlag=='1' ||(maintenanceFlag=='1'&&notAudityFlag!='1'&&(columValue==null||columValue==''))){
         item.put("columFlag","2");//审核字段
     }
     //不需要审核--不需要审核字段为1
     else if(notAudityFlag=='1'){
         item.put("columFlag","3");//不需要审核字段
     }
     //纯展示字段
     else{
          item.put("columFlag","4");//纯展示字段
     }*/
     item.remove("maintenanceFlag");
     item.remove("isAudityFlag");
     item.remove("notAudityFlag");
     item.remove("ifFeedback");    
}


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        data: ZzSecurityHelper.encryptAES(JSONA.toJSONString(res))
	});