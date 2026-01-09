{
  "properties" : { },
  "id" : "09407d54687446768281d679e16a95b7",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "关联船舶修改范围列表",
  "createTime" : null,
  "updateTime" : 1721699955689,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getRefShipsList",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"list\": [{\n            \"ROWNO\": \"1\",\n            \"RN\": \"1\",\n            \"data_source\": \"船舶登记\",\n            \"ref_code\": \"2\",\n            \"ref_name\": \"经营人\",\n            \"ship_reg_no\": \"010011000179\",\n            \"ship_id\": \"CN20081329496\",\n            \"ship_imo\": \"9628635\",\n            \"ship_no\": \"A010011000179\",\n            \"mmsi\": \"413376570\",\n            \"status_flag\": \"1\",\n            \"ship_name_cn\": \"善治\",\n            \"ship_type_code\": \"0303\",\n            \"regport_code\": \"0100\",\n            \"ship_built_date\": \"2011-09-16\",\n            \"SAILINGAREA_CODE\": \"15\",\n            \"CREATE_TIME\": \"2015-03-23 10:44:23\",\n            \"FLAG\": \"1\",\n            \"TOTAL_COUNT\": \"4\",\n            \"shipTypeCn\": \"\",\n            \"regportCn\": \"\",\n            \"sailingareaCn\": \"\",\n            \"remouldStatus\": \"已完成设计\"\n        }, {\n            \"ROWNO\": \"2\",\n            \"RN\": \"1\",\n            \"data_source\": \"船舶登记\",\n            \"ref_code\": \"2\",\n            \"ref_name\": \"经营人\",\n            \"ship_reg_no\": \"010010000055\",\n            \"ship_id\": \"CN20081929311\",\n            \"ship_imo\": \"9474606\",\n            \"ship_no\": \"A010010000055\",\n            \"mmsi\": \"413375790\",\n            \"status_flag\": \"1\",\n            \"ship_name_cn\": \"善仁\",\n            \"ship_type_code\": \"0303\",\n            \"regport_code\": \"0100\",\n            \"ship_built_date\": \"2010-02-28\",\n            \"SAILINGAREA_CODE\": \"15\",\n            \"CREATE_TIME\": \"2015-10-22 13:44:31\",\n            \"FLAG\": \"1\",\n            \"TOTAL_COUNT\": \"4\",\n            \"shipTypeCn\": \"\",\n            \"regportCn\": \"\",\n            \"sailingareaCn\": \"\",\n            \"remouldStatus\": \"已完成设计\"\n        }, {\n            \"ROWNO\": \"3\",\n            \"RN\": \"1\",\n            \"data_source\": \"船舶登记\",\n            \"ref_code\": \"2\",\n            \"ref_name\": \"经营人\",\n            \"ship_reg_no\": \"010010000216\",\n            \"ship_id\": \"CN20085182530\",\n            \"ship_imo\": \"9474591\",\n            \"ship_no\": \"A010010000216\",\n            \"mmsi\": \"413375810\",\n            \"status_flag\": \"1\",\n            \"ship_name_cn\": \"善信\",\n            \"ship_type_code\": \"0303\",\n            \"regport_code\": \"0100\",\n            \"ship_built_date\": \"2010-09-02\",\n            \"SAILINGAREA_CODE\": \"15\",\n            \"CREATE_TIME\": \"2015-12-04 14:22:45\",\n            \"FLAG\": \"1\",\n            \"TOTAL_COUNT\": \"4\",\n            \"shipTypeCn\": \"\",\n            \"regportCn\": \"\",\n            \"sailingareaCn\": \"\",\n            \"remouldStatus\": \"已完成设计\"\n        }, {\n            \"ROWNO\": \"4\",\n            \"RN\": \"1\",\n            \"data_source\": \"船舶登记\",\n            \"ref_code\": \"2\",\n            \"ref_name\": \"经营人\",\n            \"ship_reg_no\": \"010012000006\",\n            \"ship_id\": \"CN20095567509\",\n            \"ship_imo\": \"9638898\",\n            \"ship_no\": \"A010012000006\",\n            \"mmsi\": \"413376840\",\n            \"status_flag\": \"1\",\n            \"ship_name_cn\": \"善能\",\n            \"ship_type_code\": \"0303\",\n            \"regport_code\": \"0100\",\n            \"ship_built_date\": \"2012-01-06\",\n            \"SAILINGAREA_CODE\": \"15\",\n            \"CREATE_TIME\": \"2015-03-23 10:41:24\",\n            \"FLAG\": \"1\",\n            \"TOTAL_COUNT\": \"4\",\n            \"shipTypeCn\": \"\",\n            \"regportCn\": \"\",\n            \"sailingareaCn\": \"\",\n            \"remouldStatus\": \"已完成设计\"\n        }],\n        \"total\": \"\"\n    }\n}",
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
            "name" : "ROWNO",
            "value" : "1",
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
            "name" : "RN",
            "value" : "1",
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
            "name" : "data_source",
            "value" : "船舶登记",
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
            "name" : "ref_code",
            "value" : "2",
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
            "name" : "ref_name",
            "value" : "经营人",
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
            "name" : "ship_reg_no",
            "value" : "010011000179",
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
            "name" : "ship_id",
            "value" : "CN20081329496",
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
            "name" : "ship_imo",
            "value" : "9628635",
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
            "name" : "ship_no",
            "value" : "A010011000179",
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
            "name" : "mmsi",
            "value" : "413376570",
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
            "name" : "status_flag",
            "value" : "1",
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
            "name" : "ship_name_cn",
            "value" : "善治",
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
            "name" : "ship_type_code",
            "value" : "0303",
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
            "name" : "regport_code",
            "value" : "0100",
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
            "name" : "ship_built_date",
            "value" : "2011-09-16",
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
            "name" : "SAILINGAREA_CODE",
            "value" : "15",
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
            "name" : "CREATE_TIME",
            "value" : "2015-03-23 10:44:23",
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
            "name" : "FLAG",
            "value" : "1",
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
            "name" : "TOTAL_COUNT",
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
            "name" : "shipTypeCn",
            "value" : "",
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
            "name" : "regportCn",
            "value" : "",
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
            "name" : "sailingareaCn",
            "value" : "",
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
            "name" : "remouldStatus",
            "value" : "已完成设计",
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
      }, {
        "name" : "total",
        "value" : "",
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
                               listagg(ref_name, ',') within group(order by ref_code) as ref_name, 1 as flag 
                        from  bds_base_data.COMP_SHIP_REF_NEW 
                        WHERE comp_name = #{companyName} and is_delete = '0' group by ship_reg_no, 1) r
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
 where rn = 1 and "ref_name" is not null and instr("ref_name",'经营人')>0
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