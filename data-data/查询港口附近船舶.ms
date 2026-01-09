{
  "properties" : { },
  "id" : "8f9fa5d735cb4a748d320dffd715261d",
  "script" : null,
  "groupId" : "06840557c3324b57a151875e9c1c91e7",
  "name" : "查询港口附近船舶",
  "createTime" : null,
  "updateTime" : 1745741673447,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getPortShipByYs",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"portName\": \"WUHAN\",\r\n    \"mmsiList\": []\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1745741635631,\n    \"executeTime\": 63\n}",
  "description" : "",
  "requestBodyDefinition" : {
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
      "name" : "portName",
      "value" : "WUHAN",
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
      "name" : "mmsiList",
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
      "value" : "-1",
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
      "dataType" : "Array",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "timestamp",
      "value" : "1745741635631",
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
      "value" : "63",
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
import java.lang.Math;
import log;
import response;
import java.util.Random;

//武汉知音号 413834631
//长江荣耀 413867607

var portName = body.portName;
var mmsiLists = [];
mmsiLists = body.mmsiList;
if ((portName == null || portName == "")) {
    return response.json({
        code: 200,
        success: "查询成功",
        data: "参数不能都为空"
    });
}
//港口圆搜半径10公里 改成35公里
var ysRadius = 0.35;
/** 
//获取港口的中文名称
if(portName != null || portName !=""){
  var portNameSql = """
    select port_cn_name from dict_data.d_cb_port_imp where port_pinyin = #{portName}
  """
  portName = db.dm_data.camel().selectValue(portNameSql);
}
//获取港口坐标
var pointSql = """
  SELECT DISTINCT lon,lat FROM SEARCH_GK_QQGKQD b WHERE b.gj = '中国' AND b.gkzwmc = #{portName}
"""*/
//获取港口的名称和坐标
var pointSql = """
  SELECT port_name,lon,lat FROM chais.cockpit_close_shot_port_info where port_pinyin = #{portName}
"""
var point = db.ais.camel().selectOne(pointSql);
var ysLat = point.get("lat")::double;
var ysLon = point.get("lon")::double;
portName = point.get("portName");
//获取港口方搜点位
var portFsPointSql = """
    select point_lon_lat from chais.cockpit_squa_search_ship_port_point where port_name = #{portName}
"""
var portFsPoint = db.ais.camel().selectValue(portFsPointSql);
//方搜港口附近作业的船舶
var shipAisFsSql = """
    SELECT
        pos.mmsi,
        pos.latitude,
        pos.longitude,
        pos.course,
        mod(pos.trueheading,360) trueheading,
        pos.speed,
        case when pos.speed = 0 then 0
            else 1 end speed_flag,
        bas.ship_name_cn ship_name,
        bas.ship_main_type_name
    FROM (
        SELECT  C.mmsi,
                C.latitude,
                C.longitude,
                round( CAST ( C.course AS NUMERIC ), 4 ) course,
                round( CAST ( C.trueheading AS NUMERIC ), 4 ) trueheading,
                C.speed 
        FROM ais_pos_new_all AS C 
        WHERE 1 = 1 
            AND C.speed = 0 
            AND PUBLIC.ST_Contains (
                PUBLIC.st_geometryfromtext ( 'polygon (""" + portFsPoint + """)', 4326 ),
                PUBLIC.st_geometryfromtext ( concat ( 'POINT (', C.longitude, ' ', C.latitude, ')' ), 4326 ) 
                ) 
        ) pos
    inner join chais.shp_name_data bas on bas.mmsi =cast(pos.mmsi as varchar )
    limit 100
"""

//获取港口10公里范围内的100艘船舶AIS数据
var shipAisSql = """
    select    pos.mmsi,
              
              pos.latitude,
              pos.longitude,
              pos.course,
              mod(pos.trueheading,360) trueheading,
              pos.speed,
              case when pos.speed = 0 then 0
                else 1 end speed_flag,
              bas.ship_name_cn as ship_name,
              bas.ship_main_type_name
        from(
              SELECT 
              c.mmsi,
              c.latitude,
              c.longitude,
              round(cast(c.course as numeric),4) course,
              round(cast(c.trueheading as numeric),4) trueheading,
              c.speed
              from ais_pos_new_all as c
              where 1=1
              and public.st_contains(
                  public.st_buffer(public.st_geometryfromtext ('POINT (""" + ysLon + """ """ + ysLat + """)',4326),""" + ysRadius + """),
                  public.st_geometryfromtext (concat('POINT(',c.longitude,' ',c.latitude,')'), 4326)
                  )
            ) pos
        inner join chais.shp_name_data bas on bas.mmsi =cast(pos.mmsi as varchar )
        where 1=1
        <if test="shipAisFsSize>0">
          and pos.mmsi not in
          <foreach item = 'item' collection="mmsiFsList"  open="(" separator="," close=")">
              #{item}
          </foreach>
        </if>
        
        and   pos.mmsi not in('413834631','413867607') 
      order by pos.speed desc
    limit 200 - #{shipAisFsSize}
""";
//获取ck中，这100艘船舶前3分钟的点位
var fiveMinSql = """
  select DISTINCT mmsi,
          argMin(concat(toString(longitude),',',toString(latitude)), createDate) AS lon_lat
    from chais.ais_pos_his_all
    where mmsi in 
        <foreach item = 'item' collection="mmsiListInt"  open="(" separator="," close=")">
            #{item}
        </foreach>
        and createDate <=   toStartOfInterval(now() - INTERVAL 3 MINUTE, INTERVAL 1 MINUTE)
        and createDate >=   toStartOfInterval(now() - INTERVAL 4 MINUTE, INTERVAL 1 MINUTE)
    group by mmsi
"""
//根据mmsiLists获取船舶AIS数据
var shipAisByMmsiSql = """
    select    pos.mmsi,
              pos.latitude,
              pos.longitude,
              pos.course,
              pos.trueheading,
              pos.speed,
              case when pos.speed = 0 then 0
                else 1 end speed_flag,
              bas.ship_name_cn as ship_name,
              bas.ship_main_type_name
        from(
              SELECT 
              c.mmsi,
              c.latitude,
              c.longitude,
              round(cast(c.course as numeric),4) course,
              round(cast(c.trueheading as numeric),4) trueheading,
              c.speed
              from ais_pos_new_all as c
            ) pos
        inner join chais.shp_name_data bas on bas.mmsi =cast(pos.mmsi as varchar )
                            
      where 1=1 
      and cast(pos.mmsi as VARCHAR)  in
      <foreach item = 'item'  index='index'  collection="mmsiLists"  open="(" separator="," close=")">
        #{item}
      </foreach>
"""
//查询干散货船的船舶满载、空载情况
var carryCargoSql = """
  SELECT DISTINCT ON (mmsi) mmsi, 
          case when actual_carrying_capacity>0 then 1 else 2 end carry_cargo_flag
    FROM c_cb_ship_eep_report_rec
    where cast(mmsi as VARCHAR) in 
      <foreach item = 'item'  index='index'  collection="gxhMmsi"  open="(" separator="," close=")">
        #{item}
      </foreach>
      and report_time >= current_date-30
    ORDER BY mmsi, report_time DESC
"""

//查询船舶的长航信用颜色
var chCreditColorSql = """
    SELECT B.MMSI,
        case
         when a.aqyxm = '1' then
          '红'
         when a.aqyxm = 2 then
          '黄'
         when a.aqyxm = 3 then
          '蓝'
         else
          '绿'
       end AS CH_CREDIT_COLOR FROM base_sc_account_guard A
    INNER JOIN (
        SELECT SHIP_ID,MMSI FROM sub_BASE_DATA.SHP_BASIC_DATA 
        WHERE DELETE_FLAG = '0' 
            AND status_flag_name = '登记'
            AND MMSI in 
            <foreach item = 'item'  index='index'  collection="mmsiList"  open="(" separator="," close=")">
                #{item}
            </foreach>
    ) B ON A.deduction_object_id = B.SHIP_ID
    where a.zhuti_code = '8'
"""

//初始化船舶，调用方搜、圆搜数据
if ((portName != null || portName != "") && ((mmsiLists == null || mmsiLists.size() == 0))) {
    //获取方搜的港口作业船舶
    log.info("---------------方搜开始时间----------" + current_timestamp_millis()::string);
    var shipAisFs = db.ais.camel().select(shipAisFsSql);
    log.info("---------------方搜结束时间----------" + current_timestamp_millis()::string);
    //遍历获取方搜的船舶mmsi
    var mmsiFsList = [];
    var mmsiList = [];
    log.info("---------------方搜遍历开始时间----------" + current_timestamp_millis()::string);
    for (item in shipAisFs) {
        //方搜的mmsi
        mmsiFsList.add(item.get("mmsi"));
        //方艘船的mmsi
        mmsiList.add(item.get("mmsi")::string);
    }
    log.info("---------------方搜遍历结束时间----------" + current_timestamp_millis()::string);
    //获取需要圆搜的船舶艘数

    var shipAisFsSize = shipAisFs.size();

    //获取除方搜船舶外的港口圆搜船舶
    log.info("---------------圆搜开始时间----------" + current_timestamp_millis()::string);
    var shipAisYs = db.ais.camel().select(shipAisSql);
    log.info("---------------圆搜结束时间----------" + current_timestamp_millis()::string);

    //如果是武汉港，就另外加上  武汉知音号 413834631 、长江荣耀 413867607
    var mmsiLists = [];
    var wuhanShipAis = null;
    if (portName == "武汉") {
        mmsiLists.add("413834631");
        mmsiLists.add("413867607");
        mmsiList.add("413834631");
        mmsiList.add("413867607");
        wuhanShipAis = db.ais.camel().select(shipAisByMmsiSql);
    }

    //遍历获取这圆搜船舶的mmsi
    var speed = 0;
    log.info("---------------圆搜遍历开始时间----------" + current_timestamp_millis()::string);
    for (item in shipAisYs) {
        speed = item.get("speed");
        //速度小于0.3时，speedFlag赋值为0
        if (speed < 0.3) {
            item.put("speedFlag", 0);
        }
        mmsiList.add(item.get("mmsi")::string);
    }
    log.info("---------------圆搜遍历结束时间----------" + current_timestamp_millis()::string);
    //将mmsiList内的元素由string转成int
    var mmsiListInt = [];
    for (item in mmsiList) {
        mmsiListInt.add(item::int);
    }
    //获取ck中，这100艘船舶前5分钟的点位
    log.info("---------------ck开始时间----------" + current_timestamp_millis()::string);
    var fiveMin = db.ck.camel().select(fiveMinSql);
    log.info("---------------ck结束时间----------" + current_timestamp_millis()::string);
    //合并方搜和圆搜的船舶
    var shipAis = [];
    shipAis.addAll(shipAisFs);
    shipAis.addAll(shipAisYs);
    if (wuhanShipAis != null && wuhanShipAis.size() > 0) {
        shipAis.addAll(wuhanShipAis);
    }
    //遍历出所有的干散货船
    var gxhMmsi = [];
    for (item in shipAis) {
        if (item.get("shipMainTypeName") == "干散货") {
            gxhMmsi.add(item.get("mmsi")::string);
        }
    }
    //对所有的干散货船进行有货、无货识别
    log.info("---------------有货、无货识别开始时间----------" + current_timestamp_millis()::string);
    var carryCargo = db.gpadmin.camel().select(carryCargoSql);
    log.info("---------------有货、无货识别结束时间----------" + current_timestamp_millis()::string);
    //对所有船舶的船舶信用颜色进行查询
    var chCreditColor = db.ods_data.camel().select(chCreditColorSql);

    //遍历所有船舶，并将5分钟前的点位放置进去
    var mmsi = "";
    var lonLat = "";
    var strIndex = 0;
    /** */
    var random = new Random();
    var randomNumber = 1;
    log.info("---------------合并开始时间----------" + current_timestamp_millis()::string);
    for (item in shipAis) {
        randomNumber = random.nextInt(3) + 1;
        item.put("shipColor", randomNumber);
        mmsi = item.get("mmsi");
        item.put("latFive", item.get("latitude"));
        item.put("lonFive", item.get("longitude"));
        item.put("course", item.get("course")::double);
        item.put("trueheading", item.get("trueheading")::double);
        for (item2 in fiveMin) {
            if (mmsi == item2.get("mmsi") && (item2.get("lonLat") != null || item2.get("lonLat") != "")) {
                lonLat = item2.get("lonLat");
                strIndex = lonLat.indexOf(",");
                item.put("latFive", item2.get("lonLat").substring(strIndex + 1)::double);
                item.put("lonFive", item2.get("lonLat").substring(0, strIndex)::double);
            }
        }
        //干散货 1有货 2无货
        item.put("carryCargoFlag", 1);
        for (item3 in carryCargo) {
            if (mmsi == item3.get("mmsi")) {
                item.put("carryCargoFlag", item3.get("carryCargoFlag")::int);
            }
        }
        //长航信用颜色：绿、蓝、黄、红；没有的默认白色
        item.put("chCreditColor", "白");
        for (item4 in chCreditColor) {
            if (mmsi == item4.get("mmsi")) {
                item.put("chCreditColor", item4.get("chCreditColor"));
            }
        }
    }
    log.info("---------------合并结束时间----------" + current_timestamp_millis()::string);

    var res = {};
    res.put("shipList", shipAis);
    res.put("mmsiList", mmsiList);

    return response.json({
        code: 200,
        success: "查询成功",
        data: res
        //data: {"shipList",shipAisFs}

    });
} else if (mmsiLists != null && mmsiLists.size() > 0) { //根据mmsiList，调用船舶AIS数据
    //根据mmsiLists获取船舶AIS数据
    var shipAisByMmsi = db.ais.camel().select(shipAisByMmsiSql);

    //遍历出所有的干散货船
    var gxhMmsi = [];
    for (item in shipAisByMmsi) {
        if (item.get("shipMainTypeName") == "干散货") {
            gxhMmsi.add(item.get("mmsi")::string);
        }
        //速度小于0.3的，speedFlag赋值0
        if (item.get("speed") < 0.3) {
            item.put("speedFlag", 0);
        }
    }
    //对所有的干散货船进行有货、无货识别
    var carryCargo = db.gpadmin.camel().select(carryCargoSql);

    //对所有船舶的船舶信用颜色进行查询
    var mmsiList = body.mmsiList;
    var chCreditColor = db.ods_data.camel().select(chCreditColorSql);

    //获取ck中，这100艘船舶前5分钟的点位
    var mmsiListInt = [];
    for (item in mmsiLists) {
        mmsiListInt.add(item::int);
    }
    //mmsiList.addAll(mmsiLists);
    var random = new Random();
    var randomNumber = 1;
    var fiveMin = db.ck.camel().select(fiveMinSql);
    for (item in shipAisByMmsi) {
        randomNumber = random.nextInt(3) + 1;
        mmsi = item.get("mmsi");
        item.put("latFive", item.get("latitude"));
        item.put("lonFive", item.get("longitude"));
        item.put("course", item.get("course")::double);
        item.put("trueheading", item.get("trueheading")::double);
        item.put("shipColor", randomNumber);
        for (item2 in fiveMin) {
            if (mmsi == item2.get("mmsi") && (item2.get("lonLat") != null || item2.get("lonLat") != "")) {
                lonLat = item2.get("lonLat");
                strIndex = lonLat.indexOf(",");
                item.put("latFive", item2.get("lonLat").substring(strIndex + 1)::double);
                item.put("lonFive", item2.get("lonLat").substring(0, strIndex)::double);
            }
        }
        //干散货 1有货 2无货
        item.put("carryCargoFlag", 1);
        for (item3 in carryCargo) {
            if (mmsi == item3.get("mmsi")) {
                item.put("carryCargoFlag", item3.get("carryCargoFlag")::int);
            }
        }
        //长航信用颜色：绿、蓝、黄、红；没有的默认白色
        item.put("chCreditColor", "白");
        for (item4 in chCreditColor) {
            if (mmsi == item4.get("mmsi")) {
                item.put("chCreditColor", item4.get("chCreditColor"));
            }
        }
    }
    return response.json({
        code: 200,
        success: "查询成功",
        data: {
            "shipList": shipAisByMmsi,
            "mmsiList": mmsiLists
        }
    });
}