{
  "properties" : { },
  "id" : "6693fd6a5537462186b396b7445a1adb",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "岸电方搜",
  "createTime" : null,
  "updateTime" : 1691749538498,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getShorePowerListFS",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"fsList\":[\r\n        \"(110.04332420703118,30.55579864290877)\",\r\n        \"(117.73375389453118,31.533582013671833)\",\r\n        \"(118.82140037890618,28.116833966796833)\",\r\n        \"(111.29576561328118,27.402722638671833)\",\r\n        \"(110.04332420703118,30.55579864290877)\"\r\n    ],\r\n    \"current\":1,\r\n    \"size\":10,\r\n    \"wharfName\":\"\"\r\n    \r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1683184096787,\n    \"executeTime\": 144\n}",
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
      "name" : "fsList",
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
        "value" : "(110.04332420703118,30.55579864290877)",
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
      "name" : "wharfName",
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
      "dataType" : "Object",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "timestamp",
      "value" : "1683184096787",
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
      "value" : "144",
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

var fsList="";
for(val in body.fsList){
    fsList = fsList +val.replace(","," ").replace("(","").replace(")","") +",";
}
fsList=fsList.substring(0,fsList.length()-1);



var limit=""" ) a 
limit 
        (#{body.size}) ::bigint  offset 
         ((#{body.current})  ::bigint-1) * (#{body.size}) ::bigint 
"""      ;  
        
var Sql = """
       select * from (
           select count(*) OVER() total_count ,a.longitude,a.latitude,a.wharf_name,a.berth_name,a.facs_np_voltage,a.facs_np_current,
            a.facs_np_capacity,a.facs_np_capacity_dw,a.sg_flag,a.jts_flag,
sum(case when a.FACILITY_NUMBE=0 or a.FACILITY_NUMBE is null then 1 else (a.FACILITY_NUMBE) end ) as num  from (
        select  --count(*) OVER() total_count ,
                b.longitude as longitude,
                b.latitude as latitude,
                --b.berth_code as berth_code,
                --b.wharf_code as wharf_code,
                --a.address_name as address_name,
                --a.province_name as province_name,
                a.wharf_name as wharf_name,
                --CASE WHEN a.wharf_basin_flag = '0' THEN '干线' WHEN a.wharf_basin_flag = '1' THEN '支流' WHEN a.wharf_basin_flag = '2' THEN '沿海' ELSE '' 
                --END wharf_basin_flag,
                --a.wharf_basin_info as wharf_basin_info,
                --a.channel_distance as channel_distance,
                --CASE WHEN a.riverside = 'R' THEN '右岸' WHEN a.riverside = 'L' THEN '左岸' WHEN a.riverside = 'LR' THEN '左右岸' ELSE '' END riverside,
                --a.wharf_structure_cn as wharf_structure_cn,
                --a.port_name as port_name,
                --a.wharf_mgr_name as wharf_mgr_name,
                --a.wharf_mgr_social_code as wharf_mgr_social_code,
                --a.wharf_contact_name as wharf_contact_name,
                --a.wharf_contact_tel as wharf_contact_tel,
                --a.wharf_contact_mobile as wharf_contact_mobile,
                --a.deptname as deptname,
                b.berth_name as berth_name,
                --CASE WHEN b.berth_application = 'A1' THEN '生产' WHEN b.berth_application = 'A2' THEN '非生产' WHEN b.berth_application = 'A3' THEN '其他'
                --ELSE '' END berth_application,
                --b.berth_scale as berth_scale,
                --b.berth_length as berth_length,
                --b.berth_depth as berth_depth,
                --b.principal1 as principal1,
                --b.principal2 as principal2,
                --b.principal1_tel as principal1_tel,
                --b.principal2_tel as principal2_tel,
                --b.berth_type as berth_type,
                --b.berth_type_cn as berth_type_cn,
                --case when b.hc_status = '0' then '待核查' when b.hc_status = '1' then '已提交核查' when b.hc_status = '2' then '自己主动撤回'
                --when b.hc_status = '3' then '被审核部门退回' else '' end hc_status_cn,
                --case when b.sh_status = '0' then '待核查' when b.sh_status = '1' then '待海事处审核' when b.sh_status = '2' then '待危防处审核'
                --when b.sh_status = '3' then '审核完毕' else '' end sh_status_cn,
                --de2.deptname as dy_deptname,
                C.facility_numbe as facility_numbe,
                C.facs_np_voltage as facs_np_voltage,
                C.facs_np_current as facs_np_current,
                --C.facs_np_ip_class as facs_np_ip_class,
                C.facs_np_capacity as facs_np_capacity,
                C.facs_np_capacity_dw as facs_np_capacity_dw,
                --C.facs_np_no as facs_np_no,
                CASE
                  WHEN C.sg_flag = '1' THEN
                    '是'
                  when C.sg_flag = '0' then
                    '否'
                  else
                    ''
                end sg_flag,
                --C.conn_np_rated_voltage as conn_np_rated_voltage,
                --C.conn_np_max_voltage as conn_np_max_voltage,
                --C.conn_np_rated_current as conn_np_rated_current,
                --C.conn_np_max_current as conn_np_max_current,
                --C.conn_np_ip_class as conn_np_ip_class,
                CASE WHEN C.jts_flag = '1' THEN '是' WHEN C.jts_flag = '0' THEN '否' ELSE '' END jts_flag
                --,CASE WHEN C.inspect_flag = '1' THEN '是' WHEN C.inspect_flag = '0' THEN '否' ELSE '' END inspect_flag,
                --CASE WHEN C.shore_power_used_flag = '1' THEN '是' WHEN C.shore_power_used_flag = '0' THEN '否' ELSE '' END shore_power_used_flag,
                --CASE WHEN C.charge_flag = '1' THEN '是' WHEN C.charge_flag = '0' THEN '否' ELSE '' END charge_flag,
                --C.electrovalence_low as electrovalence_low,
                --C.electrovalence_high as electrovalence_high,
                --C.remark as remark,
                --C.electrovalence_explain as electrovalence_explain,
                --C.is_public_param_tech as is_public_param_tech,
                --C.is_collect_syn as is_collect_syn,
                --C.conn_adxmp_files as conn_adxmp_files,
                --C.conn_jcjmp_files as conn_jcjmp_files
            from shore_power_port a
            left join shore_power_port_berth b
              on a.wharf_code = b.wharf_code
            left join (select * from shore_power_dept where flag = '2') de1x
              on de1x.deptid = a.deptid
            left join shore_power_dept de2
              on de2.deptid = de1x.dy_deptid
            left join shore_power_facs_info C
              on C.berth_code = b.berth_code
          where 1 = 1 and
           
        public.ST_Contains(
public.st_geometryfromtext ('polygon (("""+fsList+"""))',4326) ,
public.st_geometryfromtext (concat('POINT (',longitude,' ',latitude,')'),4326)    
)

        ?{body.wharfName,   and a.wharf_name like  '%'||#{body.wharfName}||'%' }

       and b.longitude is not null
        and b.latitude is not null
        and a.isdel = '0'
        order by wharf_name,berth_name
     )a  group by a.longitude,a.latitude,a.wharf_name,a.berth_name,a.facs_np_voltage,a.facs_np_current,
            a.facs_np_capacity,a.facs_np_capacity_dw,a.sg_flag,a.jts_flag   
 
      

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
