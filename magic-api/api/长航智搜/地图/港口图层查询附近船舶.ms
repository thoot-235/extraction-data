{
  "properties" : { },
  "id" : "bbbed0d0101b4a118bf853c93c9d38cf",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "港口图层查询附近船舶",
  "createTime" : null,
  "updateTime" : 1745734872259,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "getPortShipByYs",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n   \"current\": 1,\r\n\"size\": 10,\r\n\"ysLat\": 30.58849,\r\n\"ysLon\": 114.30052,\r\n\"ysRadius\": \"0.05\",\r\n\"portName\":\"朱杨\"\r\n   \r\n   \r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 200,\n    \"success\": \"查询成功\",\n    \"data\": {\n        \"records\": [{\n            \"mmsi\": 413819548,\n            \"utc\": 1701499291,\n            \"createDate\": \"2023-12-02 14:41:31\",\n            \"distance\": \"5.02\",\n            \"latitude\": 30.546647135416666,\n            \"longitude\": 114.28058268229167,\n            \"course\": \"26.1000\",\n            \"trueheading\": \"-0.1000\",\n            \"speed\": 5.199999809265137,\n            \"shipName\": \"永安2668\",\n            \"shipNameEn\": \"YONG AN 2668\",\n            \"shipId\": \"CN20136985615\",\n            \"shipCallSign\": \"\",\n            \"shipNo\": \"280222000047\",\n            \"shipRegNo\": \"280222000047\",\n            \"if_focus\": \"0\",\n            \"if_power\": \"0\",\n            \"ship_main_type_code\": \"0200\",\n            \"ship_main_type_name\": \"普通货船类\",\n            \"shipname1\": \"YONG AN 2668\",\n            \"total_count\": 58,\n            \"arrivalOrLeave\": \"\"\n        }, {\n            \"mmsi\": 413932559,\n            \"utc\": 1701499150,\n            \"createDate\": \"2023-12-02 14:39:10\",\n            \"distance\": \"0.41\",\n            \"latitude\": 30.591463216145833,\n            \"longitude\": 114.30313313802084,\n            \"course\": \"0.0000\",\n            \"trueheading\": \"-0.1000\",\n            \"speed\": 0.0,\n            \"shipName\": \"古琴台号\",\n            \"shipNameEn\": \"GU QIN TAI HAO\",\n            \"shipId\": \"CN20114832884\",\n            \"shipCallSign\": \"\",\n            \"shipNo\": \"120814000113\",\n            \"shipRegNo\": \"120814000113\",\n            \"if_focus\": \"0\",\n            \"if_power\": \"0\",\n            \"ship_main_type_code\": \"0100\",\n            \"ship_main_type_name\": \"客船类\",\n            \"shipname1\": \"GUQINTAIHAO\",\n            \"total_count\": 58,\n            \"arrivalOrLeave\": \"\"\n        }, {\n            \"mmsi\": 413819524,\n            \"utc\": 1701499295,\n            \"createDate\": \"2023-12-02 14:41:35\",\n            \"distance\": \"1.52\",\n            \"latitude\": 30.596809895833335,\n            \"longitude\": 114.31309407552084,\n            \"course\": \"207.0000\",\n            \"trueheading\": \"207.0000\",\n            \"speed\": 4.199999809265137,\n            \"shipName\": \"江宜988\",\n            \"shipNameEn\": \"JIANG YI 988\",\n            \"shipId\": \"CN20138304664\",\n            \"shipCallSign\": \"\",\n            \"shipNo\": \"121120000150\",\n            \"shipRegNo\": \"121120000150\",\n            \"if_focus\": \"0\",\n            \"if_power\": \"1\",\n            \"ship_main_type_code\": \"0200\",\n            \"ship_main_type_name\": \"普通货船类\",\n            \"shipname1\": \"JIANGYI988\",\n            \"total_count\": 58,\n            \"arrivalOrLeave\": \"\"\n        }, {\n            \"mmsi\": 413827775,\n            \"utc\": 1701499074,\n            \"createDate\": \"2023-12-02 14:37:54\",\n            \"distance\": \"5.14\",\n            \"latitude\": 30.545625813802083,\n            \"longitude\": 114.28006998697917,\n            \"course\": \"26.8000\",\n            \"trueheading\": \"-0.1000\",\n            \"speed\": 5.599999904632568,\n            \"shipName\": \"鑫顺航66\",\n            \"shipNameEn\": \"XIN SHUN HANG 66\",\n            \"shipId\": \"CN20147725483\",\n            \"shipCallSign\": \"\",\n            \"shipNo\": \"270321000127\",\n            \"shipRegNo\": \"270321000127\",\n            \"if_focus\": \"0\",\n            \"if_power\": \"1\",\n            \"ship_main_type_code\": \"0200\",\n            \"ship_main_type_name\": \"普通货船类\",\n            \"shipname1\": \"XINSHUNHANG66\",\n            \"total_count\": 58,\n            \"arrivalOrLeave\": \"\"\n        }, {\n            \"mmsi\": 413869184,\n            \"utc\": 1701499289,\n            \"createDate\": \"2023-12-02 14:41:29\",\n            \"distance\": \"3.86\",\n            \"latitude\": 30.558026123046876,\n            \"longitude\": 114.28103841145834,\n            \"course\": \"262.6000\",\n            \"trueheading\": \"262.0000\",\n            \"speed\": 0.0,\n            \"shipName\": \"利记01\",\n            \"shipNameEn\": \"LI JI 01\",\n            \"shipId\": \"CN20210013750\",\n            \"shipCallSign\": \"----\",\n            \"shipNo\": \"120822000087\",\n            \"shipRegNo\": \"120822000087\",\n            \"if_focus\": \"0\",\n            \"if_power\": \"0\",\n            \"ship_main_type_code\": \"0100\",\n            \"ship_main_type_name\": \"客船类\",\n            \"shipname1\": \"LIJI01\",\n            \"total_count\": 58,\n            \"arrivalOrLeave\": \"\"\n        }, {\n            \"mmsi\": 413831301,\n            \"utc\": 1701499291,\n            \"createDate\": \"2023-12-02 14:41:31\",\n            \"distance\": \"2.76\",\n            \"latitude\": 30.567067464192707,\n            \"longitude\": 114.28589680989583,\n            \"course\": \"98.3000\",\n            \"trueheading\": \"-0.1000\",\n            \"speed\": 6.400000095367432,\n            \"shipName\": \"玉带6699\",\n            \"shipNameEn\": \"YU DAI 6699\",\n            \"shipId\": \"CN20144602771\",\n            \"shipCallSign\": \"\",\n            \"shipNo\": \"331415000010\",\n            \"shipRegNo\": \"331415000010\",\n            \"if_focus\": \"0\",\n            \"if_power\": \"1\",\n            \"ship_main_type_code\": \"0200\",\n            \"ship_main_type_name\": \"普通货船类\",\n            \"shipname1\": \"YUDAI6699\",\n            \"total_count\": 58,\n            \"arrivalOrLeave\": \"\"\n        }, {\n            \"mmsi\": 413830035,\n            \"utc\": 1701499272,\n            \"createDate\": \"2023-12-02 14:41:12\",\n            \"distance\": \"3.05\",\n            \"latitude\": 30.608945719401042,\n            \"longitude\": 114.32184244791667,\n            \"course\": \"207.3000\",\n            \"trueheading\": \"-0.1000\",\n            \"speed\": 3.299999952316284,\n            \"shipName\": \"中海516\",\n            \"shipNameEn\": \"ZHONGHAI516\",\n            \"shipId\": \"CN20144954947\",\n            \"shipCallSign\": \"\",\n            \"shipNo\": \"280819000143\",\n            \"shipRegNo\": \"280819000143\",\n            \"if_focus\": \"0\",\n            \"if_power\": \"1\",\n            \"ship_main_type_code\": \"0200\",\n            \"ship_main_type_name\": \"普通货船类\",\n            \"shipname1\": \"ZHONGHAI516\",\n            \"total_count\": 58,\n            \"arrivalOrLeave\": \"\"\n        }, {\n            \"mmsi\": 413815656,\n            \"utc\": 1701494273,\n            \"createDate\": \"2023-12-02 13:17:53\",\n            \"distance\": \"0.59\",\n            \"latitude\": 30.58338623046875,\n            \"longitude\": 114.29862467447917,\n            \"course\": \"262.2000\",\n            \"trueheading\": \"-0.1000\",\n            \"speed\": 0.10000000149011612,\n            \"shipName\": \"汉港拖402\",\n            \"shipNameEn\": \"HAN GANG TUO 402\",\n            \"shipId\": \"CN19898383225\",\n            \"shipCallSign\": \"\",\n            \"shipNo\": \"120808000116\",\n            \"shipRegNo\": \"120808000116\",\n            \"if_focus\": \"0\",\n            \"if_power\": \"0\",\n            \"ship_main_type_code\": \"0600\",\n            \"ship_main_type_name\": \"拖船类\",\n            \"shipname1\": \"HANGANGTU0402\",\n            \"total_count\": 58,\n            \"arrivalOrLeave\": \"\"\n        }, {\n            \"mmsi\": 413841986,\n            \"utc\": 1701499281,\n            \"createDate\": \"2023-12-02 14:41:21\",\n            \"distance\": \"2.94\",\n            \"latitude\": 30.56747029622396,\n            \"longitude\": 114.28185221354167,\n            \"course\": \"254.5000\",\n            \"trueheading\": \"-0.1000\",\n            \"speed\": 6.199999809265137,\n            \"shipName\": \"江城6号\",\n            \"shipNameEn\": \"JIANG CHENG 6 HAO\",\n            \"shipId\": \"CN20109589664\",\n            \"shipCallSign\": \"----\",\n            \"shipNo\": \"120823000010\",\n            \"shipRegNo\": \"120823000010\",\n            \"if_focus\": \"0\",\n            \"if_power\": \"0\",\n            \"ship_main_type_code\": \"0100\",\n            \"ship_main_type_name\": \"客船类\",\n            \"shipname1\": \"JIANGCHENG6HAO\",\n            \"total_count\": 58,\n            \"arrivalOrLeave\": \"\"\n        }, {\n            \"mmsi\": 413801365,\n            \"utc\": 1701499250,\n            \"createDate\": \"2023-12-02 14:40:50\",\n            \"distance\": \"3.35\",\n            \"latitude\": 30.611263020833334,\n            \"longitude\": 114.32351888020834,\n            \"course\": \"213.5000\",\n            \"trueheading\": \"214.0000\",\n            \"speed\": 3.4000000953674316,\n            \"shipName\": \"领航前程\",\n            \"shipNameEn\": \"LING HANG QIAN CHENG\",\n            \"shipId\": \"CN20104428721\",\n            \"shipCallSign\": \"\",\n            \"shipNo\": \"250820000157\",\n            \"shipRegNo\": \"250820000157\",\n            \"if_focus\": \"0\",\n            \"if_power\": \"1\",\n            \"ship_main_type_code\": \"0200\",\n            \"ship_main_type_name\": \"普通货船类\",\n            \"shipname1\": \"LING HANG QIAN CHENG\",\n            \"total_count\": 58,\n            \"arrivalOrLeave\": \"\"\n        }],\n        \"total\": 58\n    }\n}",
  "description" : "",
  "requestBodyDefinition" : {
    "name" : "root",
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
    }, {
      "name" : "ysLat",
      "value" : "30.58849",
      "description" : "",
      "required" : false,
      "dataType" : "Double",
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
      "dataType" : "Double",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "ysRadius",
      "value" : "0.05",
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
      "name" : "portName",
      "value" : "朱杨",
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
      "name" : "code",
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
      "name" : "success",
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
      "name" : "data",
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
        "name" : "records",
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
            "name" : "mmsi",
            "value" : "413819548",
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
            "name" : "utc",
            "value" : "1701499291",
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
            "name" : "createDate",
            "value" : "2023-12-02 14:41:31",
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
            "name" : "distance",
            "value" : "5.02",
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
            "name" : "latitude",
            "value" : "30.546647135416666",
            "description" : "",
            "required" : false,
            "dataType" : "Double",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "longitude",
            "value" : "114.28058268229167",
            "description" : "",
            "required" : false,
            "dataType" : "Double",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "course",
            "value" : "26.1000",
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
            "name" : "trueheading",
            "value" : "-0.1000",
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
            "name" : "speed",
            "value" : "5.199999809265137",
            "description" : "",
            "required" : false,
            "dataType" : "Double",
            "type" : "",
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          }, {
            "name" : "shipName",
            "value" : "永安2668",
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
            "name" : "shipNameEn",
            "value" : "YONG AN 2668",
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
            "value" : "CN20136985615",
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
            "name" : "shipCallSign",
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
            "name" : "shipNo",
            "value" : "280222000047",
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
            "name" : "shipRegNo",
            "value" : "280222000047",
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
            "name" : "if_focus",
            "value" : "0",
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
            "name" : "if_power",
            "value" : "0",
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
            "name" : "ship_main_type_code",
            "value" : "0200",
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
            "name" : "ship_main_type_name",
            "value" : "普通货船类",
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
            "name" : "shipname1",
            "value" : "YONG AN 2668",
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
            "name" : "total_count",
            "value" : "58",
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
            "name" : "arrivalOrLeave",
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
          } ]
        } ]
      }, {
        "name" : "total",
        "value" : "58",
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

        round(cast(public.ST_Distance(public.geography(public.ST_MakePoint("longitude","latitude")),
                   public.geography(public.ST_MakePoint(#{body.ysLon}, #{body.ysLat})))/1000  as numeric),2) as distance,

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
        left join ( select b.* from (select b.*,row_number() over(partition by ship_id  order by create_date desc ) 
        as rownumber  from shp_basic_data b where
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
var  ret;
if(body.portName!=null){
    var sqlReport="""
select  ARRIVE_TIME estimated_time,
       ship_id,
       ship_name_cn,
       ship_name_en,
       mmsi,
       SHIP_IMO,
       ( case when ARRIVAL_OR_LEAVE='0' then '进港' when  ARRIVAL_OR_LEAVE='1' then '出港' else '' end)  ARRIVAL_OR_LEAVE  from  (

select PORT_CODE,
       ARRIVE_TIME,
       ship_id,
       ship_name_cn,
       ship_name_en,
       mmsi,
       SHIP_IMO,ARRIVAL_OR_LEAVE
  from (select REPORT_PORT_CODE PORT_CODE，to_CHAR(EXPECT_TIME, 'YYYY-MM-DD HH24:MI:SS') ARRIVE_TIME,
               ship_id,
               ship_name_cn,
               ship_name_en,
               mmsi,
               SHIP_IMO,ARRIVAL_OR_LEAVE
          from bds_biz_data.RPT_SHIP_EEP_REPORT_REC
         where DELETE_FLAG = '0'
           and report_TIME > (SYSDATE-0.5)
           ) a,
       dict_data.D_CB_PORT p
 where a.PORT_CODE = p.code
   and p.item_name_cn = #{body.portName}


        ) order by ARRIVE_TIME

"""
  ret=db.biz_data.camel().select (sqlReport);

}

if(list==null){
   list=[];
} 
for(item in list){ 
    totalCount = item.get("total_count");
    var arr="";
    if(ret!=null&&ret!=''){
        for(itData in ret){
            if(item.get("mmsi")!=null&&itData.get("mmsi")!=null){
                if(item.get("mmsi").toString().equals(itData.get("mmsi").toString())){
                            arr=itData.get("arrivalOrLeave");
                        }
            }
           
        }
    }
    item.put("arrivalOrLeave",arr);
     
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
