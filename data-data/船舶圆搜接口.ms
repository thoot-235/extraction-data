{
  "properties" : { },
  "id" : "063701d072b644bfb6c7e70f30b61dd7",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "船舶圆搜接口",
  "createTime" : null,
  "updateTime" : 1701431395791,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getShipByYs",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"ysLat\": \"30.58849\",\r\n    \"ysLon\": \"114.30052\",\r\n    \"ysRadius\": \"0.1\",\r\n    \"current\":1,\r\n    \"ifFocus\":\"1\",\r\n    \"ifPower\":\"\",\r\n    \"shipMainType\":[\"0400\",\"0600\"],\r\n    \"size\":10\r\n   \r\n   \r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 200,\n    \"success\": \"查询成功\",\n    \"data\": {\n        \"records\": [],\n        \"total\": 0\n    }\n}",
  "description" : "",
  "requestBodyDefinition" : {
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
      "name" : "ysLat",
      "value" : "30.58849",
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
      "name" : "ysLon",
      "value" : "114.30052",
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
      "name" : "ysRadius",
      "value" : "0.1",
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
      "name" : "current",
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
      "name" : "ifFocus",
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
      "name" : "ifPower",
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
      "name" : "shipMainType",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Array",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "",
        "value" : "0400",
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
    }, {
      "name" : "size",
      "value" : "10",
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
      "name" : "success",
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
        "name" : "records",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : null,
        "defaultValue" : "",
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ ]
      }, {
        "name" : "total",
        "value" : "0",
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



var ysLat=body.ysLat;
var ysLon=body.ysLon;
var ysRadius=body.ysRadius;

var limit=""" ) a 
where  1=1
?{body.ifFocus,and  a.if_focus=#{body.ifFocus}}
?{body.ifPower,and  a.if_power=#{body.ifPower}}
<if test="body.shipMainType!=null and body.shipMainType.length>0">
and  a.ship_main_type_code in 
 <foreach item='item' index='index' collection='body.shipMainType'
      open="(" separator="," close=")">
              #{item}
    </foreach>
</if>



limit 
        (#{body.size}) ::bigint  offset 
         ((#{body.current})  ::bigint-1) * (#{body.size}) ::bigint 
"""      ;  

var Sql = """
select a.*, count(a.mmsi) OVER() total_count   from (
 select  pos.mmsi,pos.utc,
        pos.createDate "createDate",
        pos.latitude,
        pos.longitude,
        pos.course,
        pos.trueheading,
        pos.speed,
        bas.ship_name_cn as "shipName",
        bas.ship_name_en "shipNameEn",
        bas.ship_id as "shipId",
        bas.ship_callsign "shipCallSign",
        bas.ship_no "shipNo",
        bas.ship_reg_no as "shipRegNo",
        bas.if_focus ,
         bas.if_power,
         bas.ship_main_type_code,
         bas.ship_main_type_name,
        sts.shipname1
        from(
        SELECT 
      -- 
        c.mmsi,
        c.utc,
        c.createDate,
        c.latitude,
        c.longitude,
        round(cast(c.course as numeric),4) course,
        round(cast(c.trueheading as numeric),4) trueheading,
        c.speed
        from ais_pos_new_all as c
        where 1=1
        and public.st_contains(
        public.st_buffer(public.st_geometryfromtext ('POINT ("""+ysLon+""" """+ysLat+""")',4326),"""+ysRadius+"""),
        public.st_geometryfromtext (concat('POINT(',c.longitude,' ',c.latitude,')'), 4326)
        )
        ?{body.mmsi, and  cast(c.mmsi as varchar) = #{body.mmsi} }
      
        ) pos
        left join ( select b.* from (select b.*,row_number() over(partition by ship_id  order by create_date desc ) as rownumber  from shp_basic_data b where
        b.status_flag='1' and exists (select  mmsi  from ais_pos_new_all c
        where b.mmsi =cast(c.mmsi as varchar ) )) b where b.rownumber=1) bas
        on cast(pos.mmsi as VARCHAR)=bas.mmsi
        and bas.status_flag='1'
        left join (select
        shipName as shipname1,
        mmsi
        from ais_stc_new_all) sts
        on pos.mmsi=sts.mmsi


        """;


var list=db.ais.select(Sql+limit);
var totalCount=0;



if(list==null){
   list=[];
} 
for(item in list){ 
    totalCount = item.get("total_count");
}     
var back={
        "records":list,
        "total":Integer.parseInt(totalCount::string)
}

import response;
return response.json({
    code: 200,
    success: "查询成功",
    data: back 

});
