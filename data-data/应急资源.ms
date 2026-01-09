{
  "properties" : { },
  "id" : "b0b6b363666142e683d68d59659409ac",
  "script" : null,
  "groupId" : "f8cb5b13739f455397cc22a7ae910702",
  "name" : "应急资源",
  "createTime" : null,
  "updateTime" : 1757901320695,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/emResource",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1757901300450,\n    \"executeTime\": 375\n}",
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
      "value" : "1757901300450",
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
      "value" : "375",
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

/*
//储备库管理
var cbkSql = """
    select count(1) from yjzy_data.yjxx_cbk where scbj = '0'
"""
//装备管理
var chxtsssbSql = """
    select count(1) from yjzy_data.yjxx_chxtsssb where scbj = '0' and header = 'chxt' and equip_code is not null
"""
//物资管理
var wzSql = """
    select count(1) from yjzy_data.yjxx_wz where scbj = '0' 
"""
//应急队伍管理
var chxtjydwSql = """
    select count(1) from yjzy_data.yjxx_chxtjydw where scbj = '0' and header = 'chxt'
"""
//专家管理
var chxtyjrySql = """
    select count(1) from yjzy_data.yjxx_chxtyjry where scbj = '0' and header = 'chxt'
"""
//应急救援基地

var yjjyjdSql = """
    select count(1) from yjzy_data.yjxx_yjjyjd where scbj = '0'
"""

//应急医院
var yySql = """
    select count(1) from yjzy_data.yjxx_yy where scbj = '0'
"""
//应急管理机构
var gljgSql = """
    select count(1) from yjzy_data.yjxx_gljg where scbj = '0'
"""
*/


//应急专家
var yjzjSql= """
select count(1) from eoc.ods_yj_river_emergency_experts  
"""
//应急队伍
var yjdwSql ="""
select count(*) from eoc.ods_yj_emergency_team_info
"""
//社会应急船舶
var shyjcbSql = """
select count(1) from
(select 
distinct ship_name,
ID,
ship_type,
ship_length,
affiliated_unit,
maritime_district,
contact_person,
contact_number,
berth_location,
mmsi
from	eoc.ods_yj_social_emergency_boats 
where ship_name is not null and doc_type='拖船消防船') t
"""
//长航应急船艇
var chyjcbSql = """
select count(distinct ship_name) from eoc.ods_yj_emergency_boats 
"""

//应急救助点
var yjjzdSql = """
select count(*) from ods_yj_emergency_relief_points
"""

//应急设备库
var yjsbkSql ="""
select count(distinct name) from eoc.ods_yj_emergency_equipment_library
"""

//应急救助基地
var yjjzjdSql ="""
select count(*) from eoc.ods_yj_emergency_rescue_base
"""

//应急预案
var yjyaSql = """
select count(1) from dm_data.yjzy_yjya_info where del_flag='0'
"""

//应急船艇
var yjctSql = """
select sum(num) nums from(
select count(distinct ship_name) num from bds_ods.ods_yj_emergency_boats union all
select count(distinct  ship_name) num from bds_ods.ods_yj_social_emergency_boats where ship_name is not null)t
"""

//长江航运总医院
var cjhyzyySql = """
select count(1) from bds_ods.ods_yj_river_emergency_experts where employer = '长江航运总医院'
"""

//var cbk = async db.ods_data.selectInt(cbkSql);
//var chxtsssb = async db.ods_data.selectInt(chxtsssbSql);
//var wz = async db.ods_data.selectInt(wzSql);
//var chxtjydw = async db.ods_data.selectInt(chxtjydwSql);
//var chxtyjry = async db.ods_data.selectInt(chxtyjrySql);
//var yjjyjd = async db.ods_data.selectInt(yjjyjdSql);
//var yy = async db.ods_data.selectInt(yySql);
//var gljg = async db.ods_data.selectInt(gljgSql);


var yjzj = async db.lx_doris.selectInt(yjzjSql);
var yjdw = async db.lx_doris.selectInt(yjdwSql);
var shyjcb = async db.lx_doris.selectInt(shyjcbSql);
var chyjcb = async db.lx_doris.selectInt(chyjcbSql);
var yjjzd = async db.ods_data.selectInt(yjjzdSql);
var yjsbk = async db.lx_doris.selectInt(yjsbkSql);
var yjjzjd = async db.lx_doris.selectInt(yjjzjdSql);
var yjya = async db.ods_data.selectInt(yjyaSql);
//var yjct =  async db.lx_doris.selectInt(yjctSql);
//var cjhyzyy =  async db.lx_doris.selectInt(cjhyzyySql);


var list = [];
/*
list.add({"name":"储备库管理","values":cbk.get()});
list.add({"name":"装备管理","values":chxtsssb.get()});
list.add({"name":"物资管理","values":wz.get()});
list.add({"name":"应急队伍管理","values":chxtjydw.get()});
list.add({"name":"专家管理","values":chxtyjry.get()});
list.add({"name":"应急救援基地","values":yjjyjd.get()});
list.add({"name":"应急医院","values":yy.get()});
list.add({"name":"应急管理机构","values":gljg.get()});
*/


list.add({"name":"应急救援基地","values":yjjzjd.get()});
list.add({"name":"应急设备库","values":yjsbk.get()});
list.add({"name":"应急救助点","values":yjjzd.get()});
list.add({"name":"长航局重点应急船艇","values":chyjcb.get()});
list.add({"name":"社会应急船艇","values":shyjcb.get()});
list.add({"name":"应急队伍","values":yjdw.get()});
list.add({"name":"应急专家","values":yjzj.get()});
list.add({"name":"应急预案","values":yjya.get()});
//list.add({"name":"应急船艇","values":yjct.get()});
//list.add({"name":"长江航运总医院","values":cjhyzyy.get()});

import response;
return response.json({
          resultCode: 200,
          resultMsg: "查询成功",
          result: list
  });