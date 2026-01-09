{
  "properties" : { },
  "id" : "1f15fd52964e4e2ea76ce0eb752e3173",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "获取船舶水污染分页",
  "createTime" : null,
  "updateTime" : 1693552390609,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getShipWaterPollute",
  "method" : "GET",
  "parameters" : [ {
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
  }, {
    "name" : "shipId",
    "value" : "CN20099436517",
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
    "name" : "shipName",
    "value" : "赣武宁货3314",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"total\": 1,\n        \"list\": [{\n            \"shipName\": \"赣武宁货3314\",\n            \"startTime\": \"2022-01-26 19:30:51\",\n            \"berthNoCn\": \"兆基兴隆洲加油站\",\n            \"applyTypeCn\": \"船舶垃圾\",\n            \"applyNum\": \"3.00公斤\",\n            \"entApplyId\": \"H21486300596574842880\",\n            \"receiveShipId\": \"\",\n            \"receiveShipName\": \"\",\n            \"firstDtm\": \"\",\n            \"ecgNoCn\": \"\",\n            \"receiveNum\": \"\",\n            \"entRecevieId\": \"\",\n            \"transportNum\": \"\",\n            \"transportComNoCn\": \"\",\n            \"entTranportNo\": \"\",\n            \"zytime\": \"\",\n            \"handleNum\": \"\",\n            \"handleCompNoCn\": \"\",\n            \"entHandleId\": \"\",\n            \"cztime\": \"\",\n            \"rowId\": \"1\"\n        }]\n    }\n}",
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
      "children" : [ {
        "name" : "total",
        "value" : "1",
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
            "name" : "shipName",
            "value" : "赣武宁货3314",
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
            "name" : "startTime",
            "value" : "2022-01-26 19:30:51",
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
            "name" : "berthNoCn",
            "value" : "兆基兴隆洲加油站",
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
            "name" : "applyTypeCn",
            "value" : "船舶垃圾",
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
            "name" : "applyNum",
            "value" : "3.00公斤",
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
            "name" : "entApplyId",
            "value" : "H21486300596574842880",
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
            "name" : "receiveShipId",
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
            "name" : "receiveShipName",
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
            "name" : "firstDtm",
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
            "name" : "ecgNoCn",
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
            "name" : "receiveNum",
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
            "name" : "entRecevieId",
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
            "name" : "transportNum",
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
            "name" : "transportComNoCn",
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
            "name" : "entTranportNo",
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
            "name" : "zytime",
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
            "name" : "handleNum",
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
            "name" : "handleCompNoCn",
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
            "name" : "entHandleId",
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
            "name" : "cztime",
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
            "name" : "rowId",
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
          } ]
        } ]
      } ]
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;

var cbSql;

cbSql = """select  a.ship_name,a.start_time,a.BERTH_NO_cn,
               a.APPLY_TYPE_cn,to_char(round(a.apply_num,2),'fm99990.00')||a.unit as apply_num ,a.ENT_APPLY_id,
              b.receive_ship_id,nvl((select ship_name_cn from bds_base_data.shp_basic_data dd where dd.ship_id=b.receive_ship_id and dd.status_flag='1' 
              and dd.delete_flag='0'),b.receive_ship_id) receive_ship_name,b.first_dtm,b.ecg_no_cn,round(b.receive_num,2)||b.unit as receive_num,b.ENT_RECEVIE_ID 
               ,round(c.TRANSPORT_NUM,2) ||c.unit as TRANSPORT_NUM  ,c.TRANSPORT_COM_NO_CN,c.ent_tranport_no,c.start_time zyTime,
               round(d.HANDLE_NUM,2)||d.HANDLE_UNIT as HANDLE_NUM ,d.HANDLE_COMP_NO_cn   ,d.ENT_HANDLE_ID  ,d.first_dtm czTime          
               from (select * from WATER_APPLY_DATA a 
               <trim prefix="WHERE" prefixOverrides="AND |OR ">
                <if test="shipId != null and shipId!=''">
                 a.ship_id=#{shipId}
                 </if>
                  <if test="mmsi != null and mmsi!=''">
                   or a.mmsi=#{mmsi}
                 </if>
                  <if test="shipName != null and shipName!=''">
                  or a.SHIP_NAME=#{shipName}
                 </if>
                 </trim>
                )  a 
               left join WATER_DISCHARGE_FLOW_DATA  b on a.ENT_APPLY_no=b.ENT_APPLY_id
               left join WATER_TRANSPORT_DATA c on b.ent_transport_no=c.ent_tranport_no
               left join WATER_HANDLE_DATA d on  c.ent_tranport_no=d.ent_tranport_no
             <trim prefix="WHERE" prefixOverrides="AND |OR ">
                  <if test="shipId != null and shipId!=''">
                  a.ship_id=#{shipId}
                  </if>
                   <if test="mmsi != null and mmsi!=''">
                   or a.mmsi=#{mmsi}
                 </if>
                 <if test="shipName != null and shipName!=''">
                  or a.SHIP_NAME=#{shipName}
                 </if>
             </trim>
              order by start_time desc
              
               
     
""";

import response
var list = db.sub_base_data.camel().page(cbSql);


return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: list

});