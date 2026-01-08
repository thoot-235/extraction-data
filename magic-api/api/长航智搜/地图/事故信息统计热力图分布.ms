{
  "properties" : { },
  "id" : "32efe3184b2040cc96db88957b39f98d",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "事故信息统计热力图分布",
  "createTime" : null,
  "updateTime" : 1745723702409,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getAccidentDistribut",
  "method" : "GET",
  "parameters" : [ {
    "name" : "eventName",
    "value" : "事故",
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
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1704532029639,\n    \"executeTime\": 17\n}",
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
    "dataType" : "String",
    "type" : "",
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
      "type" : "",
      "defaultValue" : "",
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
      "type" : "",
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
      "dataType" : "Array",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "timestamp",
      "value" : "1704532029639",
      "description" : "",
      "required" : false,
      "dataType" : "Long",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "executeTime",
      "value" : "17",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    } ]
  }
}
================================

import response;
/*var  sql ="""
		select LAT, LON from   (
		select n.LAT,n.LON  from 	  
		(select   YANGTZE_RIVER_MILEAGE ,
		case REACH when '上游' then '1' when '中游' then '2'  when '下游' then '3' else REACH end as REACH from  ODS_HS_SHARE.TR_JT_EMG_EVENT_MAIN   where  MESSAGE_TYPE='事故信息'  
		and REACH in ('上游','中游','下游')
		and YANGTZE_RIVER_MILEAGE is not  null 
		and EVENT_TIME >= add_months(trunc(sysdate,'YYYY'), -48) order  by YANGTZE_RIVER_MILEAGE) m
left join 	
	ODS_HS_SHARE.changjiang_channel_mileage_info  n
		on CEIL(TO_NUMBER(m.YANGTZE_RIVER_MILEAGE))=TO_NUMBER(n.km) and m.REACH=n.MARK) t where  t.LAT is not  null and  t.LON is not  null 
"""*/

var  sql ="""
		select *
  from (select n.LAT as latitude , n.LON as longitude,m.*
          from (select EVENT_NAME,EVENT_REMARK,to_char(EVENT_TIME,'yyyy-MM-dd HH:mm') EVENT_TIME,
                       nvl(DEATH_TOLL,0) as  DEATH_TOLL,
                       nvl(MISSING_PERSON,0) as  MISSING_PERSON,
                       nvl(DISTRESS_NUMBER,0) as  DISTRESS_NUMBER,
                       nvl(SHIPWRECKS_NUMBER,0) as  SHIPWRECKS_NUMBER,
                        nvl(LOSS_NUM,0) as  LOSS_NUM,
                       case REACH
                         when '上游' then
                          '1'
                         when '中游' then
                          '2'
                         when '下游' then
                          '3'
                         else
                          REACH
                       end as REACH_num,
                          REACH,
                       YANGTZE_RIVER_MILEAGE,
                       accident_type,
                       shore_farewell
                  from ODS_HS_SHARE.TR_JT_EMG_EVENT_MAIN u
                 where MESSAGE_TYPE = '事故信息'
                   and REACH in ('上游', '中游', '下游')
                   and YANGTZE_RIVER_MILEAGE is not null
                   and EVENT_TIME >= add_months(trunc(sysdate, 'YYYY'), -48)
                 order by YANGTZE_RIVER_MILEAGE) m
          left join ODS_HS_SHARE.changjiang_channel_mileage_info n on CEIL(TO_NUMBER(m.YANGTZE_RIVER_MILEAGE)) =
                                                                      TO_NUMBER(n.km)
                                                                  and m.REACH_num =
                                                                      n.MARK) t
 where t.latitude is not null
   and t.longitude is not null

   <trim prefix="" prefixOverrides="">
         <if test="eventName != null and eventName!=''">
        and t.event_Name like   '%'||#{eventName}||'%' 
        </if>
      </trim> 
      
   
   
"""

var  reMapList=db.ods_data.camel().select(sql);


return response.json({
    code: 200,
    resultMsg: "查询成功",
    data: reMapList
});

