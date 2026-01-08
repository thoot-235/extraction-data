{
  "properties" : { },
  "id" : "9f755d6749904cc38846de880f5c562a",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "船舶信息完整度",
  "createTime" : null,
  "updateTime" : 1703815834718,
  "lock" : null,
  "createBy" : null,
  "updateBy" : "admin",
  "path" : "/getShipPerfection",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipNo",
    "value" : "",
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
    "value" : "",
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
    "name" : "shipId",
    "value" : "CN20161087194",
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
    "name" : "mmsi",
    "value" : "",
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
    "value" : "",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"perfection\": \"54.55%\"\n    }\n}",
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
      "name" : "resultCode",
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
      "name" : "resultMsg",
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
      "name" : "result",
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
        "name" : "perfection",
        "value" : "54.55%",
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
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;

//过滤字段
import 'org.springframework.data.redis.core.StringRedisTemplate' as StringRedisTemplate
import 'org.ssssssss.magic.utils.TreeUtil' as TreeUtil;
import log;
import request;

import response;
var shipImo = shipImo;
var shipId = shipId;
var shipRegNo = shipRegNo;
var dataSource = dataSource;
var flag = statusFlag;
var shipNo =shipNo;
var crediData;
shipImo=(shipImo==null?"":shipImo).replaceAll('-','').replaceAll('－','').replaceAll('—','').replaceAll('―','');
shipImo=shipImo;


var d=new Date();
var d=new Date();  startTime=d.getTime();
var d=new Date();  endTime=d.getTime();

var fieldsPowerSql=""" select listagg(column_en,',')  within group 
                            (order by table_name_en)  as "colum" from bds_base_data.sc_table_fields 
                                where table_name_en='BDS_BASE_DATA.SC_SHIP_BASIC_DATA'""";
var fieldsPower=db.base_data.selectOne(fieldsPowerSql);//字段权限控制


if(shipNo!=null && shipNo !=''){
   d=new Date();  startTime=d.getTime();
   var crediSql="""select credi_ryb_flag ,(case when CREDI_SX_FLAG='1' then '是' else '否' end) CREDI_SX_FLAG,
   (case when CREDI_CH_FLAG='1' then '是' else '否' end) CREDI_CH_FLAG from sub_biz_data.SHIP_DYNAMICS_DATA where ship_no=#{body.shipNo}
             order by cj_active_time desc"""
    crediData=db.base_data.camel().selectOne(crediSql);
   d=new Date();  endTime=d.getTime();
   
   
}
if((shipNo!=null&&shipNo!='')&&(shipImo!=null&&shipImo!='')&&(shipId!=null&&shipId!='')&&(mmsi!=null&&mmsi!='')&&(shipRegNo!=null&&shipRegNo!='')){
   return response.json({
    resultCode: 500,
    resultMsg: "查询条件不能全为空！！！",
   
    result: "",
   
    
});
}

var  sqlCount="select "+fieldsPower.get("colum")+""" from sc_ship_basic_data
        --SHP_BASIC_DATA_SSM
                    where delete_flag='0'   ?{shipNo,  and ship_no=#{shipNo} } 
                    ?{shipImo,    and  SHIP_IMO=#{shipImo} } 
                     ?{shipId, and  ship_id=#{shipId}}
                    ?{mmsi,  and mmsi=#{mmsi} }
                    ?{shipRegNo,  and ship_reg_no=#{shipRegNo} } """;




var sqlCountData = db.base_data.camel().selectOne(sqlCount);
var perfection;
//计算空值率
if(sqlCountData!=null){
   var total=0;
   var notEmpty=0;
   sqlCountData.forEach((k,v)->{
       ++total;
       if(v!=null&&v!=''){
        ++notEmpty;
       }
       });
       perfection=String.format("%.2f",(Double.parseDouble(notEmpty.toString())/Double.parseDouble(total.toString()))*100)+"%";
       //log.info("空值率==="+Integer.parseInt(total.toString())+"个"+Integer.parseInt(notEmpty.toString())+"个" 
       //+String.format("%.2f",(Double.parseDouble(notEmpty.toString())/Double.parseDouble(total.toString()))*100)+"%")
}

var basicData={"perfection":perfection};

return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
   
    result: basicData,
   
    
});