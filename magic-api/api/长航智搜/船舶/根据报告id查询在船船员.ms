{
  "properties" : { },
  "id" : "824b3125283f4442b6501a07d15b73ce",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "根据报告id查询在船船员",
  "createTime" : null,
  "updateTime" : 1711369734866,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getCrewByReportId",
  "method" : "GET",
  "parameters" : [ {
    "name" : "reportId",
    "value" : "cf1e0ae3-cdeb-439a-9857-e878f4ff47b0",
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
    "name" : "page",
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
    "name" : "size",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"list\": [{\n            \"totalCount\": \"4\",\n            \"crewId\": \"9A06DAB9E6A7D767E053710820C65D50\",\n            \"reportId\": \"cf1e0ae3-cdeb-439a-9857-e878f4ff47b0\",\n            \"seqNo\": \"2\",\n            \"createDate\": \"2019-12-19 11:08:36\",\n            \"idCardNo\": \"4525**********5352\",\n            \"name\": \"郑金桥\",\n            \"dutyCode\": \"驾驶员\",\n            \"certType\": \"内河证书\",\n            \"certNo\": \"4525**********5352\",\n            \"certLevelCode\": \"N11\",\n            \"certDutyCode\": \"三副\",\n            \"compDutiesName\": \"\",\n            \"rowFlg\": \"1\",\n            \"_idCardNo\": \"452524198209035352\"\n        }, {\n            \"totalCount\": \"4\",\n            \"crewId\": \"9A06DAB9E6A5D767E053710820C65D50\",\n            \"reportId\": \"cf1e0ae3-cdeb-439a-9857-e878f4ff47b0\",\n            \"seqNo\": \"1\",\n            \"createDate\": \"2019-12-19 11:08:36\",\n            \"idCardNo\": \"4508**********3810\",\n            \"name\": \"李叶宾\",\n            \"dutyCode\": \"船长\",\n            \"certType\": \"内河证书\",\n            \"certNo\": \"4508**********3810\",\n            \"certLevelCode\": \"N11\",\n            \"certDutyCode\": \"船长\",\n            \"compDutiesName\": \"\",\n            \"rowFlg\": \"1\",\n            \"_idCardNo\": \"450881198209253810\"\n        }, {\n            \"totalCount\": \"4\",\n            \"crewId\": \"9A06DAB9E6ABD767E053710820C65D50\",\n            \"reportId\": \"cf1e0ae3-cdeb-439a-9857-e878f4ff47b0\",\n            \"seqNo\": \"4\",\n            \"createDate\": \"2019-12-19 11:08:36\",\n            \"idCardNo\": \"4508**********385X\",\n            \"name\": \"李合友\",\n            \"dutyCode\": \"undefined\",\n            \"certType\": \"内河证书\",\n            \"certNo\": \"4508**********385X\",\n            \"certLevelCode\": \"N00\",\n            \"certDutyCode\": \"普通船员（内河船舶船员）\",\n            \"compDutiesName\": \"\",\n            \"rowFlg\": \"1\",\n            \"_idCardNo\": \"45088119831205385X\"\n        }, {\n            \"totalCount\": \"4\",\n            \"crewId\": \"9A06DAB9E6A9D767E053710820C65D50\",\n            \"reportId\": \"cf1e0ae3-cdeb-439a-9857-e878f4ff47b0\",\n            \"seqNo\": \"3\",\n            \"createDate\": \"2019-12-19 11:08:36\",\n            \"idCardNo\": \"4508**********3845\",\n            \"name\": \"阮彩芬\",\n            \"dutyCode\": \"轮机长\",\n            \"certType\": \"内河证书\",\n            \"certNo\": \"4508**********3845\",\n            \"certLevelCode\": \"N21\",\n            \"certDutyCode\": \"轮机长\",\n            \"compDutiesName\": \"\",\n            \"rowFlg\": \"1\",\n            \"_idCardNo\": \"450881198405203845\"\n        }],\n        \"totalCount\": 4\n    }\n}",
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
            "name" : "totalCount",
            "value" : "4",
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
            "name" : "crewId",
            "value" : "9A06DAB9E6A7D767E053710820C65D50",
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
            "name" : "reportId",
            "value" : "cf1e0ae3-cdeb-439a-9857-e878f4ff47b0",
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
            "name" : "seqNo",
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
            "name" : "createDate",
            "value" : "2019-12-19 11:08:36",
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
            "name" : "idCardNo",
            "value" : "4525**********5352",
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
            "value" : "郑金桥",
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
            "name" : "dutyCode",
            "value" : "驾驶员",
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
            "name" : "certType",
            "value" : "内河证书",
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
            "name" : "certNo",
            "value" : "4525**********5352",
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
            "name" : "certLevelCode",
            "value" : "N11",
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
            "name" : "certDutyCode",
            "value" : "三副",
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
            "name" : "compDutiesName",
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
            "name" : "rowFlg",
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
            "name" : "_idCardNo",
            "value" : "452524198209035352",
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
      }, {
        "name" : "totalCount",
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
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
import response;

var lastSql22 = """
       select total_count,
       CREW_ID,
       REPORT_ID,
       SEQ_NO,
       CREATE_DATE,
       ID_CARD_NO,
       NAME,
       DUTY_CODE,
       CERT_TYPE,
       CERT_NO,
       CERT_LEVEL_CODE,
       CERT_DUTY_CODE,
       comp_duties_name,
       row_flg
  from (select distinct count(ID_CARD_NO) over() total_count,
                        T.CREW_ID,
                        T.REPORT_ID,
                        T.SEQ_NO,
                        T.CREATE_DATE,
                        T.ID_CARD_NO,
                        T.NAME,
                        T.DUTY_CODE,
                        T.CERT_TYPE,
                        T.CERT_NO,
                        T.CERT_LEVEL_CODE,
                        T.CERT_DUTY_CODE,
                        d.item_name_cn comp_duties_name,
                        row_number() OVER(PARTITION BY T.ID_CARD_NO ORDER BY T.CREATE_DATE desc) as row_flg,
                        d.sort
          from RPT_ON_SHIP_CREW_REC T
          left join dict_data.D_CB_AQJD_CERT_DUTY d
            on T.duty_code = d.code
         where T.report_id = #{reportId}
           and 1 = 1
           and t.delete_flag = '0'
         order by d.sort asc) a
 where a.row_flg = 1
             """;
var list = db.biz_data.camel().select(lastSql22);
var totalCount = 0;
for (item in list) {
    item.put("certDutyCode", TagUtils.getTagNameByCode("offiDutyTag", item.get("certDutyCode")))
    item.put("dutyCode", TagUtils.getTagNameByCode("offiDutyTag", item.get("dutyCode")))
    item.put("certType", TagUtils.getTagNameByCode("certType", item.get("certType")::string))
    item.put("_idCardNo",item.get("idCardNo")::string)
    //      数据脱敏
    item.put("idCardNo", DesensitizationUtil.idCardNum(item.get("idCardNo")::string))
    item.put("certNo", DesensitizationUtil.isIdCardNo(item.get("certNo")::string))
    if (item.get("mobilePhone") != null && item.get("mobilePhone") != '') {
        item.put("_mobilePhone", DesensitizationUtil.mobilePhone(item.get("mobilePhone")::string))
    }
    totalCount = item.get("totalCount")==null?"0":item.get("totalCount");
}

if (list == null) {
    list = [];
}

return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: {
        "list": list,
        "totalCount": Integer.parseInt(totalCount::string)
    }
});