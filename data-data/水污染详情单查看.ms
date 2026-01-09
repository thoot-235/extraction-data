{
  "properties" : { },
  "id" : "d44be77552234d1ea627a2469afe86d9",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "水污染详情单查看",
  "createTime" : null,
  "updateTime" : 1693552390149,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getShipWaterPolluteDetail",
  "method" : "GET",
  "parameters" : [ {
    "name" : "entApplyId",
    "value" : "H11464503517737332736",
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
    "name" : "entReceiveId",
    "value" : "J21464505721852399616",
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
    "name" : "entTranPortNo",
    "value" : "804437",
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
    "name" : "entHandleId",
    "value" : "C011470211380435546112",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"entApply\": {},\n        \"entReceive\": {},\n        \"entTransPort\": {},\n        \"entHandle\": {}\n    }\n}",
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
        "name" : "entApply",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Object",
        "type" : "",
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "entReceive",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Object",
        "type" : "",
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "entTransPort",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Object",
        "type" : "",
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "entHandle",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Object",
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

var entApply = {}; //水污染申请单数据

if (entApplyId != null&&entApplyId!='') {
    var sql = """
          select  ENT_APPLY_NO,ENT_APPLY_ID,FIRST_DTM,FIRST_USER,LAST_DTM,LAST_USER,RECEVIE_PEOPLE_TYPE,START_TIME,END_TIME,APPLY_TIME,APPLY_TYPE,APPLY_BY,STATUS,CANCELLATION,round(APPLY_NUM,2) APPLY_NUM,SHIP_ID,MMSI,RECEVIE_BY,GENERATIVE_STATE,DATA_SOURCE,IS_ANGEROU,ANGEROU_NAME,EQUIPMENT_NO,BERTH_NO,SYSID,PEOPLE_ONLINE,UNIT,PRIVATE_CODE,RECEIVE_SHIP_ID,SHIP_NAME_CN,SHIP_TYPE,OTHERS_COM_NO,SHIP_NAME,APPLY_TYPE_CN,STATE_CN,RECEVIE_PEOPLE_TYPE_CN,GENERATIVE_STATE_CN,EQUIPMENT_NO_CN,BERTH_NO_CN,SHIP_TYPE_CN,IMPORT_TIME from WATER_APPLY_DATA where 1=1
            ?{entApplyId,and ENT_APPLY_id = #{entApplyId}}
    """
    entApply = db.sub_base_data.camel().selectOne(sql);
}

var entReceive = {}; //水污染排放流数据

if (entReceiveId != null&&entReceiveId!='') {
    var sql = """
    select a.ENT_RECEVIE_ID,
       a.SHIP_NAME,
       a.START_TIME,
       a.MMSI,
       a.SYSID,
       a.ENT_APPLY_ID,
       a.FIRST_USER,
       a.SHIP_TYPE,
       round(a.RECEIVE_NUM, 2) RECEIVE_NUM,
       a.SHIP_ID,
       a.UNIT,
       a.RECEIVE_SHIP_ID,
       d.ship_name_cn RECEIVE_SHIP_name,
       a.RECEIVE_TYPE,
       a.END_TIME,
       a.FIRST_DTM,
       a.MODEL_OF_OPERATION,
       a.SEWAGE_TYPE,
       a.MODE_OF_OPERATION_OLD,
       a.ECG_NO,
       a.ENT_RECEVIE_NO,
      a.ENT_TRANSPORT_NO,
       a.LAST_DTM,
       a.LAST_USER,
       a.STATE,
       a.RECEVIE_COM,
       a.PRIVATE_CODE,
       a.LATITUDE,
       a.LONGITUDE,
       a.STATUS,
       a.REVEIVE_USER,
       a.BVS_NO,
       a.BE_NO,
       a.PICTURE,
       a.SHIP_TYPE_CN,
       a.MODEL_OF_OPERATION_CN,
       a.SEWAGE_TYPE_CN,
       a.MODE_OF_OPERATION_OLD_CN,
       a.ECG_NO_CN,
       a.STATE_CN,
       a.RECEVIE_COM_CN,
       a.IMPORT_TIME
  from sub_base_data.WATER_DISCHARGE_FLOW_DATA a left join bds_base_data.shp_basic_data d
  on a.RECEIVE_SHIP_ID=d.ship_id and d.status_flag='1'  and d.delete_flag='0'
 where 1 = 1
            ?{entReceiveId,and ENT_RECEVIE_ID = #{entReceiveId}}
    """
    entReceive = db.sub_base_data.camel().selectOne(sql);
}

var entTransPort = {}; //水污染转运数据

if (entTranPortNo != null&&entTranPortNo!='') {
    var sql = """
          select  ENT_TRANPORT_NO,ENT_TRANPORT_ID,FIRST_DTM,FIRST_USER,LAST_DTM,LAST_USER,START_TIME,END_TIME,round(TRANSPORT_NUM,2) RANSPORT_NUM,TRANSPORT_POLLUTANT_TYPE,UNIT,ASSIGNMENT_STYLE,TRANSPORT_START,TRANSPORT_END,SYSID,PRIVATE_CODE,IS_ANGEROU,ANGEROU_NAME,RESULT_CODE,TRANSPORT_COM_NO,HANDLE_COM_NO,HANDLE_USER_ID,BVS_NO,RECEIVE_COM_NO,PICTURE,ECG_NO,TRANSPORT_SHIP_ID,SHIP_TYPE,IS_SECONDARY,UP_TRANSPORT_NO,TRANSPORT_ADDRESS,TRANSPORT_CODE,TRANSPORT_POLLUTANT_TYPE_CN,ASSIGNMENT_STYLE_CN,IS_ANGEROU_CN,RESULT_CODE_CN,TRANSPORT_COM_NO_CN,HANDLE_COM_NO_CN,RECEIVE_COM_NO_CN,ECG_NO_CN,IS_SECONDARY_CN,IMPORT_TIME from WATER_TRANSPORT_DATA where 1=1
            ?{entTranPortNo,and ent_tranport_no = #{entTranPortNo}}
    """
    entTransPort = db.sub_base_data.camel().selectOne(sql);
}

var entHandle = {}; //水污染处置数据

if (entHandleId != null&&entHandleId!='') {
    var sql = """
          select  ENT_HANDLE_NO,ENT_HANDLE_ID,FIRST_DTM,FIRST_USER,LAST_DTM,LAST_USER,ENT_TRANPORT_NO,round(HANDLE_NUM,2) HANDLE_NUM,HANDLE_UNIT,PRIVATE_CODE,SYSID,HANDLE_COMP_ID,IS_ANGEROU,ANGEROU_NAME,HANDLE_POLLUTANT_TYPE,HANDLE_COMP_NO,PICTRUE,TRANSPORT_COM_NO,HANDLE_COMP_NO_CN,TRANSPORT_COM_NO_CN,IMPORT_TIME from WATER_HANDLE_DATA where 1=1
            ?{entHandleId,and ENT_HANDLE_ID = #{entHandleId}}
    """
    entHandle = db.sub_base_data.camel().selectOne(sql);
}

return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: {
        "entApply": entApply,
        "entReceive": entReceive,
        "entTransPort": entTransPort,
        "entHandle": entHandle
    }
});