{
  "properties" : { },
  "id" : "3db21f9b7365454da691bc2a69103c49",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "关联船舶总计",
  "createTime" : null,
  "updateTime" : 1721699894742,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getRefShipsTotal",
  "method" : "GET",
  "parameters" : [ {
    "name" : "companyName",
    "value" : "江苏湾流航运有限公司",
    "description" : "",
    "required" : true,
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"shipTotal\": \"4\",\n        \"crewTotal\": \"39\"\n    }\n}",
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
      "defaultValue" : null,
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
      "defaultValue" : null,
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
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "shipTotal",
        "value" : "4",
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
        "name" : "crewTotal",
        "value" : "39",
        "description" : "",
        "required" : false,
        "dataType" : "String",
        "type" : null,
        "defaultValue" : null,
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
import log;
import response;
import 'java.util.stream.Collectors' as Collectors;
import 'com.alibaba.fastjson.JSON' as JSON;
import 'com.alibaba.fastjson.JSONObject' as JSONObject;
companyName=(companyName==null?"":companyName).replace("<em>","").replace("</em>","");





var totalCount=0;

 var shipList = [];

   var sql = """
      select count(*) as ship_num,ship_type_name as type,total_count,to_char(round(count(*) / total_count, 4) * 100,
               'fm99990.00')  radio  from (
      select m.*,count(*) over() total_count
        from (select row_number() over(partition by ship_id order by t.flag,t.create_time desc) rn,
                    t.*
                from (select '船舶登记' as data_source,
                r.flag,
                            r.ref_code,
                            ref_name,
                            s.ship_reg_no,
                            s.ship_id,
                            s.ship_imo,
                            'A' || s.ship_firstreg_no as ship_no,
                            s.mmsi,
                            s.status_flag,
                            s.ship_name_cn,
                            s.ship_type_code,
                            cc.item_name_cn  as ship_type_name,
                            s.regport_code,
                            case
                              when to_char(s.ship_built_date, 'yyyy-mm-dd') =
                                    '1900-01-01' then
                                '--'
                              else
                                to_char(s.ship_built_date, 'yyyy-mm-dd')
                            end ship_built_date,
                            s.sailingarea_code,
                            s.create_time
                        from (select ship_reg_no,
                                     listagg(ref_code, ',') within group(order by ref_code) as ref_code,
                                     listagg(ref_name, ',') within group(order by ref_code) as ref_name,
                                     '1' flag
                          from  bds_base_data.COMP_SHIP_REF_NEW WHERE comp_name = #{companyName} and is_delete = '0' group by ship_reg_no, 1) r
                        inner join bds_base_data.shp_basic_data s
                        
                          on r.ship_reg_no = s.ship_reg_no
                          left join dict_data.D_CB_SHIP_TYPE cc  on s.ship_type_code =cc.code where s.status_flag='1') t) m
      where rn = 1 and ref_name is not null) group by ship_type_name  ,total_count order by count(*)  desc
        """
     shipList= db.base_data.camel().select(sql);
 
var totalCount=0;      
for(item in shipList){
  totalCount = item.get("totalCount");
}



var crewList = [];

   var crewsql = """
     
      select sum(nvl(crew_on_ship,0)) total_count
        from (select row_number() over(partition by ship_reg_no order by t.flag,t.OPERATE_TIME desc) rn,
                    t.*
                from (select '船舶登记' as data_source,
                            r.ref_code,
                            ref_name,
                            s.crew_on_ship,
                            r.flag,
                            r.ship_reg_no,
                            s.OPERATE_TIME
                        from (select ship_reg_no,
                                      ref_code,
                                      ref_name,
                                     '1' flag
                          from  bds_base_data.COMP_SHIP_REF_NEW WHERE comp_name = #{companyName} and is_delete = '0'
                         ) r
                        left join sub_biz_data.ship_dynamics_data s
                        
                          on r.ship_reg_no = s.ship_reg_no)  t )where rn=1 and ref_name is not null

        """
     crewList= db.base_data.camel().selectOne(crewsql);
  
var back={
        
        "shipTotal":totalCount,
        "crewTotal":crewList.totalCount
       
}
return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: back
	});