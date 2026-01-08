{
  "properties" : { },
  "id" : "3f4250c5237040a887f68be16957b2e4",
  "script" : null,
  "groupId" : "c32f4ba9bcd0426d8f54812d666acb18",
  "name" : "待闸船舶清单",
  "createTime" : null,
  "updateTime" : 1751338230948,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getSxAreaShipList",
  "method" : "GET",
  "parameters" : [ {
    "name" : "page",
    "value" : { },
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
    "value" : { },
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"list\": [{\n            \"totalCount\": \"501\",\n            \"shipNameCn\": \"宜昌石供3\",\n            \"shipId\": \"CN20097849704\",\n            \"mmsi\": \"413832951\",\n            \"shipRegNo\": \"120515000104\",\n            \"compName\": \"中国石化销售有限公司湖北水上油站管理分公司\",\n            \"shipApplyId\": \"1453032\",\n            \"rowno\": \"1\"\n        }, {\n            \"totalCount\": \"501\",\n            \"shipNameCn\": \"汇鑫888\",\n            \"shipId\": \"CN20069922008\",\n            \"mmsi\": \"413809501\",\n            \"shipRegNo\": \"120418000022\",\n            \"compName\": \"重庆航都船务中心\",\n            \"shipApplyId\": \"1453035\",\n            \"rowno\": \"2\"\n        }, {\n            \"totalCount\": \"501\",\n            \"shipNameCn\": \"江隆1606\",\n            \"shipId\": \"CN20249318010\",\n            \"mmsi\": \"413884337\",\n            \"shipRegNo\": \"120425000038\",\n            \"compName\": \"\",\n            \"shipApplyId\": \"1453086\",\n            \"rowno\": \"3\"\n        }, {\n            \"totalCount\": \"501\",\n            \"shipNameCn\": \"江宜飞越\",\n            \"shipId\": \"CN20152623011\",\n            \"mmsi\": \"413832076\",\n            \"shipRegNo\": \"121122000037\",\n            \"compName\": \"安庆市江宜航运有限公司\",\n            \"shipApplyId\": \"1453169\",\n            \"rowno\": \"4\"\n        }, {\n            \"totalCount\": \"501\",\n            \"shipNameCn\": \"重轮货5007\",\n            \"shipId\": \"CN20118908213\",\n            \"mmsi\": \"413811182\",\n            \"shipRegNo\": \"120111000091\",\n            \"compName\": \"重庆重轮航运有限公司\",\n            \"shipApplyId\": \"1453197\",\n            \"rowno\": \"5\"\n        }, {\n            \"totalCount\": \"501\",\n            \"shipNameCn\": \"快舟819\",\n            \"shipId\": \"CN20107262995\",\n            \"mmsi\": \"413839128\",\n            \"shipRegNo\": \"120325000038\",\n            \"compName\": \"荆州市顺昌船务有限公司\",\n            \"shipApplyId\": \"1453198\",\n            \"rowno\": \"6\"\n        }, {\n            \"totalCount\": \"501\",\n            \"shipNameCn\": \"贵杰818\",\n            \"shipId\": \"CN20115286264\",\n            \"mmsi\": \"413779378\",\n            \"shipRegNo\": \"120317000090\",\n            \"compName\": \"重庆市开州区兴航船务有限公司\",\n            \"shipApplyId\": \"1453211\",\n            \"rowno\": \"7\"\n        }, {\n            \"totalCount\": \"501\",\n            \"shipNameCn\": \"风顺29\",\n            \"shipId\": \"CN20101034783\",\n            \"mmsi\": \"413830063\",\n            \"shipRegNo\": \"391515000067\",\n            \"compName\": \"四川夹江风顺运业有限公司\",\n            \"shipApplyId\": \"1453218\",\n            \"rowno\": \"8\"\n        }, {\n            \"totalCount\": \"501\",\n            \"shipNameCn\": \"祥瑞永红\",\n            \"shipId\": \"CN20099068402\",\n            \"mmsi\": \"413801181\",\n            \"shipRegNo\": \"120322000040\",\n            \"compName\": \"开县渝宁航运有限责任公司\",\n            \"shipApplyId\": \"1453239\",\n            \"rowno\": \"9\"\n        }, {\n            \"totalCount\": \"501\",\n            \"shipNameCn\": \"金甲3118\",\n            \"shipId\": \"CN20119709587\",\n            \"mmsi\": \"413827047\",\n            \"shipRegNo\": \"120814000055\",\n            \"compName\": \"武汉金甲物流有限公司\",\n            \"shipApplyId\": \"1453241\",\n            \"rowno\": \"10\"\n        }],\n        \"total\": 501\n    }\n}",
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
            "name" : "totalCount",
            "value" : "501",
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
            "name" : "shipNameCn",
            "value" : "宜昌石供3",
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
            "value" : "CN20097849704",
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
            "value" : "413832951",
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
            "value" : "120515000104",
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
            "name" : "compName",
            "value" : "中国石化销售有限公司湖北水上油站管理分公司",
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
            "name" : "shipApplyId",
            "value" : "1453032",
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
            "name" : "rowno",
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
      }, {
        "name" : "total",
        "value" : "501",
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
import log;
import response;
/*
var sql  = """
select * from (
select t1.ship_name_cn, t1.ship_id, t1.mmsi, t1.ship_reg_no, t2.comp_name,t1.SHIP_APPLY_ID
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
                   and currentarea is not null) a
          left join (select ship_name_cn, ship_reg_no, ship_id
                      from bds_base_data.sc_ship_basic_data t
                     where t.status_flag = '1'
                       and delete_flag = '0') b
            on a.ship_name_cn = b.ship_name_cn order by a.SHIP_APPLY_ID
        ) t1
  left join (select c.*
               from (select t.*,
                            row_number() over(partition by t.ship_reg_no order by t.update_time desc) as rn
                       from bds_base_data.COMP_SHIP_REF_NEW t
                      where t.ref_name = '经营人') c
              where c.rn = 1) t2
    on t1.ship_reg_no = t2.ship_reg_no )
    order by SHIP_APPLY_ID
    

"""
*/
var sql = """
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
                   and currentarea is not null) a
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
//var list = db.ods_data.camel().page(sql,size,(page-1)*size);
var list=db.ods_data.camel().select(sql);
      
        var totalCount=0;
        for(item in list){
           
            totalCount = item.get("totalCount");
        }     
        var back={
                "list":list,
                "total":Integer.parseInt(totalCount::string) 
                
        }
        return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            data: back
            
      });