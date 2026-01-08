{
  "properties" : { },
  "id" : "3c31d26f56544eac81d9c1a58eac3d23",
  "script" : null,
  "groupId" : "c32f4ba9bcd0426d8f54812d666acb18",
  "name" : "当前船舶待闸情况明细",
  "createTime" : null,
  "updateTime" : 1755509981631,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getSxShipListInfo",
  "method" : "GET",
  "parameters" : [ {
    "name" : "code",
    "value" : "bxkz",
    "description" : "bsjb:坝上近坝；bskz:坝上控制；bsdd：坝上调度；bshx:坝上核心；bjhx:坝间核心；bxhx:坝下核心；bxjb:坝下近坝；bxdd:坝下调度；bxkz:坝下控制",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "page",
    "value" : "1",
    "description" : "",
    "required" : false,
    "dataType" : "Integer",
    "type" : "",
    "defaultValue" : "1",
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
    "defaultValue" : "500",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"totalCount\": \"39\",\n        \"shipNameCn\": \"银瑞968\",\n        \"shipId\": \"CN20085694011\",\n        \"mmsi\": \"413828193\",\n        \"shipRegNo\": \"120420000078\",\n        \"compName\": \"重庆银瑞船务有限公司\",\n        \"shipApplyId\": \"1463751\",\n        \"rowno\": \"1\"\n    }, {\n        \"totalCount\": \"39\",\n        \"shipNameCn\": \"益丰805\",\n        \"shipId\": \"CN20226647593\",\n        \"mmsi\": \"413872162\",\n        \"shipRegNo\": \"120423000003\",\n        \"compName\": \"重庆市涪陵益丰船务有限责任公司\",\n        \"shipApplyId\": \"1463780\",\n        \"rowno\": \"2\"\n    }, {\n        \"totalCount\": \"39\",\n        \"shipNameCn\": \"宇轩和谐\",\n        \"shipId\": \"CN20227260747\",\n        \"mmsi\": \"413873063\",\n        \"shipRegNo\": \"121123000022\",\n        \"compName\": \"安庆市江宜航运有限公司\",\n        \"shipApplyId\": \"1463786\",\n        \"rowno\": \"3\"\n    }, {\n        \"totalCount\": \"39\",\n        \"shipNameCn\": \"国江999\",\n        \"shipId\": \"CN20091854334\",\n        \"mmsi\": \"413776061\",\n        \"shipRegNo\": \"250822000058\",\n        \"compName\": \"\",\n        \"shipApplyId\": \"1463790\",\n        \"rowno\": \"4\"\n    }, {\n        \"totalCount\": \"39\",\n        \"shipNameCn\": \"冠荣669\",\n        \"shipId\": \"CN20184807228\",\n        \"mmsi\": \"413837356\",\n        \"shipRegNo\": \"120119000017\",\n        \"compName\": \"重庆冠荣船务有限公司\",\n        \"shipApplyId\": \"1463796\",\n        \"rowno\": \"5\"\n    }, {\n        \"totalCount\": \"39\",\n        \"shipNameCn\": \"永盛698\",\n        \"shipId\": \"CN20109213649\",\n        \"mmsi\": \"413778943\",\n        \"shipRegNo\": \"120611000045\",\n        \"compName\": \"石首市永盛船务有限公司\",\n        \"shipApplyId\": \"1463799\",\n        \"rowno\": \"6\"\n    }, {\n        \"totalCount\": \"39\",\n        \"shipNameCn\": \"润海333\",\n        \"shipId\": \"CN20190675141\",\n        \"mmsi\": \"413838997\",\n        \"shipRegNo\": \"121324000006\",\n        \"compName\": \"\",\n        \"shipApplyId\": \"1463813\",\n        \"rowno\": \"7\"\n    }, {\n        \"totalCount\": \"39\",\n        \"shipNameCn\": \"圣通1003\",\n        \"shipId\": \"CN20235957721\",\n        \"mmsi\": \"413874451\",\n        \"shipRegNo\": \"120323000061\",\n        \"compName\": \"重庆市万州区圣发船务有限公司\",\n        \"shipApplyId\": \"1463815\",\n        \"rowno\": \"8\"\n    }, {\n        \"totalCount\": \"39\",\n        \"shipNameCn\": \"赣长江66号\",\n        \"shipId\": \"CN20117954142\",\n        \"mmsi\": \"413801362\",\n        \"shipRegNo\": \"350411000028\",\n        \"compName\": \"抚州市长江实业集团有限公司\",\n        \"shipApplyId\": \"1463823\",\n        \"rowno\": \"9\"\n    }, {\n        \"totalCount\": \"39\",\n        \"shipNameCn\": \"怀宝2101\",\n        \"shipId\": \"CN20218443261\",\n        \"mmsi\": \"413868265\",\n        \"shipRegNo\": \"120122000024\",\n        \"compName\": \"重庆怀宝物流有限公司\",\n        \"shipApplyId\": \"1463828\",\n        \"rowno\": \"10\"\n    }]\n}",
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
          "name" : "totalCount",
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
        }, {
          "name" : "shipNameCn",
          "value" : "银瑞968",
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
          "name" : "shipId",
          "value" : "CN20085694011",
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
          "value" : "413828193",
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
          "name" : "shipRegNo",
          "value" : "120420000078",
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
          "name" : "compName",
          "value" : "重庆银瑞船务有限公司",
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
          "name" : "shipApplyId",
          "value" : "1463751",
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
          "name" : "rowno",
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
        } ]
      } ]
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import log;
import response;

var bsjbSql = """
select t4.* from 
(select t3.*,ROWNUM rowno from (
select count(t1.SHIP_APPLY_ID) over() total_count,t1.ship_name_cn, t1.ship_id, t1.mmsi, t1.ship_reg_no, t2.comp_name,t1.SHIP_APPLY_ID
  from (select a.ship_name_cn, b.ship_id, a.mmsi, b.ship_reg_no,a.APPLY_TIME,a.SHIP_APPLY_ID
          from (select CASE
                         when ship_name like '%(LNG)%' then
                          replace(ship_name, '(LNG)', '')
                         when ship_name like '%[新]%' then
                          replace(ship_name, '[新]', '')
                         else
                          ship_name
                       end as ship_name_cn,
                       shipidentification ship_id,
                       mmsi,
                       APPLY_TIME,
                       SHIP_APPLY_ID
                  from CHANGHANG_AREASHIP
                 where plan_state = '0'
                   and currentarea is not null
                   and currentarea='12') a
          left join (select ship_name_cn, ship_reg_no, ship_id
                      from bds_base_data.sc_ship_basic_data t
                     where t.status_flag = '1'
                       and delete_flag = '0'
                       and ship_id is not null
                       ) b
            on a.ship_name_cn = b.ship_name_cn order by a.SHIP_APPLY_ID
        ) t1
  left join (select c.*
               from (select t.*,
                            row_number() over(partition by t.ship_reg_no order by t.update_time desc) as rn
                       from bds_base_data.COMP_SHIP_REF_NEW t
                      where t.ref_name = '经营人') c
              where c.rn = 1) t2
    on t1.ship_reg_no = t2.ship_reg_no order by t1.SHIP_APPLY_ID)t3 
    where rownum<=(#{page}*#{size})) t4
    where t4.rowno >((#{page}-1)* #{size}) 
    order by SHIP_APPLY_ID
"""
var bskzSql = """
select t4.* from 
(select t3.*,ROWNUM rowno from (
select count(t1.SHIP_APPLY_ID) over() total_count,t1.ship_name_cn, t1.ship_id, t1.mmsi, t1.ship_reg_no, t2.comp_name,t1.SHIP_APPLY_ID
  from (select a.ship_name_cn, b.ship_id, a.mmsi, b.ship_reg_no,a.APPLY_TIME,a.SHIP_APPLY_ID
          from (select CASE
                         when ship_name like '%(LNG)%' then
                          replace(ship_name, '(LNG)', '')
                         when ship_name like '%[新]%' then
                          replace(ship_name, '[新]', '')
                         else
                          ship_name
                       end as ship_name_cn,
                       shipidentification ship_id,
                       mmsi,
                       APPLY_TIME,
                       SHIP_APPLY_ID
                  from CHANGHANG_AREASHIP
                 where plan_state = '0'
                   and currentarea is not null
                   and currentarea='13') a
          left join (select ship_name_cn, ship_reg_no, ship_id
                      from bds_base_data.sc_ship_basic_data t
                     where t.status_flag = '1'
                       and delete_flag = '0'
                       and ship_id is not null
                       ) b
            on a.ship_name_cn = b.ship_name_cn order by a.SHIP_APPLY_ID
        ) t1
  left join (select c.*
               from (select t.*,
                            row_number() over(partition by t.ship_reg_no order by t.update_time desc) as rn
                       from bds_base_data.COMP_SHIP_REF_NEW t
                      where t.ref_name = '经营人') c
              where c.rn = 1) t2
    on t1.ship_reg_no = t2.ship_reg_no order by t1.SHIP_APPLY_ID)t3 
    where rownum<=(#{page}*#{size})) t4
    where t4.rowno >((#{page}-1)* #{size}) 
    order by SHIP_APPLY_ID
"""
var bsddSql = """
select t4.* from 
(select t3.*,ROWNUM rowno from (
select count(t1.SHIP_APPLY_ID) over() total_count,t1.ship_name_cn, t1.ship_id, t1.mmsi, t1.ship_reg_no, t2.comp_name,t1.SHIP_APPLY_ID
  from (select a.ship_name_cn, b.ship_id, a.mmsi, b.ship_reg_no,a.APPLY_TIME,a.SHIP_APPLY_ID
          from (select CASE
                         when ship_name like '%(LNG)%' then
                          replace(ship_name, '(LNG)', '')
                         when ship_name like '%[新]%' then
                          replace(ship_name, '[新]', '')
                         else
                          ship_name
                       end as ship_name_cn,
                       shipidentification ship_id,
                       mmsi,
                       APPLY_TIME,
                       SHIP_APPLY_ID
                  from CHANGHANG_AREASHIP
                 where plan_state = '0'
                   and currentarea is not null
                   and currentarea='14') a
          left join (select ship_name_cn, ship_reg_no, ship_id
                      from bds_base_data.sc_ship_basic_data t
                     where t.status_flag = '1'
                       and delete_flag = '0'
                       and ship_id is not null
                       ) b
            on a.ship_name_cn = b.ship_name_cn order by a.SHIP_APPLY_ID
        ) t1
  left join (select c.*
               from (select t.*,
                            row_number() over(partition by t.ship_reg_no order by t.update_time desc) as rn
                       from bds_base_data.COMP_SHIP_REF_NEW t
                      where t.ref_name = '经营人') c
              where c.rn = 1) t2
    on t1.ship_reg_no = t2.ship_reg_no order by t1.SHIP_APPLY_ID)t3 
    where rownum<=(#{page}*#{size})) t4
    where t4.rowno >((#{page}-1)* #{size}) 
    order by SHIP_APPLY_ID
"""
var bxhxSql = """
select t4.* from 
(select t3.*,ROWNUM rowno from (
select count(t1.SHIP_APPLY_ID) over() total_count,t1.ship_name_cn, t1.ship_id, t1.mmsi, t1.ship_reg_no, t2.comp_name,t1.SHIP_APPLY_ID
  from (select a.ship_name_cn, b.ship_id, a.mmsi, b.ship_reg_no,a.APPLY_TIME,a.SHIP_APPLY_ID
          from (select CASE
                         when ship_name like '%(LNG)%' then
                          replace(ship_name, '(LNG)', '')
                         when ship_name like '%[新]%' then
                          replace(ship_name, '[新]', '')
                         else
                          ship_name
                       end as ship_name_cn,
                       shipidentification ship_id,
                       mmsi,
                       APPLY_TIME,
                       SHIP_APPLY_ID
                  from CHANGHANG_AREASHIP
                 where plan_state = '0'
                   and currentarea is not null
                   and currentarea='31') a
          left join (select ship_name_cn, ship_reg_no, ship_id
                      from bds_base_data.sc_ship_basic_data t
                     where t.status_flag = '1'
                       and delete_flag = '0'
                       and ship_id is not null
                       ) b
            on a.ship_name_cn = b.ship_name_cn order by a.SHIP_APPLY_ID
        ) t1
  left join (select c.*
               from (select t.*,
                            row_number() over(partition by t.ship_reg_no order by t.update_time desc) as rn
                       from bds_base_data.COMP_SHIP_REF_NEW t
                      where t.ref_name = '经营人') c
              where c.rn = 1) t2
    on t1.ship_reg_no = t2.ship_reg_no order by t1.SHIP_APPLY_ID)t3 
    where rownum<=(#{page}*#{size})) t4
    where t4.rowno >((#{page}-1)* #{size}) 
    order by SHIP_APPLY_ID
"""

var bxjbSql = """
select t4.* from 
(select t3.*,ROWNUM rowno from (
select count(t1.SHIP_APPLY_ID) over() total_count,t1.ship_name_cn, t1.ship_id, t1.mmsi, t1.ship_reg_no, t2.comp_name,t1.SHIP_APPLY_ID
  from (select a.ship_name_cn, b.ship_id, a.mmsi, b.ship_reg_no,a.APPLY_TIME,a.SHIP_APPLY_ID
          from (select CASE
                         when ship_name like '%(LNG)%' then
                          replace(ship_name, '(LNG)', '')
                         when ship_name like '%[新]%' then
                          replace(ship_name, '[新]', '')
                         else
                          ship_name
                       end as ship_name_cn,
                       shipidentification ship_id,
                       mmsi,
                       APPLY_TIME,
                       SHIP_APPLY_ID
                  from CHANGHANG_AREASHIP
                 where plan_state = '0'
                   and currentarea is not null
                   and currentarea='32') a
          left join (select ship_name_cn, ship_reg_no, ship_id
                      from bds_base_data.sc_ship_basic_data t
                     where t.status_flag = '1'
                       and delete_flag = '0'
                       and ship_id is not null
                       ) b
            on a.ship_name_cn = b.ship_name_cn order by a.SHIP_APPLY_ID
        ) t1
  left join (select c.*
               from (select t.*,
                            row_number() over(partition by t.ship_reg_no order by t.update_time desc) as rn
                       from bds_base_data.COMP_SHIP_REF_NEW t
                      where t.ref_name = '经营人') c
              where c.rn = 1) t2
    on t1.ship_reg_no = t2.ship_reg_no order by t1.SHIP_APPLY_ID)t3 
    where rownum<=(#{page}*#{size})) t4
    where t4.rowno >((#{page}-1)* #{size}) 
    order by SHIP_APPLY_ID
"""

var bxkzSql = """
select t4.* from 
(select t3.*,ROWNUM rowno from (
select count(t1.SHIP_APPLY_ID) over() total_count,t1.ship_name_cn, t1.ship_id, t1.mmsi, t1.ship_reg_no, t2.comp_name,t1.SHIP_APPLY_ID
  from (select a.ship_name_cn, b.ship_id, a.mmsi, b.ship_reg_no,a.APPLY_TIME,a.SHIP_APPLY_ID
          from (select CASE
                         when ship_name like '%(LNG)%' then
                          replace(ship_name, '(LNG)', '')
                         when ship_name like '%[新]%' then
                          replace(ship_name, '[新]', '')
                         else
                          ship_name
                       end as ship_name_cn,
                       shipidentification ship_id,
                       mmsi,
                       APPLY_TIME,
                       SHIP_APPLY_ID
                  from CHANGHANG_AREASHIP
                 where plan_state = '0'
                   and currentarea is not null
                   and currentarea='33') a
          left join (select ship_name_cn, ship_reg_no, ship_id
                      from bds_base_data.sc_ship_basic_data t
                     where t.status_flag = '1'
                       and delete_flag = '0'
                       and ship_id is not null
                       ) b
            on a.ship_name_cn = b.ship_name_cn order by a.SHIP_APPLY_ID
        ) t1
  left join (select c.*
               from (select t.*,
                            row_number() over(partition by t.ship_reg_no order by t.update_time desc) as rn
                       from bds_base_data.COMP_SHIP_REF_NEW t
                      where t.ref_name = '经营人') c
              where c.rn = 1) t2
    on t1.ship_reg_no = t2.ship_reg_no order by t1.SHIP_APPLY_ID)t3 
    where rownum<=(#{page}*#{size})) t4
    where t4.rowno >((#{page}-1)* #{size}) 
    order by SHIP_APPLY_ID
"""


var bxddSql = """
select t4.* from 
(select t3.*,ROWNUM rowno from (
select count(t1.SHIP_APPLY_ID) over() total_count,t1.ship_name_cn, t1.ship_id, t1.mmsi, t1.ship_reg_no, t2.comp_name,t1.SHIP_APPLY_ID
  from (select a.ship_name_cn, b.ship_id, a.mmsi, b.ship_reg_no,a.APPLY_TIME,a.SHIP_APPLY_ID
          from (select CASE
                         when ship_name like '%(LNG)%' then
                          replace(ship_name, '(LNG)', '')
                         when ship_name like '%[新]%' then
                          replace(ship_name, '[新]', '')
                         else
                          ship_name
                       end as ship_name_cn,
                       shipidentification ship_id,
                       mmsi,
                       APPLY_TIME,
                       SHIP_APPLY_ID
                  from CHANGHANG_AREASHIP
                 where plan_state = '0'
                   and currentarea is not null
                   and currentarea='34') a
          left join (select ship_name_cn, ship_reg_no, ship_id
                      from bds_base_data.sc_ship_basic_data t
                     where t.status_flag = '1'
                       and delete_flag = '0'
                       and ship_id is not null
                       ) b
            on a.ship_name_cn = b.ship_name_cn order by a.SHIP_APPLY_ID
        ) t1
  left join (select c.*
               from (select t.*,
                            row_number() over(partition by t.ship_reg_no order by t.update_time desc) as rn
                       from bds_base_data.COMP_SHIP_REF_NEW t
                      where t.ref_name = '经营人') c
              where c.rn = 1) t2
    on t1.ship_reg_no = t2.ship_reg_no order by t1.SHIP_APPLY_ID)t3 
    where rownum<=(#{page}*#{size})) t4
    where t4.rowno >((#{page}-1)* #{size}) 
    order by SHIP_APPLY_ID
"""


var bjhxSql = """
select t4.* from 
(select t3.*,ROWNUM rowno from (
select count(t1.SHIP_APPLY_ID) over() total_count,t1.ship_name_cn, t1.ship_id, t1.mmsi, t1.ship_reg_no, t2.comp_name,t1.SHIP_APPLY_ID
  from (select a.ship_name_cn, b.ship_id, a.mmsi, b.ship_reg_no,a.APPLY_TIME,a.SHIP_APPLY_ID
          from (select CASE
                         when ship_name like '%(LNG)%' then
                          replace(ship_name, '(LNG)', '')
                         when ship_name like '%[新]%' then
                          replace(ship_name, '[新]', '')
                         else
                          ship_name
                       end as ship_name_cn,
                       shipidentification ship_id,
                       mmsi,
                       APPLY_TIME,
                       SHIP_APPLY_ID
                  from CHANGHANG_AREASHIP
                 where plan_state = '0'
                   and currentarea is not null
                   and currentarea='21') a
          left join (select ship_name_cn, ship_reg_no, ship_id
                      from bds_base_data.sc_ship_basic_data t
                     where t.status_flag = '1'
                       and delete_flag = '0'
                       and ship_id is not null
                       ) b
            on a.ship_name_cn = b.ship_name_cn order by a.SHIP_APPLY_ID
        ) t1
  left join (select c.*
               from (select t.*,
                            row_number() over(partition by t.ship_reg_no order by t.update_time desc) as rn
                       from bds_base_data.COMP_SHIP_REF_NEW t
                      where t.ref_name = '经营人') c
              where c.rn = 1) t2
    on t1.ship_reg_no = t2.ship_reg_no order by t1.SHIP_APPLY_ID)t3 
    where rownum<=(#{page}*#{size})) t4
    where t4.rowno >((#{page}-1)* #{size}) 
    order by SHIP_APPLY_ID
"""

var bshxSql = """
select t4.* from 
(select t3.*,ROWNUM rowno from (
select count(t1.SHIP_APPLY_ID) over() total_count,t1.ship_name_cn, t1.ship_id, t1.mmsi, t1.ship_reg_no, t2.comp_name,t1.SHIP_APPLY_ID
  from (select a.ship_name_cn, b.ship_id, a.mmsi, b.ship_reg_no,a.APPLY_TIME,a.SHIP_APPLY_ID
          from (select CASE
                         when ship_name like '%(LNG)%' then
                          replace(ship_name, '(LNG)', '')
                         when ship_name like '%[新]%' then
                          replace(ship_name, '[新]', '')
                         else
                          ship_name
                       end as ship_name_cn,
                       shipidentification ship_id,
                       mmsi,
                       APPLY_TIME,
                       SHIP_APPLY_ID
                  from CHANGHANG_AREASHIP
                 where plan_state = '0'
                   and currentarea is not null
                   and currentarea='11') a
          left join (select ship_name_cn, ship_reg_no, ship_id
                      from bds_base_data.sc_ship_basic_data t
                     where t.status_flag = '1'
                       and delete_flag = '0'
                       and ship_id is not null
                       ) b
            on a.ship_name_cn = b.ship_name_cn order by a.SHIP_APPLY_ID
        ) t1
  left join (select c.*
               from (select t.*,
                            row_number() over(partition by t.ship_reg_no order by t.update_time desc) as rn
                       from bds_base_data.COMP_SHIP_REF_NEW t
                      where t.ref_name = '经营人') c
              where c.rn = 1) t2
    on t1.ship_reg_no = t2.ship_reg_no order by t1.SHIP_APPLY_ID)t3 
    where rownum<=(#{page}*#{size})) t4
    where t4.rowno >((#{page}-1)* #{size}) 
    order by SHIP_APPLY_ID
"""
var list=[];
if (code=="bsjb"){
var list=db.ods_data.camel().select(bsjbSql);
        return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            data: list           
      });
}else if(code=="bskz"){
  var list=db.ods_data.camel().select(bskzSql);
          return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            data: list           
      });
}else if(code=="bsdd"){
    var list=db.ods_data.camel().select(bsddSql);
            return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            data: list           
      });
}else if(code=="bxhx"){
var list=db.ods_data.camel().select(bxhxSql);
          return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            data: list           
      });
}else if(code=="bxjb"){
var list=db.ods_data.camel().select(bxjbSql);
          return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            data: list           
      });
}else if(code=="bxkz"){
var list=db.ods_data.camel().select(bxkzSql);
          return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            data: list           
      });
}else if(code=="bxdd"){
var list=db.ods_data.camel().select(bxddSql);
          return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            data: list           
      });
}else if(code=="bjhx"){
  var list=db.ods_data.camel().select(bjhxSql);
            return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            data: list           
      });
}else if(code=="bshx"){
  var list=db.ods_data.camel().select(bshxSql);
          return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            data: list           
      });
}else{
    return response.json({
    resultCode: 200,
    resultMsg: "请输入正确请求参数【code】",
    data: []
    });
}
