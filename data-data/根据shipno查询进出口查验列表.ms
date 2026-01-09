{
  "properties" : { },
  "id" : "5ab858a401174a73aa0c35a324b038cb",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "根据shipno查询进出口查验列表",
  "createTime" : null,
  "updateTime" : 1703216090358,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getInAndOutInspect",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipNo",
    "value" : "A350315000046",
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
    "name" : "startTime",
    "value" : "2023-01-01",
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
    "value" : "2023-02-02",
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
  "responseBody" : "{\n    \"code\": 0,\n    \"message\": \"参数[page]为必填项\",\n    \"data\": {},\n    \"timestamp\": 1703216083540,\n    \"executeTime\": 1\n}",
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
      "name" : "code",
      "value" : "0",
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
      "name" : "message",
      "value" : "参数[page]为必填项",
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
    }, {
      "name" : "timestamp",
      "value" : "1703216083540",
      "description" : "",
      "required" : false,
      "dataType" : "Long",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "executeTime",
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
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
import response

var  sql="""
select  * from  (
select  '进口查验' as type, 
            e.INSPECT_ID,e.VOYAGE_ID,e.DECLARE_NO,e.BARGE_BUSI_NO,e.SHIP_NO,e.DEPARTURE_PORT,e.ORIGN_PORT_NATION,e.ARRIVE_TIME,e.LAST_PORT_NATION,
            e.LAST_PORT,e.LAST_PORT_EN,e.PORT_CODE,e.BERTH_CODE,e.HONG_KONG_DOWN,e.ACTUAL_CAPACITY,e.UNLOAD_GOODS_NUMBER,e.ACTURAL_GOODS_NO,e.DANGER_GOODS_NO,
            e.GOODS_NAME,e.UNLOAD_BARGE_NO,e.BARGE_NO,e.CREW_NO,e.BEFORE_DRAFT,e.AFTER_DRAFT,e.AGENT_CODE,e.VOYAGE_NO,e.SAILINGAREA_CODE,e.BID_NAME,e.BUSINESS_ROUTE_CODE,
            e.PERIODIC_INSPECTION_ID,e.PERIODIC_INSPECTION_NO,e.LAST_PORT_LICENSE_NO,e.ACCEPTOR_CODE,e.ACCEPT_TIME,e.REMARK
                from bds_biz_data.SHP_IMP_INSPECTION e
               where
           e.ship_no=#{shipNo} 
           ?{startTime,and to_char(ARRIVE_TIME,'yyyy-MM-dd') >=#{startTime} }
         ?{endTime,and to_char(ARRIVE_TIME,'yyyy-MM-dd') <=#{endTime} }
            and delete_flag='0' 
             union
            
            select  '出口查验' as type,
        e.INSPET_ID,e.VOYAGE_ID,e.DECLARE_NO,e.BARGE_BUSI_NO,e.SHIP_NO,e.DESTINATION_PORT,e.DEST_PORT_NATION,e.DEPART_TIME,e.NEXT_PORT_NATION,
        e.NEXT_PORT,e.NEXT_PORT_IN_ENGLISH,e.PORT_CODE,e.BERTH_CODE,e.LOAD_PASSENGER_NO,e.ACTUAL_CAPACITY,e.LOAD_GOODS_NO,e.ACTURAL_GOODS_NO,e.DANGER_GOODS_NO,
        e.GOODS_NAME,e.PORT_BARGE,e.NUM_OF_BARGE,e.NUM_OF_CREWS,e.BEFORE_DRAFT,e.AFTER_DRAFT,e.AGENT_CODE,e.VOYAGE_NO,e.SAILINGAREA_CODE,e.BID_NAME,
        e.BUSINESS_ROUTE_CODE,e.PERIODIC_INSPECTION_ID,e.PERIODIC_INSPECTION_NO,e.EXPORT_LICENSE_NO,e.ACCEPTOR_CODE,e.ACCEPT_TIME,e.REMARK
         from bds_biz_data.SHP_EXP_INSPECTION e 
       where 
        e.ship_no=#{shipNo} 
        ?{endTime,  and to_char(DEPART_TIME,'yyyy-MM-dd') <=#{endTime}}
    ?{startTime, and to_char(DEPART_TIME,'yyyy-MM-dd') >=#{startTime}    }
         
          and delete_flag='0'
      ) 
order by  ACCEPT_TIME desc
"""

var ret=db.biz_data.camel().page(sql);
if(ret!=null&&ret.list!=null){
for(item in ret.list){

      item.put("portCode", TagUtils.getTagNameByCode("portListTag", item.get("portCode")))
    item.put("portCode", TagUtils.getTagNameByCode("portListTag", item.get("portCode")))
}
}

return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: ret

});