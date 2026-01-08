{
  "properties" : { },
  "id" : "c42097b027274f29acdfdb075befc7a6",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "地图船舶图层当前航次",
  "createTime" : null,
  "updateTime" : 1751252299737,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getCurrentVoyage",
  "method" : "GET",
  "parameters" : [ {
    "name" : "mmsi",
    "value" : "413874836",
    "description" : "413952962",
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
    "value" : "",
    "description" : "280606000996",
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
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1751251668810,\n    \"executeTime\": 15\n}",
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
      "value" : "-1",
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
      "value" : "系统内部出现错误",
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
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "timestamp",
      "value" : "1751251668810",
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
      "value" : "15",
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
import response;
if((mmsi==null||mmsi=="")&&(shipId==null||shipId=="")){
    return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: {
        "endPort": "",
        "endTime": "",
        "startPort": "",
        "startTime": "",
        "reportTime": "",
        "bidName": ""
    }
});
}
var sql = """
select * from (
 select ARRIVAL_OR_LEAVE, PRE_PORT_CODE,
       REPORT_PORT_CODE,
       NEXT_PORT_CODE,
       start_time,
       end_time,
       REPORT_TIME,BID_NAME,
       EXPECT_TIME from (
 select row_number() over (partition by ship_id order by REPORT_TIME desc) rn,
     ARRIVAL_OR_LEAVE,
       PRE_PORT_CODE,
       REPORT_PORT_CODE,
       NEXT_PORT_CODE,
       EXPECT_TIME,
       to_char(REPORT_TIME,'yyyy-mm-dd hh24:mi:ss') REPORT_TIME,BID_NAME,
      case when ARRIVAL_OR_LEAVE='0' then to_char(EXPECT_TIME,'yyyy-mm-dd hh24:mi')
      else '' end end_time,
      case when ARRIVAL_OR_LEAVE='1' then to_char(EXPECT_TIME,'yyyy-mm-dd hh24:mi')
      else '' end start_time 
 from bds_biz_data.RPT_SHIP_EEP_REPORT_REC 
 where  ARRIVAL_OR_LEAVE='0'
  ?{mmsi,and  MMSI=#{mmsi}}
   ?{shipId,and  (ship_id=#{shipId} or ship_reg_no=#{shipId})}

 ) where rn=1
 union all
  select  ARRIVAL_OR_LEAVE,PRE_PORT_CODE,
       REPORT_PORT_CODE,
       NEXT_PORT_CODE,
       start_time,
       end_time,
       REPORT_TIME,BID_NAME,
       EXPECT_TIME from (
 select row_number() over (partition by ship_id order by REPORT_TIME desc) rn,
       ARRIVAL_OR_LEAVE,PRE_PORT_CODE,
       REPORT_PORT_CODE,
       NEXT_PORT_CODE,
       EXPECT_TIME,
       to_char(REPORT_TIME,'yyyy-mm-dd hh24:mi:ss') REPORT_TIME,BID_NAME,
      case when ARRIVAL_OR_LEAVE='0' then to_char(EXPECT_TIME,'yyyy-mm-dd hh24:mi')
      else '' end end_time,
      case when ARRIVAL_OR_LEAVE='1' then to_char(EXPECT_TIME,'yyyy-mm-dd hh24:mi')
      else '' end start_time 
 from bds_biz_data.RPT_SHIP_EEP_REPORT_REC 
 where  ARRIVAL_OR_LEAVE='1'
?{mmsi,and  MMSI=#{mmsi}}
  ?{shipId,and  (ship_id=#{shipId} or ship_reg_no=#{shipId})}

 ) where rn=1
)  order by expect_Time desc
"""
var list = db.biz_data.camel().select(sql);
var ret = {};
if (list != null && list.size() > 1) {
    var first = list.get(0);
    var second = list.get(1);
    var type = first.get("arrivalOrLeave") == null ? "" : first.get("arrivalOrLeave")::string;
    //最后一条是进港报告
    if ("0".equals(type)) {
        var sendPort=first.get("reportPortCode");
         var sstartPort = second.get("reportPortCode");
        var endPort = TagUtils.getTagNameByCode("portListTag", first.get("reportPortCode"));
        var startPort = TagUtils.getTagNameByCode("portListTag", second.get("reportPortCode"));
       
        ret.put("endPort", TagUtils.getTagNameByCode("wfPortListTag", endPort));
        ret.put("endTime", first.get("endTime"));
        ret.put("startPort", TagUtils.getTagNameByCode("wfPortListTag", startPort));
        ret.put("startTime", second.get("startTime"));
        ret.put("reportTime", second.get("reportTime"));
        ret.put("bidName",  second.get("bidName"));
        if(sendPort==ret.get("endPort")){
             ret.put("endPort","未知");
        }
        else if(sstartPort== ret.get("startPort")){
           ret.put("startPort","未知");
        }
    }
    //最后一条是出港报告
    if ("1".equals(type)) {
         var sendPort=first.get("nextPortCode");
         var sstartPort =  second.get("reportPortCode");
        var endPort = TagUtils.getTagNameByCode("portListTag", first.get("nextPortCode"));
        var startPort = TagUtils.getTagNameByCode("portListTag", second.get("reportPortCode"));
        ret.put("endPort", TagUtils.getTagNameByCode("wfPortListTag", endPort));
        ret.put("endTime", first.get("startTime"));
        ret.put("startPort", TagUtils.getTagNameByCode("wfPortListTag", startPort));
        ret.put("startTime", second.get("endTime"));
        ret.put("reportTime", second.get("reportTime"));
        ret.put("bidName", TagUtils.getTagNameByCode("portListTag", second.get("bidName")));
       
         if(sendPort==ret.get("endPort")){
             ret.put("endPort","未知");
        }
         else if(sstartPort== ret.get("startPort")){
           ret.put("startPort","未知");
        }
    }

}


return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: ret
});