{
  "properties" : { },
  "id" : "b59bdea912464f9db05c96d244489231",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "岸电列表查询",
  "createTime" : null,
  "updateTime" : 1735280051593,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getShorePowerListAll",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"KeyWord\":\"大桥局码头\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 200,\n    \"success\": \"查询成功\",\n    \"data\": [{\n        \"longitude\": \"114.270074\",\n        \"latitude\": \"30.52957\",\n        \"wharf_name\": \"大桥局码头\",\n        \"berth_name\": \"大桥局码头\",\n        \"data\": [{\n            \"longitude\": \"114.270074\",\n            \"latitude\": \"30.52957\",\n            \"wharf_name\": \"大桥局码头\",\n            \"berth_name\": \"大桥局码头\",\n            \"facs_np_voltage\": \"工频50HZ 400V\",\n            \"facs_np_current\": \"200\",\n            \"facs_np_capacity\": \"100\",\n            \"facs_np_capacity_dw\": \"KW\",\n            \"sg_flag\": \"是\",\n            \"jts_flag\": \"是\",\n            \"num\": \"1\"\n        }]\n    }]\n}",
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
      "name" : "KeyWord",
      "value" : "大桥局码头",
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
          "name" : "longitude",
          "value" : "114.270074",
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
          "value" : "30.52957",
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
          "name" : "wharf_name",
          "value" : "大桥局码头",
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
          "name" : "berth_name",
          "value" : "大桥局码头",
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
              "name" : "longitude",
              "value" : "114.270074",
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
              "value" : "30.52957",
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
              "name" : "wharf_name",
              "value" : "大桥局码头",
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
              "name" : "berth_name",
              "value" : "大桥局码头",
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
              "name" : "facs_np_voltage",
              "value" : "工频50HZ 400V",
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
              "name" : "facs_np_current",
              "value" : "200",
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
              "name" : "facs_np_capacity",
              "value" : "100",
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
              "name" : "facs_np_capacity_dw",
              "value" : "KW",
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
              "name" : "sg_flag",
              "value" : "是",
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
              "name" : "jts_flag",
              "value" : "是",
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
              "name" : "num",
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
            } ]
          } ]
        } ]
      } ]
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;

import "java.util.stream.Collectors" as Collectors;

/*
var Sql = """
select a.longitude,a.latitude,a.wharf_name,a.berth_name,a.facs_np_voltage,a.facs_np_current,
            a.facs_np_capacity,a.facs_np_capacity_dw,a.sg_flag,a.jts_flag,
sum(case when a.FACILITY_NUMBE=0 or a.FACILITY_NUMBE is null then 1 else (a.FACILITY_NUMBE) end ) as num  from (
        select                
                b.longitude as longitude,
                b.latitude as latitude,              
                a.wharf_name as wharf_name,              
                b.berth_name as berth_name,              
                C.facs_np_voltage as facs_np_voltage,
                C.facs_np_current as facs_np_current,
                C.facs_np_capacity as facs_np_capacity,
                C.facs_np_capacity_dw as facs_np_capacity_dw,
                CASE
                  WHEN C.sg_flag = '1' THEN
                    '是'
                  when C.sg_flag = '0' then
                    '否'
                  else
                    ''
                end sg_flag,
              
                CASE WHEN C.jts_flag = '1' THEN '是' WHEN C.jts_flag = '0' THEN '否' ELSE '' END jts_flag,
                c.FACILITY_NUMBE

               
            from shore_power_port a
            left join shore_power_port_berth b
              on a.wharf_code = b.wharf_code
            left join (select * from shore_power_dept where flag = '2') de1x
              on de1x.deptid = a.deptid
            left join shore_power_dept de2
              on de2.deptid = de1x.dy_deptid
            left join shore_power_facs_info C
              on C.berth_code = b.berth_code
          where 1 = 1
        ?{body.KeyWord, and (b.wharf_name like '%'||#{body.KeyWord}||'%' or b.berth_name like '%'||#{body.KeyWord}||'%' 
        or b.wharf_code like '%'||#{body.KeyWord}||'%' or b.berth_code like '%'||#{body.KeyWord}||'%')}
           and b.longitude is not null
            and b.latitude is not null
            and a.isdel = '0') a  group by a.longitude,a.latitude,a.wharf_name,a.berth_name,a.facs_np_voltage,a.facs_np_current,
            a.facs_np_capacity,a.facs_np_capacity_dw,a.sg_flag,a.jts_flag
        """;*/
var Sql = """
select a.longitude,
       a.latitude,
       a.wharf_name,
       a.berth_name,
       a.facs_np_voltage,
       a.facs_np_current,
       a.facs_np_capacity,
       a.facs_np_capacity_dw,
       a.sg_flag,
       a.jts_flag,
       sum(case
             when a.FACILITY_NUMBE = 0 or a.FACILITY_NUMBE is null then
              1
             else
              (a.FACILITY_NUMBE)
           end) as num
  from (select trim(substring(COORDINATE from 1 for  position(',' in COORDINATE)-1)) as latitude,
               trim(substring(COORDINATE from   position(',' in COORDINATE)+1)) as longitude,
               a.wharf_name as wharf_name,
               b.berth_name as berth_name,
               C.facs_np_voltage as facs_np_voltage,
               C.facs_np_current as facs_np_current,
               C.facs_np_capacity as facs_np_capacity,
               C.facs_np_capacity_dw as facs_np_capacity_dw,
               CASE
                 WHEN C.sg_flag = '1' THEN
                  '是'
                 when C.sg_flag = '0' then
                  '否'
                 else
                  ''
               end sg_flag,
               
               CASE
                 WHEN C.jts_flag = '1' THEN
                  '是'
                 WHEN C.jts_flag = '0' THEN
                  '否'
                 ELSE
                  ''
               END jts_flag,
               c.FACILITY_NUMBE
        
          from ADHC_V2_PORT a
          left join ADHC_V2_BERTH b
            on a.WHARF_ID = b.WHARF_ID
          left join (select *
                      from shore_power_dept
                     where flag = '2') de1x
            on de1x.deptid = a.deptid
          left join shore_power_dept de2
            on de2.deptid = de1x.dy_deptid
          left join adhc_v2_facs_info C
            on C.berth_id = b.berth_id
         where 1 = 1
              ?{body.KeyWord, and (b.wharf_name like '%'||#{body.KeyWord}||'%' or b.berth_name like '%'||#{body.KeyWord}||'%' 
              or b.wharf_id like '%'||#{body.KeyWord}||'%' or b.berth_id like '%'||#{body.KeyWord}||'%')}
           and trim(substring(COORDINATE from 1 for  position(',' in COORDINATE))) != ''
           and a.ISLQ = '1'
           and a.ISDEL = '0'
           and b.ISDEL = '0'
           and b.HC_STATUS = '2'
           and b.SH_STATUS = '9'
           and b.berth_zbtype = '1'
           ) a
 group by a.longitude,
          a.latitude,
          a.wharf_name,
          a.berth_name,
          a.facs_np_voltage,
          a.facs_np_current,
          a.facs_np_capacity,
          a.facs_np_capacity_dw,
          a.sg_flag,
          a.jts_flag
"""
var backMap;
var list = db.ais.select(Sql);
if (list == null || list == '') {
    list = [];
} else {
    backMap = list.stream()
        .collect(
            Collectors.groupingBy(
                e ->
                e.get("longitude").toString() +
                "#" +
                e.get("latitude").toString() +
                "#" +
                e.get("wharf_name") +
                "#" +
                e.get("berth_name")));
}
var listback = [];
if (backMap != null && backMap != '') {
    for (k, v in backMap) {
        var obj = {};
        if (k.split("#").length >= 1) {
            obj.put("longitude", k.split("#")[0])
        };
        if (k.split("#").length >= 2) {
            obj.put("latitude", k.split("#")[1])
        };
        if (k.split("#").length >= 3) {
            obj.put("wharf_name", k.split("#")[2])
        };
        if (k.split("#").length >= 4) {
            obj.put("berth_name", k.split("#")[3])
        };
        obj.put("data", v);
        listback.add(obj);
    }

}
import response;
return response.json({
    code: 200,
    success: "查询成功",
    data: listback

});