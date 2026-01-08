{
  "properties" : { },
  "id" : "7908b0231987488ea01808e4264d111e",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "能源月度查询",
  "createTime" : 1702288496806,
  "updateTime" : 1702288897820,
  "lock" : null,
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getDgrByMonth",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipId",
    "value" : "CN20044482288",
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }, {
    "name" : "shipImo",
    "value" : null,
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }, {
    "name" : "shipMmsi",
    "value" : null,
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }, {
    "name" : "shipRegNo",
    "value" : null,
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }, {
    "name" : "startTime",
    "value" : "2000-01-06",
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }, {
    "name" : "endTime",
    "value" : "2028-12-01",
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 200,\n    \"success\": \"查询成功\",\n    \"data\": [{\n        \"applyDate\": \"2022-09\",\n        \"shorePower\": \"82.3\",\n        \"consumptionNum\": \"\",\n        \"sailingDistance\": \"\",\n        \"goodsNum\": \"\",\n        \"goodsTrunover\": \"\",\n        \"cntrNum\": \"\",\n        \"cntrTrunover\": \"\",\n        \"passengersNum\": \"\",\n        \"passengersTrunover\": \"\"\n    }]\n}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : {
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
      "name" : "code",
      "value" : "200",
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
      "name" : "success",
      "value" : "查询成功",
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
      "dataType" : "String",
      "type" : null,
      "defaultValue" : null,
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
          "name" : "applyDate",
          "value" : "2022-09",
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
          "name" : "shorePower",
          "value" : "82.3",
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
          "name" : "consumptionNum",
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
          "name" : "sailingDistance",
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
          "name" : "goodsNum",
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
          "name" : "goodsTrunover",
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
          "name" : "cntrNum",
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
          "name" : "cntrTrunover",
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
          "name" : "passengersNum",
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
          "name" : "passengersTrunover",
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
        } ]
      } ]
    } ]
  }
}
================================
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;

if((shipId==null||shipId=='')&&(shipImo==null||shipImo=='')&&(shipMmsi==null||shipMmsi=='')&&(shipRegNo==null||shipRegNo=='')){
return response.json({
    code: 500,
    success: "参数条件不能全为空",
    data: null 

});
}
var  sql="""
select to_char(a.apply_date,'yyyy-mm') apply_date,sum(a.shore_power) shore_power,sum(b.CONSUMPTION_NUM) CONSUMPTION_NUM,sum(c.SAILING_DISTANCE) SAILING_DISTANCE
,sum(c.goods_num) goods_num
,sum(c.GOODS_TRUNOVER) GOODS_TRUNOVER
,sum(c.CNTR_NUM) CNTR_NUM,sum(c.CNTR_TRUNOVER) CNTR_TRUNOVER,
sum(c.PASSENGERS_NUM) PASSENGERS_NUM,sum(c.PASSENGERS_TRUNOVER) PASSENGERS_TRUNOVER from ods_hs_share.BIZ_DGR_ECS  a  
left join  ods_hs_share.BIZ_DGR_ECS_DTL b on a.report_id=b.report_id 
left join ods_hs_share.BIZ_DGR_ECS_TRANS c on a.report_id=c.report_id
where 1=1
?{shipId,and ship_id =#{shipId}}
?{shipImo,and SHIP_IMO =#{shipImo}}
?{shipMmsi,and SHIP_MMSI =#{shipMmsi}}
?{shipRegNo,and SHIP_REG_NO =#{shipRegNo}}
?{startTime,and a.apply_date >=to_date(#{startTime},'yyyy-MM-dd hh24:mi:ss')}
?{endTime,and a.apply_date <=to_date(#{endTime},'yyyy-MM-dd hh24:mi:ss')}
 and a.operate_flag_code='0' and (b.operate_flag_code='0' or  b.operate_flag_code is null)
 and (c.operate_flag_code='0' or   b.operate_flag_code is null)
group by to_char(a.apply_date,'yyyy-mm')
order by to_char(a.apply_date,'yyyy-mm') desc
  
""";


//现场数据源为ais 模式为postgis
var list=db.ods_data.camel().select(sql);



return response.json({
    code: 200,
    success: "查询成功",
    data: list 

});