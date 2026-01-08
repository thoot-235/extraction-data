{
  "properties" : { },
  "id" : "34dae5ac59d04b27b509772e25dd59b8",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "查询安检信息之港口国安全检查(PSC)",
  "createTime" : null,
  "updateTime" : 1693552389693,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/portStateCheck",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipNameEn",
    "value" : "GAN WU NING HUO 3314",
    "description" : "",
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
    "name" : "beginTime",
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
    "name" : "endTime",
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
    "required" : true,
    "dataType" : "String",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"total\": 1,\n        \"list\": [{\n            \"formAId\": \"80852B2C31CE41FDA7EDD261D955100F\",\n            \"flagStateCode\": \"Hong Kong, China\",\n            \"formACompId\": \"1777DFB09D39402E9709FDC6F8EE0AB7\",\n            \"formAInspPortCode\": \"Bell Bay, TAS\",\n            \"shipTypeCode\": \"化学品船\",\n            \"formAInspAuthCode\": \"Australia\",\n            \"formAInspDate\": \"2021-05-06\",\n            \"formAInspDetention\": \"否\",\n            \"formAInspComment\": \"AMSA Inspection EventId: 1328505\",\n            \"formAInspId\": \"1041447\",\n            \"shipImo\": \"9366263\",\n            \"shipNameEn\": \"GAN WU NING HUO 3314\",\n            \"shipCallsign\": \"VRDW7\",\n            \"mmsi\": \"477058400\",\n            \"formAShipDateKeelLaid\": \"20071220\",\n            \"shipGrosston\": \"29733\",\n            \"formAShipDeadweight\": \"51527\",\n            \"formAShipClassSocietyName\": \"\",\n            \"idCode\": \"6028950\",\n            \"cmpNm\": \"Diamond Anglo Ship Management Pte Ltd (DASM)\",\n            \"formAReleaseDate\": \"2022-12-29 01:01:01\",\n            \"formAInspPscoName\": \"Jean-Marie Dominique SAUZIER\",\n            \"formAInspType\": \"INITIAL   \",\n            \"formALastModifyTime\": \"2021-12-11 01:20:44\",\n            \"formASubmitTime\": \"\",\n            \"formADefTotal\": \"1\",\n            \"nameOfMaster\": \"Aditya SINGH\",\n            \"formAInspDistrict\": \"Devonport\",\n            \"formAInspDistrictOffice\": \"Devonport Office\",\n            \"formAInspSuppDocum\": \"N         \",\n            \"formAAcceptByApcisTime\": \"\",\n            \"formATraineeName\": \"\",\n            \"formAShipClassSocietyCode\": \"158\",\n            \"formACompImo\": \"6028950\",\n            \"formAInspAuthReference\": \"\",\n            \"formACompAddress\": \"\",\n            \"formACompTown\": \"\",\n            \"formACompRegistration\": \"\",\n            \"formACompResidence\": \"\",\n            \"formACompPhone\": \"\",\n            \"formACompFax\": \"\",\n            \"formACompEmail\": \"\",\n            \"formACompWebsite\": \"\",\n            \"formAPortOffice\": \"\",\n            \"totalCount\": \"1\",\n            \"rowId\": \"1\"\n        }]\n    }\n}",
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
    "dataType" : "String",
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
      }, {
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
            "value" : "Hong Kong, China",
            "description" : "",
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
            "value" : "Bell Bay, TAS",
            "description" : "",
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
            "value" : "化学品船",
            "description" : "",
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
            "value" : "Australia",
            "description" : "",
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
            "name" : "formAInspDetention",
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
            "value" : "GAN WU NING HUO 3314",
            "description" : "",
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
            "value" : "2022-12-29 01:01:01",
            "description" : "",
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
            "name" : "rowId",
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
          } ]
        } ]
      } ]
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;
import log;
shipNameEn = (shipNameEn == null ? "" : shipNameEn).replace("<em>", "").replace("</em>", "");
shipImo = (shipImo == null ? "" : shipImo).replace("<em>", "").replace("</em>", "");
mmsi = (mmsi == null ? "" : mmsi).replace("<em>", "").replace("</em>", "");
shipCallsign = (shipCallsign == null ? "" : shipCallsign).replace("<em>", "").replace("</em>", "");

var sql = """select *
  from (select  FORM_A_ID, FLAG_STATE_CODE, FORM_A_COMP_ID, FORM_A_INSP_PORT_CODE, SHIP_TYPE_CODE, FORM_A_INSP_AUTH_CODE,                         to_char(FORM_A_INSP_DATE,'yyyy-MM-dd') FORM_A_INSP_DATE,             FORM_A_INSP_DETENTION, FORM_A_INSP_COMMENT, FORM_A_INSP_ID, SHIP_IMO, SHIP_NAME_EN, SHIP_CALLSIGN, MMSI, FORM_A_SHIP_DATE_KEEL_LAID, SHIP_GROSSTON, FORM_A_SHIP_DEADWEIGHT, FORM_A_SHIP_CLASS_SOCIETY_NAME, ID_CODE, CMP_NM, FORM_A_RELEASE_DATE, FORM_A_INSP_PSCO_NAME,FORM_A_INSP_TYPE, FORM_A_LAST_MODIFY_TIME, FORM_A_SUBMIT_TIME, FORM_A_DEF_TOTAL, NAME_OF_MASTER, FORM_A_INSP_DISTRICT, FORM_A_INSP_DISTRICT_OFFICE,FORM_A_INSP_SUPP_DOCUM, FORM_A_ACCEPT_BY_APCIS_TIME, FORM_A_TRAINEE_NAME, FORM_A_SHIP_CLASS_SOCIETY_CODE, FORM_A_COMP_IMO, FORM_A_INSP_AUTH_REFERENCE,FORM_A_COMP_ADDRESS, FORM_A_COMP_TOWN, FORM_A_COMP_REGISTRATION, FORM_A_COMP_RESIDENCE, FORM_A_COMP_PHONE, FORM_A_COMP_FAX, FORM_A_COMP_EMAIL, FORM_A_COMP_WEBSITE, FORM_A_PORT_OFFICE,count(*) OVER() total_count
        from PSC_INSP_FORM_A  where 1=1 
        ?{beginTime,and FORM_A_INSP_DATE >= to_date(#{beginTime}, 'yyyy-MM-dd hh24:mi:ss')}
        ?{endTime,and FORM_A_INSP_DATE <= to_date(#{endTime}, 'yyyy-MM-dd hh24:mi:ss')}
        ?{shipNameEn,and ship_name_en = #{shipNameEn}}
        ?{shipImo,and ship_imo = #{shipImo}}
        ?{mmsi,and mmsi = #{mmsi}}
        ?{shipCallsign,and ship_callsign = #{shipCallsign}}
        and delete_flag='0'
        order by FORM_A_LAST_MODIFY_TIME desc
        ) x
        where rownum = 1
        """;

var list = db.biz_data.camel().page(sql);
if (list.list != null) {
    for (item in list.list) {
        item.put("formAInspDetention", TagUtils.getTagNameByCode("isFormAInspDetentionTag", item.get("formAInspDetention")));
        item.put("flagStateCode", TagUtils.getTagNameByCode("flagStateCodeTag", item.get("flagStateCode")));
        item.put("formAInspAuthCode", TagUtils.getTagNameByCode("flagStateCodeTag", item.get("formAInspAuthCode")));
        item.put("formAInspPortCode", TagUtils.getTagNameByCode("inspPortCodeTag", item.get("formAInspPortCode")));
        item.put("shipTypeCode", TagUtils.getTagNameByCode("pscShipClassTag", item.get("shipTypeCode")));
    }
}

return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: list
});