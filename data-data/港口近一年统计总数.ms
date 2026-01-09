{
  "properties" : { },
  "id" : "copy1699014263190d17854",
  "script" : null,
  "groupId" : "06840557c3324b57a151875e9c1c91e7",
  "name" : "港口近一年统计总数",
  "createTime" : null,
  "updateTime" : 1743132023440,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getPortDetailYear",
  "method" : "GET",
  "parameters" : [ {
    "name" : "portName",
    "value" : "WUHAN",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"portPasswngerNum\": \"211272\",\n        \"shipNum\": \"44156\",\n        \"portCargo\": \"14510.28\"\n    }\n}",
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
      "name" : "result",
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
        "name" : "portPasswngerNum",
        "value" : "211272",
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
        "name" : "shipNum",
        "value" : "44156",
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
        "name" : "portCargo",
        "value" : "14510.28",
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
import log;
import response;

var port;
var cityName;
var flag;
var portCodeList = [];
if(portName != null || portName !=""){
  var portSql = """
    select city_name,matching_flag from dict_data.d_cb_port_cockpit where port_pinyin = UPPER(#{portName})
  """
  port = db.dm_data.camel().selectOne(portSql);
  cityName = port.get("cityName");
  flag = port.get("matchingFlag");
  var portCodeListSql = """"""
  if(flag == "1"){//根据城市名称匹配port_code
    portCodeListSql = """
      select distinct port_code
        from dict_data.dim_l_t_location_info
      where basin = '干线'
        and berth_name NOT LIKE '%服务区%'
        and berth_name NOT LIKE '%锚地%'
        and berth_name NOT LIKE '%停泊区%'
        and city_name like concat(#{cityName},'%')
    """
  }else if(flag == "2"){//根据港口名称匹配port_code
    portCodeListSql = """
      select distinct port_code
        from dict_data.dim_l_t_location_info
      where basin = '干线'
        and berth_name NOT LIKE '%服务区%'
        and berth_name NOT LIKE '%锚地%'
        and berth_name NOT LIKE '%停泊区%'
        and port_name like concat(concat('%',#{cityName}),'%')
    """
  }
  portCodeList = db.dm_data.camel().select(portCodeListSql);
}
var portCodeArray = [];
if(portCodeList.size() >0){
  for(item in portCodeList){
    portCodeArray.add(item.get("portCode")::string);
  }
}
var portCodeArraySize = portCodeArray.size();
if(portName != null && portName != "" && portCodeArraySize <=0){
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: {
            "portPasswngerNum":0,
            "shipNum":0,
            "portCargo":0
            }
});
}

//船舶数量统计
var shipNumsSql = """
  select sum(ship_num) ship_num ,sum(PORT_PASSENGER_NUM)  PORT_PASSENGER_NUM from 
dm_data.sts_ship_eep_report_port_type where sts_date_start>=to_date(to_char(add_months(sysdate,-12),'yyyy-mm')||'-01','yyyy-mm-dd')
and sts_date_start < to_date(to_char(sysdate,'yyyy-mm')||'-01','yyyy-mm-dd')

<if test="portCodeArraySize > 0" >
  and port_code in
  <foreach collection="portCodeArray" item = 'item'  open="(" separator="," close=")" >
    #{item}
  </foreach>
</if>
"""
var shipNums = async  db.ods_data.camel().selectOne(shipNumsSql);


//货物 万吨
var portcargoSql = """
  select round(sum(port_cargo)/10000,2)  port_cargo from 
dm_data.STS_SHIP_port_REPORT_CARGO where sts_date_start>=to_date(to_char(add_months(sysdate,-12),'yyyy-mm')||'-01','yyyy-mm-dd')
and sts_date_start < to_date(to_char(sysdate,'yyyy-mm')||'-01','yyyy-mm-dd')
<if test="portCodeArraySize > 0" >
  and port_code in
  <foreach collection="portCodeArray" item = 'item'  open="(" separator="," close=")" >
    #{item}
  </foreach>
</if>
""" 



var portCargoNums = async  db.ods_data.camel().selectOne(portcargoSql);

var data={
  "portPasswngerNum":shipNums.get().get("portPassengerNum"),
  "shipNum":shipNums.get().get("shipNum"),
  "portCargo":portCargoNums.get().get("portCargo")
}





return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: data
});


