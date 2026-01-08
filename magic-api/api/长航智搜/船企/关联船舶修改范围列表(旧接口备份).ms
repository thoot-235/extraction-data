{
  "properties" : { },
  "id" : "copy1721630086877d53850",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "关联船舶修改范围列表(旧接口备份)",
  "createTime" : 1721629989500,
  "updateTime" : null,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : null,
  "path" : "/getRefShipsList_bak",
  "method" : "GET",
  "parameters" : [ {
    "name" : "companyName",
    "value" : "南通友好海运有限公司",
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
    "name" : "shipId",
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
    "name" : "mmsi",
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
    "name" : "shipName",
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
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"list\": [{\n            \"ROWNO\": \"1\",\n            \"RN\": \"1\",\n            \"data_source\": \"船舶登记\",\n            \"ref_code\": \"2\",\n            \"ref_name\": \"船舶经营人\",\n            \"ship_reg_no\": \"060307000012\",\n            \"ship_id\": \"CN20035163218\",\n            \"ship_imo\": \"\",\n            \"ship_no\": \"A070303000557\",\n            \"mmsi\": \"\",\n            \"status_flag\": \"1\",\n            \"ship_name_cn\": \"友嘉\",\n            \"ship_type_code\": \"0207\",\n            \"regport_code\": \"0603\",\n            \"ship_built_date\": \"2003-11-19\",\n            \"SAILINGAREA_CODE\": \"14\",\n            \"CREATE_TIME\": \"2017-01-06 14:46:58\",\n            \"FLAG\": \"1\",\n            \"TOTAL_COUNT\": \"6\",\n            \"shipTypeCn\": \"\",\n            \"regportCn\": \"\",\n            \"sailingareaCn\": \"\",\n            \"remouldStatus\": \"已完成设计\"\n        }, {\n            \"ROWNO\": \"2\",\n            \"RN\": \"1\",\n            \"data_source\": \"船舶登记\",\n            \"ref_code\": \"2\",\n            \"ref_name\": \"船舶经营人\",\n            \"ship_reg_no\": \"060305000023\",\n            \"ship_id\": \"CN20041745628\",\n            \"ship_imo\": \"\",\n            \"ship_no\": \"A060305000014\",\n            \"mmsi\": \"\",\n            \"status_flag\": \"1\",\n            \"ship_name_cn\": \"友诚\",\n            \"ship_type_code\": \"0207\",\n            \"regport_code\": \"0603\",\n            \"ship_built_date\": \"2005-08-18\",\n            \"SAILINGAREA_CODE\": \"14\",\n            \"CREATE_TIME\": \"2017-01-06 14:50:26\",\n            \"FLAG\": \"1\",\n            \"TOTAL_COUNT\": \"6\",\n            \"shipTypeCn\": \"\",\n            \"regportCn\": \"\",\n            \"sailingareaCn\": \"\",\n            \"remouldStatus\": \"已完成设计\"\n        }, {\n            \"ROWNO\": \"3\",\n            \"RN\": \"1\",\n            \"data_source\": \"船舶登记\",\n            \"ref_code\": \"2\",\n            \"ref_name\": \"船舶经营人\",\n            \"ship_reg_no\": \"060318000076\",\n            \"ship_id\": \"CN20049244483\",\n            \"ship_imo\": \"\",\n            \"ship_no\": \"A060305000010\",\n            \"mmsi\": \"412354790\",\n            \"status_flag\": \"3\",\n            \"ship_name_cn\": \"向晖10\",\n            \"ship_type_code\": \"0201\",\n            \"regport_code\": \"0603\",\n            \"ship_built_date\": \"2005-07-04\",\n            \"SAILINGAREA_CODE\": \"14\",\n            \"CREATE_TIME\": \"2018-11-15 10:54:07\",\n            \"FLAG\": \"1\",\n            \"TOTAL_COUNT\": \"6\",\n            \"shipTypeCn\": \"\",\n            \"regportCn\": \"\",\n            \"sailingareaCn\": \"\",\n            \"remouldStatus\": \"已完成设计\"\n        }, {\n            \"ROWNO\": \"4\",\n            \"RN\": \"1\",\n            \"data_source\": \"船舶登记\",\n            \"ref_code\": \"2\",\n            \"ref_name\": \"船舶经营人\",\n            \"ship_reg_no\": \"060308000008\",\n            \"ship_id\": \"CN20073572002\",\n            \"ship_imo\": \"\",\n            \"ship_no\": \"A060308000008\",\n            \"mmsi\": \"\",\n            \"status_flag\": \"1\",\n            \"ship_name_cn\": \"友信\",\n            \"ship_type_code\": \"0203\",\n            \"regport_code\": \"0603\",\n            \"ship_built_date\": \"2008-05-18\",\n            \"SAILINGAREA_CODE\": \"14\",\n            \"CREATE_TIME\": \"2016-12-16 16:24:50\",\n            \"FLAG\": \"1\",\n            \"TOTAL_COUNT\": \"6\",\n            \"shipTypeCn\": \"\",\n            \"regportCn\": \"\",\n            \"sailingareaCn\": \"\",\n            \"remouldStatus\": \"已完成设计\"\n        }, {\n            \"ROWNO\": \"5\",\n            \"RN\": \"1\",\n            \"data_source\": \"船舶登记\",\n            \"ref_code\": \"2\",\n            \"ref_name\": \"船舶经营人\",\n            \"ship_reg_no\": \"060309000004\",\n            \"ship_id\": \"CN20075153435\",\n            \"ship_imo\": \"\",\n            \"ship_no\": \"A060309000004\",\n            \"mmsi\": \"\",\n            \"status_flag\": \"1\",\n            \"ship_name_cn\": \"友威\",\n            \"ship_type_code\": \"0201\",\n            \"regport_code\": \"0603\",\n            \"ship_built_date\": \"2009-05-27\",\n            \"SAILINGAREA_CODE\": \"14\",\n            \"CREATE_TIME\": \"2017-01-06 14:44:27\",\n            \"FLAG\": \"1\",\n            \"TOTAL_COUNT\": \"6\",\n            \"shipTypeCn\": \"\",\n            \"regportCn\": \"\",\n            \"sailingareaCn\": \"\",\n            \"remouldStatus\": \"已完成设计\"\n        }, {\n            \"ROWNO\": \"6\",\n            \"RN\": \"1\",\n            \"data_source\": \"船舶登记\",\n            \"ref_code\": \"2\",\n            \"ref_name\": \"船舶经营人\",\n            \"ship_reg_no\": \"060312000018\",\n            \"ship_id\": \"CN20115649072\",\n            \"ship_imo\": \"\",\n            \"ship_no\": \"A060312000018\",\n            \"mmsi\": \"412362410\",\n            \"status_flag\": \"1\",\n            \"ship_name_cn\": \"友和\",\n            \"ship_type_code\": \"0207\",\n            \"regport_code\": \"0603\",\n            \"ship_built_date\": \"2012-07-13\",\n            \"SAILINGAREA_CODE\": \"14\",\n            \"CREATE_TIME\": \"2016-09-02 15:00:07\",\n            \"FLAG\": \"1\",\n            \"TOTAL_COUNT\": \"6\",\n            \"shipTypeCn\": \"\",\n            \"regportCn\": \"\",\n            \"sailingareaCn\": \"\",\n            \"remouldStatus\": \"已完成设计\"\n        }],\n        \"total\": \"\"\n    }\n}",
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
      "name" : "resultCode",
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
      "name" : "resultMsg",
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
      "name" : "result",
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
        "name" : "list",
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
            "name" : "ROWNO",
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
            "name" : "RN",
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
            "name" : "data_source",
            "value" : "船舶登记",
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
            "name" : "ref_code",
            "value" : "2",
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
            "name" : "ref_name",
            "value" : "船舶经营人",
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
            "value" : "060307000012",
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
            "value" : "CN20035163218",
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
            "name" : "ship_no",
            "value" : "A070303000557",
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
            "name" : "mmsi",
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
            "name" : "status_flag",
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
            "name" : "ship_name_cn",
            "value" : "友嘉",
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
            "value" : "0207",
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
            "name" : "regport_code",
            "value" : "0603",
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
            "name" : "ship_built_date",
            "value" : "2003-11-19",
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
            "name" : "SAILINGAREA_CODE",
            "value" : "14",
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
            "name" : "CREATE_TIME",
            "value" : "2017-01-06 14:46:58",
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
            "name" : "FLAG",
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
            "name" : "TOTAL_COUNT",
            "value" : "6",
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
            "name" : "shipTypeCn",
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
            "name" : "regportCn",
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
            "name" : "sailingareaCn",
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
            "name" : "remouldStatus",
            "value" : "已完成设计",
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
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import log;
import response;
companyName=(companyName==null?"":companyName).replace("<em>","").replace("</em>","");
var pageNum = page;
pageNum= pageNum!=null&pageNum!=''? pageNum :1

var pageSize = size;
pageSize= pageSize!=null&pageSize!=''? pageSize :10

var pageStart = """ select *
        from (select rownum rowno, b.*
              from (""";
var pageEnd = """ ) b
        where rownum <= ( #{pageNum} * #{pageSize})) a
        where a.rowno > ( ( #{pageNum} - 1 ) * #{pageSize} )""";


var totalCount=0;

var sql = """
select m.*, count(*) over() total_count
  from (select row_number() over(partition by "ship_id" order by t.create_time,t.flag desc) rn,
               t.*
          from (select '船舶登记' as "data_source",
                       r.ref_code as "ref_code" ,
                       ref_name as "ref_name",
                       s.ship_reg_no as "ship_reg_no",
                       s.ship_id as "ship_id",
                       s.ship_imo as "ship_imo",
                       'A' || s.ship_firstreg_no as "ship_no",
                       s.mmsi as "mmsi",
                       s.status_flag as "status_flag",
                       s.ship_name_cn as "ship_name_cn",
                       s.ship_type_code as "ship_type_code",
                       s.regport_code as "regport_code",
                       case
                         when to_char(s.ship_built_date, 'yyyy-mm-dd') =
                              '1900-01-01' then
                          '--'
                         else
                          to_char(s.ship_built_date, 'yyyy-mm-dd')
                       end "ship_built_date",
                       s.sailingarea_code,
                       s.create_time,
                       flag
                  from (select ship_reg_no,
                               listagg(ref_code, ',') within group(order by ref_code) as ref_code,
                               listagg(ref_name, ',') within group(order by ref_code) as ref_name,
                               1 as flag
                          from (
                                        select distinct ship_reg_no,
                                                        '2' ref_code,
                                                        '船舶经营人' ref_name
                                          from bds_base_data.shp_cert_national
                                         where status_flag = '1'
                                           and delete_flag = '0'
                                           and ship_operator_cn =
                                               #{companyName}
                                       
                                       
                                        union 
                                        --岸电系统
                                        select ship_reg_no,
                                               '2' ref_code,
                                               '船舶经营人' ref_name
                                          from shore_power_ship_info a
                                          left join shore_power_company_info b
                                            on a.company_uscc = b.company_uscc
                                         where b.sh_status = 2
                                           and b.del_flag = 0
                                           and a.del_flag = 0
                                           and b.company_name = #{companyName}
                                        union 
                                        --运政系统
                                        select t1.ship_reg_no,
                                               '2' ref_code,
                                               '船舶经营人' ref_name
                                          from bds_base_data.trans_mgt_company_ship t,
                                               bds_base_data.shp_basic_data         t1
                                         where t1.delete_flag = '0'
                                           and t1.status_flag = '1'
                                           and t.ship_id = t1.ship_id
                                           and company_name = #{companyName})
                         group by ship_reg_no,1
                         union all

                         (select ship_reg_no,
                                ref_code,
                                ref_name,
                               2 as flag from  bds_base_data.company_ref_ship where
                                  company_name =#{companyName}) ) r
                  inner join bds_base_data.shp_basic_data s
                    on r.ship_reg_no = s.ship_reg_no
                    where 1=1 and s.status_flag='1'
                     <if test="shipId != null and shipId != ''">
                          and s.ship_id=#{shipId}
                      </if>
                      <if test="mmsi != null and mmsi != ''">
                          and s.mmsi=#{mmsi}
                      </if>
                      
                      <if test="shipName != null and shipName != ''">
                          and  instr(s.ship_name_cn , #{shipName})>0
                      </if>
                      
                    
                    ) t) m
 where rn = 1 and "ref_name" is not null and instr("ref_name",'船舶经营人')>0
  """
  var shipList = [];
       shipList= db.base_data.select(pageStart + sql + pageEnd);
 
  for(ship in shipList){
      ship.put("shipTypeCn",TagUtils.getTagNameByCode("shipClassTag",ship.get("shipTypeCode")));//船舶种类
      ship.put("regportCn",TagUtils.getTagNameByCode("shipRegportTag",ship.get("regportCode")));//船籍港
      ship.put("sailingareaCn",TagUtils.getTagNameByCode("shipRouteAreaTag",ship.get("sailingareaCode")));//航区
      totalCount = ship.get("totalCount");
      //通过shipId查询岸电改造状态
      var shipId=ship.get("shipId");
      var tb_sql = """
         select tb_jd,
                tb_jz
                 from (
              select b.tb_jd  ,b.tb_jz  from bds_base_data.shore_power_retrofit_report a left join 
              bds_base_data.shore_power_retrofit_log b on a.id=b.reportid
              where 1=1 ?{shipId,and a.ship_id=#{shipId}}
              order by a.retrofit_stage_code,a.retrofit_progress_code desc
              ) where rownum=1
      """
      var tb_info = db.base_data.camel().select(tb_sql);
      ship.put("remouldStatus",tb_info.size()>0?tb_info[0].get("tbJz"):"");
  }

if(shipList==null){
  shipList=[];
}   
var back={
        "list":shipList,
        //"total":Integer.parseInt(totalCount::string) 
        "total":totalCount
}
return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: back
	});