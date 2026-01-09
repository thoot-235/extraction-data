{
  "properties" : { },
  "id" : "10c3c95196bb43a8bd3a0a9933b89e4c",
  "script" : null,
  "groupId" : "a2f8b128e2c64d9eba631714dd3787a1",
  "name" : "进出港报告",
  "createTime" : null,
  "updateTime" : 1742809801922,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getShipReport",
  "method" : "GET",
  "parameters" : [ {
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
    "name" : "shipId",
    "value" : "CN20138711541",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"inOutFlag\": 1,\n        \"outPort\": {\n            \"reportId\": \"07273103-4d2d-4e7c-b80b-f2279d7bdadf\",\n            \"arrivalOrLeave\": \"1\",\n            \"shipId\": \"290004000495\",\n            \"setOutPort\": \"上海(上海市)\",\n            \"nextPortName\": \"\",\n            \"expectTime\": \"4202-08-22\"\n        }\n    }\n}",
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
        "name" : "inOutFlag",
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
        "name" : "outPort",
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
          "name" : "reportId",
          "value" : "07273103-4d2d-4e7c-b80b-f2279d7bdadf",
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
          "name" : "arrivalOrLeave",
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
          "name" : "shipId",
          "value" : "290004000495",
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
          "name" : "setOutPort",
          "value" : "上海(上海市)",
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
          "name" : "nextPortName",
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
          "name" : "expectTime",
          "value" : "4202-08-22",
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
  }
}
================================
import log;
import 'com.success.data.tag.TagUtils' as TagUtils;
import response;
var lastport="";//上一港（左侧）
var arrivetime="";//预抵时间（左侧）
var nextport="";//下一港（右侧）
var departuretime="";//预离时间（右侧）
var type ="";

if((mmsi == null || mmsi =="")&&(shipId == null || shipId =="")){
return response.json({
        resultCode: 500,
        resultMsg: "mmsi、shipId不能同时为空"
	});
  
}

if ((shipId == null || shipId =="")){
  //获取shipId
  var shipIdSql = """
    select ship_id from bds_base_data.sc_ship_basic_data where mmsi = #{mmsi}
"""
var shipIdMapList= db.base_data.camel().select(shipIdSql);
shipId = shipIdMapList.get(0).get("shipId") :: string;
}


 /*if(shipId!=null && shipId.size()>0){
    //shipId = shipId.get(0).get("shipId") :: string;
}else{
   return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: null
    });
}*/

//1、获取最近一条进港记录
var sql_in = """
    SELECT 
        report_id,
        ARRIVAL_OR_LEAVE,
        ship_id,
        pre_port_name,
        report_port_name as arrive_port,
        expect_time
    FROM bds_biz_data.RPT_SHIP_EEP_REPORT_REC
    WHERE ARRIVAL_OR_LEAVE = '0'
    and ship_id = #{shipId}
    and expect_time = (select max(expect_time)
                            from bds_biz_data.RPT_SHIP_EEP_REPORT_REC
                        WHERE ARRIVAL_OR_LEAVE = '0'
                            and ship_id = #{shipId})
"""
//2、获取最近一条出港报告
var sql_out = """
    SELECT 
        report_id,
        ARRIVAL_OR_LEAVE,
        ship_id,
        report_port_name as set_out_port,
        next_port_name,
        expect_time
    FROM bds_biz_data.RPT_SHIP_EEP_REPORT_REC
    WHERE ARRIVAL_OR_LEAVE = '1'
    and ship_id = #{shipId}
    and expect_time = (select max(expect_time)
                            from bds_biz_data.RPT_SHIP_EEP_REPORT_REC
                        WHERE ARRIVAL_OR_LEAVE = '1'
                            and ship_id = #{shipId})
"""
//查询进出港货物(分货物种类)
var cargoSql = """
  select (select sub_category
            from dict_data.ch_code b
          where code_type = '01'
            and b.code = a.type_code) goods_type,
        nvl(sum(actual_carrying_capacity), 0) nums
    from bds_biz_data.rpt_cargo_declare_rec a
  where report_id = #{reportId}
  group by type_code
"""
//查询进出港货物总量
var cargoTotalSql = """
  select nvl(sum(actual_carrying_capacity), 0) nums
    from bds_biz_data.rpt_cargo_declare_rec
  where report_id = #{reportId}
"""
//查询进出港集装箱
var containerSql = """
  select empty_containers_number, heavy_containers_number
    from bds_biz_data.rpt_container_declare_rec
  where report_id = #{reportId}
"""
//最新进港记录
var res_in = async db.biz_data.camel().selectOne(sql_in);
//最新出港记录
var res_out = async db.biz_data.camel().selectOne(sql_out);

var reportId = "";
log.info("res_in"+res_in.get());
if(res_in.get()!=null&&res_out.get()!=null){
  if(res_in.get().expectTime > res_out.get().expectTime){//进港报告时间大于出港报告时间  返回进港数据
    reportId = res_in.get().get("reportId");
    res_in.get().put("expectTime",res_in.get().get("expectTime")::string.substring(0,10));
    //查询进出港货物
    var cargo = db.biz_data.camel().select(cargoSql);
    var cargoTotal = db.biz_data.camel().selectValue(cargoTotalSql);
    //查询进出港集装箱
    //var container = db.biz_data.camel().select(containerSql);
    var res = {};
    res.put("inOutFlag", 0);
    res.put("inPort",res_in.get());
    if(cargo!=null && cargo.size()>0){
      for(item in cargo){
        item.put("nums",item.get("nums")::double);
      }
      res.put("cargo",cargo);
      res.put("cargoTotal",cargoTotal::double);
    }
    //if(container !=null && container.size()>0){
    //  res.put("container",container);
    //}
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
    });
  }else if(res_in.get().expectTime < res_out.get().expectTime){//出港报告时间大于进港报告时间  返回出港数据
    reportId = res_out.get().get("reportId");
    res_out.get().put("expectTime",res_out.get().get("expectTime")::string.substring(0,10));
    //查询进出港货物
    var cargo = db.biz_data.camel().select(cargoSql);
    var cargoTotal = db.biz_data.camel().selectInt(cargoTotalSql);
    //查询进出港集装箱
    //var container = db.biz_data.camel().select(containerSql);
    var res = {};
    res.put("inOutFlag", 1);
    res.put("outPort",res_out.get());
    if(cargo!=null && cargo.size()>0){
      res.put("cargo",cargo);
      res.put("cargoTotal",cargoTotal);
    }
    //if(container !=null && container.size()>0){
    //  res.put("container",container);
    //}
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
    });
  }
}