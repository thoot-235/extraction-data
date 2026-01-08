{
  "properties" : { },
  "id" : "b8266f87c3274b7f8cf18b0dc875b8f9",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "进出口查询分页",
  "createTime" : null,
  "updateTime" : 1693552390638,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getInAndOutPortpage",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipNo",
    "value" : "B8520719",
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
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"list\": [{\n            \"totalCount\": \"1\",\n            \"rowno\": \"1\",\n            \"inspetId\": \"20170101133857357160002\",\n            \"inspTypeName\": \"船舶进口查验\",\n            \"bidName\": \"刘星作\",\n            \"numOfCrews\": \"13\",\n            \"portName\": \"龙口\",\n            \"berthName\": \"龙口港集团有限公司18号泊位\",\n            \"departTime\": \"2017-01-01 10:00:00\",\n            \"destinationPort\": \"\",\n            \"nextPort\": \"朝鲜南浦\"\n        }],\n        \"total\": 1\n    }\n}",
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
            "name" : "rowno",
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
            "name" : "inspetId",
            "value" : "20170101133857357160002",
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
            "name" : "inspTypeName",
            "value" : "船舶进口查验",
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
            "name" : "bidName",
            "value" : "刘星作",
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
            "name" : "numOfCrews",
            "value" : "13",
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
            "name" : "portName",
            "value" : "龙口",
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
            "name" : "berthName",
            "value" : "龙口港集团有限公司18号泊位",
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
            "name" : "departTime",
            "value" : "2017-01-01 10:00:00",
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
            "name" : "destinationPort",
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
            "name" : "nextPort",
            "value" : "朝鲜南浦",
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
      } ]
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;

var cbSql;

cbSql = """
select  total_count,rowno,inspet_id,
      INSP_TYPE_NAME,
       BID_NAME,
       NUM_OF_CREWS,
       PORT_NAME,
       BERTH_NAME,
       DEPART_TIME,
       DESTINATION_PORT,
       NEXT_PORT
    from (        
    select  total_count,rowno,inspet_id,
      INSP_TYPE_NAME,
       BID_NAME,
       NUM_OF_CREWS,
       PORT_NAME,
       BERTH_NAME,
       DEPART_TIME,
       DESTINATION_PORT,
       NEXT_PORT
          from (
              
              select
              count(inspet_id) OVER() as total_count,row_number() over(order by e.inspet_id  DESC) as rowno,
            inspet_id,
      INSP_TYPE_NAME,
       BID_NAME,
       NUM_OF_CREWS,
        case when  PORT_NAME is null 
        then (
          select PORT_NAME  from  dict_data.dim_l_t_location_info ins where ym=(select max(ym) from dict_data.dim_l_t_location_info) and ins.berth_code=e.berth_code
          )
          else PORT_NAME end PORT_NAME,
       BERTH_NAME,
       DEPART_TIME,
       DESTINATION_PORT,
       NEXT_PORT
                 from sub_biz_data.shp_inspection e where
            e.ship_no=#{shipNo} 
            ?{beginTime,and DEPART_TIME>=to_date( #{beginTime} ,'yyyy-mm-dd') }
            ?{endTime, and DEPART_TIME<=to_date( #{endTime} ,'yyyy-mm-dd') }
            order by DEPART_TIME desc
            ) b
              where rownum <= (#{page}*#{size})) a
              where a.rowno >((#{page}-1)* #{size})   
""";

import response
var list = db.biz_data.camel().select(cbSql);
var totalCount = 0;
for (item in list) {
    
    totalCount = item.get("totalCount");
}
if (list == null) {
    list = [];
}
var back = {
    "list": list,
    "total": Integer.parseInt(totalCount::string)

}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: back

});