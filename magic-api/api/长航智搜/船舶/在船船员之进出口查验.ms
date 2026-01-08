{
  "properties" : { },
  "id" : "1757109cc48948088200f61f60f23457",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "在船船员之进出口查验",
  "createTime" : null,
  "updateTime" : 1693552389618,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getInAndOutPort",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipNo",
    "value" : "C9484302",
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
    "name" : "time",
    "value" : "2023-1-5",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {}\n}",
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
      "dataType" : "Object",
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

var InPortInfo = """
 select
            e.INSPECT_ID,e.VOYAGE_ID,e.DECLARE_NO,e.BARGE_BUSI_NO,e.SHIP_NO,e.DEPARTURE_PORT,e.ORIGN_PORT_NATION,e.ARRIVE_TIME,e.LAST_PORT_NATION,
            e.LAST_PORT,e.LAST_PORT_EN,e.PORT_CODE,e.BERTH_CODE,e.HONG_KONG_DOWN,e.ACTUAL_CAPACITY,e.UNLOAD_GOODS_NUMBER,e.ACTURAL_GOODS_NO,e.DANGER_GOODS_NO,
            e.GOODS_NAME,e.UNLOAD_BARGE_NO,e.BARGE_NO,e.CREW_NO,e.BEFORE_DRAFT,e.AFTER_DRAFT,e.AGENT_CODE,e.VOYAGE_NO,e.SAILINGAREA_CODE,e.BID_NAME,e.BUSINESS_ROUTE_CODE,
            e.PERIODIC_INSPECTION_ID,e.PERIODIC_INSPECTION_NO,e.LAST_PORT_LICENSE_NO,e.ACCEPTOR_CODE,e.ACCEPT_TIME,e.REMARK
                ,row_number() over(order by e.ship_no DESC) as rownumber from SHP_IMP_INSPECTION e where
            e.ship_no=#{shipNo} and to_char(ARRIVE_TIME,'yyyy-MM-dd') <=#{time} and delete_flag='0'  order by ARRIVE_TIME desc 
""";

var inspectDTO = """
select
        e.INSPET_ID,e.VOYAGE_ID,e.DECLARE_NO,e.BARGE_BUSI_NO,e.SHIP_NO,e.DESTINATION_PORT,e.DEST_PORT_NATION,e.DEPART_TIME,e.NEXT_PORT_NATION,
        e.NEXT_PORT,e.NEXT_PORT_IN_ENGLISH,e.PORT_CODE,e.BERTH_CODE,e.LOAD_PASSENGER_NO,e.ACTUAL_CAPACITY,e.LOAD_GOODS_NO,e.ACTURAL_GOODS_NO,e.DANGER_GOODS_NO,
        e.GOODS_NAME,e.PORT_BARGE,e.NUM_OF_BARGE,e.NUM_OF_CREWS,e.BEFORE_DRAFT,e.AFTER_DRAFT,e.AGENT_CODE,e.VOYAGE_NO,e.SAILINGAREA_CODE,e.BID_NAME,
        e.BUSINESS_ROUTE_CODE,e.PERIODIC_INSPECTION_ID,e.PERIODIC_INSPECTION_NO,e.EXPORT_LICENSE_NO,e.ACCEPTOR_CODE,e.ACCEPT_TIME,e.REMARK
        ,row_number() over(order by e.ship_no DESC) as rownumber from SHP_EXP_INSPECTION e where
        e.ship_no=#{shipNo} and to_char(DEPART_TIME,'yyyy-MM-dd') <=#{time} and delete_flag='0' order by DEPART_TIME desc 
""";

import response
var InPortInfoData = db.biz_data.camel().selectOne(InPortInfo);
var inspectDTOData = db.biz_data.camel().selectOne(inspectDTO);

if (InPortInfoData != null && inspectDTOData != null) {
    InPortInfoData.put("portCode", TagUtils.getTagNameByCode("portListTag", InPortInfoData.get("portCode")))
    inspectDTOData.put("portCode", TagUtils.getTagNameByCode("portListTag", InPortInfoData.get("portCode")))
    if (InPortInfoData.get("acceptTime") > inspectDTOData.get("departTime")) {
        InPortInfoData.put("title", "进口查验");
        return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            data: InPortInfoData
        });
    } else {
        inspectDTOData.put("title", "出口查验");
        return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            data: inspectDTOData
        });
    }
} else if (InPortInfoData != null) {
    InPortInfoData.put("portCode", TagUtils.getTagNameByCode("portListTag", InPortInfoData.get("portCode")))
    InPortInfoData.put("title", "进口查验");
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        data: InPortInfoData
    });
} else if (inspectDTOData != null) {
    inspectDTOData.put("portCode", TagUtils.getTagNameByCode("portListTag", InPortInfoData.get("portCode")))
    inspectDTOData.put("title", "出口查验");
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        data: inspectDTOData
    });
} else {
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        data: {}
    });
}