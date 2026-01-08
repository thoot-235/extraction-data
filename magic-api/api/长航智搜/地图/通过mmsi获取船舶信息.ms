{
  "properties" : { },
  "id" : "8bc634cbea65436bb6b7d917760f8268",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "通过mmsi获取船舶信息",
  "createTime" : null,
  "updateTime" : 1691749539466,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getShipByMmsi",
  "method" : "GET",
  "parameters" : [ {
    "name" : "mmsi",
    "value" : "667003019",
    "description" : "",
    "required" : true,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "statusFlag",
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
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": 200,\n    \"msg\": \"查询成功\",\n    \"data\": {\n        \"data_source\": \"船舶安全监督\",\n        \"nation_name\": \"SLE\",\n        \"ship_firstreg_no\": \"\",\n        \"ship_id\": \"\",\n        \"ship_inspect_no\": \"\",\n        \"ship_mmsi\": \"667003019\",\n        \"ship_name_cn\": \"富荣\",\n        \"ship_name_en\": \"RICH HONOR\",\n        \"ship_no\": \"A\",\n        \"ship_reg_no\": \"\",\n        \"ship_imo\": \"9373175\",\n        \"ship_type_code\": \"0202\",\n        \"status_flag\": \"\",\n        \"ship_type_name\": \"杂货船\"\n    }\n}",
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
      "name" : "msg",
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
        "name" : "data_source",
        "value" : "船舶安全监督",
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
        "name" : "nation_name",
        "value" : "SLE",
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
        "name" : "ship_firstreg_no",
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
        "name" : "ship_id",
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
        "name" : "ship_inspect_no",
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
        "name" : "ship_mmsi",
        "value" : "667003019",
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
        "name" : "ship_name_cn",
        "value" : "富荣",
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
        "name" : "ship_name_en",
        "value" : "RICH HONOR",
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
        "name" : "ship_no",
        "value" : "A",
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
        "name" : "ship_reg_no",
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
        "name" : "ship_imo",
        "value" : "9373175",
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
        "name" : "ship_type_code",
        "value" : "0202",
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
        "name" : "status_flag",
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
        "name" : "ship_type_name",
        "value" : "杂货船",
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
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import response;
// var sql = """
//     SELECT * FROM (
// select '船舶登记' data_source,'中国' nation_name, a.SHIP_FIRSTREG_NO,a.ship_id,a.ship_inspect_no,
// #{mmsi} SHIP_MMSI,a.ship_name_cn,a.ship_name_en,'A' || a.SHIP_REG_NO ship_no,a.ship_reg_no,a.SHIP_IMO,a.SHIP_TYPE_CODE
// from SHP_BASIC_DATA a left join (select * from (
//   select t.*,row_number() over (partition by ship_id order by create_date desc) as num
//   from shp_mmsi t where mmsi_status='1' and ship_id is not null
// ) where num=1) m on a.ship_reg_no=m.ship_reg_no and mmsi_status = '1' where 1=1  ?{statusFlag, and a.status_flag=#{statusFlag}} ?{mmsi,and (m.mmsi=#{mmsi} or a.mmsi=#{mmsi})})
// UNION(
// select 'PSC' data_source,SHIP_FLAG_CODE nation_name,'' ship_firstreg_no,SHIP_ID ship_id,'' ship_inspect_no,
// #{mmsi} mmsi,SHIP_NAME_CN ship_name_cn,SHIP_NAME ship_name_en,SHIP_ID ship_no,'' ship_reg_no ,SHIP_IMO,SHIP_TYPE_CODE
// FROM SHP_BASIC_DATA_PSC a where 1=1 ?{mmsi,and ship_mmsi=#{mmsi}})
// UNION(
// select '船舶安全监督' data_source,NATION_CODE nation_name,SHIP_FIRSTREG_NO,ship_id,SHIP_INSPECT_NO,
// #{mmsi},SHIP_NAME_CN,SHIP_NAME_EN,SHIP_NO,SHIP_REG_NO,SHIP_IMO,SHIP_TYPE_CODE from SHP_BASIC_DATA_SSM
// where 1=1 

// ?{mmsi,and mmsi=#{mmsi}}
// )

// """
var sql="""
select 
case when source_code='CBDJ' then '船舶登记'
  when source_code='PSC' then 'PSC'
   when source_code='AQJD' then '船舶安全监督'   end 
 data_source,
               '中国' nation_name,
               a.SHIP_FIRSTREG_NO,
               a.ship_id,
               a.ship_inspect_no,
              nvl(mmsi,#{mmsi}) SHIP_MMSI,
               a.ship_name_cn,
               a.ship_name_en,
               'A' || a.SHIP_REG_NO ship_no,
               a.ship_reg_no,
               a.SHIP_IMO,
               a.SHIP_TYPE_CODE,
               status_flag
               from sub_base_data.SHP_BASIC_DATA a
               where 1=1
                ?{mmsi,and a.mmsi=#{mmsi}}
               ?{statusFlag, and nvl(a.status_flag,'1')=#{statusFlag}}
             
"""
var ship= db.base_data.lower().selectOne(sql)

//var ship = db.base_data.lower().selectOne(sql);
if(ship!=null){
    
    if(ship.get("ship_mmsi")!=null){
        if(ship.get("ship_mmsi")!=""&&ship.get("ship_mmsi").asString().length()>2){
                ship.put("nation_name", TagUtils.getTagNameByCode("midCountryIconTag", ship.get("ship_mmsi").substring(0, 3)))
            }else if("船舶登记".equals(ship.get("data_source"))){
                ship.put("nation_name","CHN")
            }
    }
   
    ship.put("ship_type_name",TagUtils.getTagNameByCode("shipClassTag", ship.get("ship_type_code")))
}

return response.json({
        code: 200,
        msg: "查询成功",
        data: ship
	});