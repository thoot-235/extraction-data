{
  "properties" : { },
  "id" : "2a0c113195bc41749ab26520b87e0339",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "事故信息统计接口",
  "createTime" : null,
  "updateTime" : 1747102620131,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/listAccidentShipTotal",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipId",
    "value" : "CN19994206284",
    "description" : "",
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
    "name" : "shipRegNo",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": \"9000\"\n}",
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
      "value" : "9000",
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
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;

var cbSql;

cbSql = """select count(pb.ID) over() total_count,pb.acci_Summary,pb.acci_Time,pb.acci_Name,
                pb.if_Abroad,pb.acci_Type,
				pb.admin_Org_Code,pb.acci_Loc_Desc,
                                pb.acci_Grade,p.ship_Injury,p.ship_Death,p.ship_Loss
                from ACCI_BASIC_DATA pb
				left join    ACCI_SHIP p on pb.id=p.ACCIDENT_INFO_ID
                where 1=1
                ?{shipId,and p.SHIP_ID =#{shipId}}
                ?{shipNameCn,and p.ship_name_cn =#{shipNameCn}}
                ?{shipNameEn,and p.ship_name_en =#{shipNameEn}}
                ?{shipRegNo,and p.ship_reg_no =#{shipRegNo}}
                and pb.delete_flag='0' and p.delete_flag='0'
                order by pb.acci_Time desc""";

import response
var list = db.biz_data.camel().select(cbSql);
var totalCount = 0;
for (item in list) {
    totalCount = item.get("totalCount");
}

return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: totalCount

});