{
  "properties" : { },
  "id" : "7448b04fad63410d8ca4f7450a407747",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "关联船舶分类统计",
  "createTime" : null,
  "updateTime" : 1721700081157,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getRefShipsByType",
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
  }, {
    "name" : "uscc",
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
  }, {
    "name" : "org_id",
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
  }, {
    "name" : "type",
    "value" : "1",
    "description" : "1是按船舶类型划分,2是按船舶吨位统计，3是按船龄统计",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"list\": [{\n            \"shipNum\": \"2\",\n            \"type\": \"干散货\",\n            \"totalCount\": \"2\",\n            \"radio\": \"100.00\"\n        }],\n        \"total\": \"2\"\n    }\n}",
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
      "defaultValue" : "",
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
      "defaultValue" : "",
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
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "list",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : null,
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
          "type" : null,
          "defaultValue" : null,
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ {
            "name" : "shipNum",
            "value" : "2",
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
            "name" : "type",
            "value" : "干散货",
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
            "name" : "totalCount",
            "value" : "2",
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
            "name" : "radio",
            "value" : "100.00",
            "description" : "",
            "required" : false,
            "dataType" : "String",
            "type" : null,
            "defaultValue" : "",
            "validateType" : "",
            "error" : "",
            "expression" : "",
            "children" : [ ]
          } ]
        } ]
      }, {
        "name" : "total",
        "value" : "2",
        "description" : "",
        "required" : false,
        "dataType" : "String",
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
import log;
import response;
import 'java.util.stream.Collectors' as Collectors;
import 'com.alibaba.fastjson.JSON' as JSON;
import 'com.alibaba.fastjson.JSONObject' as JSONObject;
companyName=(companyName==null?"":companyName).replace("<em>","").replace("</em>","");





var totalCount=0;

 var shipList = [];
 if(type==1){
   var sql = """
      select count(*) as ship_num,ship_type_name as type,total_count,to_char(round(count(*) / total_count, 4) * 100,
               'fm99990.00')  radio  from (
      select m.*,count(*) over() total_count
        from (select row_number() over(partition by ship_id order by t.flag ,t.create_time desc) rn,
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
                            substr(s.ship_type_code, 0, 2) as ship_type_code,
                            cc.parent_name  as ship_type_name,
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
                                      ref_code,
                                      ref_name,
                                      1 as flag
                                from  bds_base_data.COMP_SHIP_REF_NEW WHERE comp_name = #{companyName} and is_delete = '0'
                         ) r
                        inner join bds_base_data.shp_basic_data s
                        
                          on r.ship_reg_no = s.ship_reg_no
                          left join dict_data.D_CB_SHIP_TYPE cc  on s.ship_type_code =cc.code where s.status_flag='1') t) m
      where rn = 1 and ref_name is not null) group by ship_type_name ,total_count --order by ship_type_code  
        """
     shipList= db.base_data.camel().select(sql);
 }



if(type==2){//按吨位
   var sql = """
      select count(*) as ship_num,ship_type_name as type,total_count,to_char(round(count(*) / total_count, 4) * 100,
               'fm99990.00')  radio  from (
      select m.*,count(*) over() total_count
        from (select row_number() over(partition by ship_id order by t.flag , t.create_time desc) rn,
                    t.*
                from (select '船舶登记' as data_source,
                            r.ref_code,
                            r.flag,
                            ref_name,
                            s.ship_reg_no,
                            s.ship_id,
                            s.ship_imo,
                            'A' || s.ship_firstreg_no as ship_no,
                            s.mmsi,
                            s.status_flag,
                            s.ship_name_cn,
                            s.ship_type_code,
                            (CASE
                            WHEN SHIP_GROSSTON < 500 THEN
                              '<0.5kt'
                              WHEN SHIP_GROSSTON >= 500 AND SHIP_GROSSTON < 1000 THEN
                                          '[0.5-1)kt'
                                        WHEN SHIP_GROSSTON >= 1000 AND SHIP_GROSSTON < 3000 THEN
                                          '[1-3)kt'
                                        WHEN SHIP_GROSSTON >= 3000 AND SHIP_GROSSTON < 5000 THEN
                                          '[3-5)kt'
                                        WHEN SHIP_GROSSTON >= 5000 AND SHIP_GROSSTON < 10000 THEN
                                          '[5-10)kt'
                                        WHEN SHIP_GROSSTON >= 10000 THEN
                                          '>=10kt'
                                      END)  as ship_type_name,
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
                        from (select  ship_reg_no,
                                      ref_code,
                                      ref_name,
                                      1 as flag
                                  from  bds_base_data.COMP_SHIP_REF_NEW WHERE comp_name = #{companyName} and is_delete = '0'
                         ) r
                        inner join bds_base_data.shp_basic_data s
                        
                          on r.ship_reg_no = s.ship_reg_no
                          left join dict_data.D_CB_SHIP_TYPE cc  on s.ship_type_code =cc.code where s.status_flag='1') t) m
      where rn = 1  and  ref_name is not null  ) group by ship_type_name  ,total_count order by decode(type,'<0.5kt',1,'[0.5-1)kt',2,'[1-3)kt',3,'[3-5)kt',4,'[5-10)kt',5,'>=10kt',6)  
        """
     shipList= db.base_data.camel().select(sql);
 }

if(type==3){//按船龄统计
   var sql = """
      select count(*) as ship_num,ship_type_name as type,total_count,to_char(round(count(*) / total_count, 4) * 100,
               'fm99990.00')  radio  from (
      select m.*,count(*) over() total_count
        from (select row_number() over(partition by ship_id order by t.flag ,t.create_time desc) rn,
                    t.*
                from (select '船舶登记' as data_source,r.flag,
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
                            (case
                         when months_between(sysdate,s.SHIP_BUILT_DATE)/12 < 5 then
                          '<5年'
                         when months_between(sysdate,s.SHIP_BUILT_DATE)/12 >= 5 and months_between(sysdate,s.SHIP_BUILT_DATE)/12 < 10 then
                          '[5-10]年'
                         when months_between(sysdate,s.SHIP_BUILT_DATE)/12 >= 10 and months_between(sysdate,s.SHIP_BUILT_DATE)/12 < 15 then
                          '[10-15]年'
                          when months_between(sysdate,s.SHIP_BUILT_DATE)/12 >= 15 and months_between(sysdate,s.SHIP_BUILT_DATE)/12 < 20 then
                          '[15-20]年'
                         when months_between(sysdate,s.SHIP_BUILT_DATE)/12 >= 20 then
                          '>=20年'
                       end )  as ship_type_name,
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
                        from (select      ship_reg_no,
                                          listagg(ref_code, ',') within group(order by ref_code) as ref_code,
                                          listagg(ref_name, ',') within group(order by ref_code) as ref_name,
                                          1 as flag
                                  from  bds_base_data.COMP_SHIP_REF_NEW WHERE comp_name = #{companyName} and is_delete = '0'  group by ship_reg_no, 1
                         ) r
                        inner join bds_base_data.shp_basic_data s
                        
                          on r.ship_reg_no = s.ship_reg_no
                          left join dict_data.D_CB_SHIP_TYPE cc  on s.ship_type_code =cc.code where s.status_flag='1') t ) m
      where rn = 1 and  ref_name is not null ) group by ship_type_name  ,total_count order by decode(type,'<5年',1,'[5-10]年',2,'[10-15]年',3,'[15-20]年',4,'>=20年',5)  
        """
     shipList= db.base_data.camel().select(sql);
 }
 



var totalCount=0;      
for(item in shipList){
  totalCount = item.get("totalCount");
}

  
var back={
        "list":shipList,
        "total":totalCount
       
}
return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: back
	});