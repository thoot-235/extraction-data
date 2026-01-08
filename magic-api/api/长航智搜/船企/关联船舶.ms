{
  "properties" : { },
  "id" : "b3803afe299c4db6b55a3412610a9466",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "关联船舶",
  "createTime" : null,
  "updateTime" : 1757660825256,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getRefShips",
  "method" : "GET",
  "parameters" : [ {
    "name" : "companyName",
    "value" : "长航货运有限公司",
    "description" : "企业名称",
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
    "description" : "统一社会信用代码",
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
    "description" : "企业组织机构代码",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"list\": [{\n            \"rowno\": \"1\",\n            \"rn\": \"1\",\n            \"dataSource\": \"船舶登记\",\n            \"flag\": \"1\",\n            \"refCode\": \"1,1\",\n            \"refName\": \"所有人,所有人\",\n            \"shipRegNo\": \"120818000015\",\n            \"shipId\": \"CN19864697962\",\n            \"shipImo\": \"\",\n            \"shipNo\": \"A140100091\",\n            \"mmsi\": \"413816172\",\n            \"statusFlag\": \"1\",\n            \"shipNameCn\": \"长江02031\",\n            \"shipTypeCode\": \"0602\",\n            \"regportCode\": \"3303\",\n            \"shipInspectNo\": \"1987L0000160\",\n            \"shipBuiltDate\": \"1987-12-10\",\n            \"sailingareaCode\": \"16\",\n            \"createTime\": \"2018-03-28 15:11:21\",\n            \"totalCount\": \"88\",\n            \"shipTypeCn\": \"推轮\",\n            \"regportCn\": \"武汉\",\n            \"sailingareaCn\": \"内河AJ\",\n            \"remouldStatus\": \"\"\n        }, {\n            \"rowno\": \"2\",\n            \"rn\": \"1\",\n            \"dataSource\": \"船舶登记\",\n            \"flag\": \"1\",\n            \"refCode\": \"4,4\",\n            \"refName\": \"承租方,承租方\",\n            \"shipRegNo\": \"270717000221\",\n            \"shipId\": \"CN19868387543\",\n            \"shipImo\": \"\",\n            \"shipNo\": \"A140100090\",\n            \"mmsi\": \"413820134\",\n            \"statusFlag\": \"1\",\n            \"shipNameCn\": \"长凤2001\",\n            \"shipTypeCode\": \"0601\",\n            \"regportCode\": \"0626\",\n            \"shipInspectNo\": \"1987D0000153\",\n            \"shipBuiltDate\": \"1987-05-20\",\n            \"sailingareaCode\": \"16\",\n            \"createTime\": \"2017-05-12 12:37:59\",\n            \"totalCount\": \"88\",\n            \"shipTypeCn\": \"拖船\",\n            \"regportCn\": \"徐州\",\n            \"sailingareaCn\": \"内河AJ\",\n            \"remouldStatus\": \"\"\n        }, {\n            \"rowno\": \"3\",\n            \"rn\": \"1\",\n            \"dataSource\": \"船舶登记\",\n            \"flag\": \"1\",\n            \"refCode\": \"1,1,5,5\",\n            \"refName\": \"所有人,所有人,出租方,出租方\",\n            \"shipRegNo\": \"010023000110\",\n            \"shipId\": \"CN19967047301\",\n            \"shipImo\": \"9169304\",\n            \"shipNo\": \"A400100262\",\n            \"mmsi\": \"412081630\",\n            \"statusFlag\": \"1\",\n            \"shipNameCn\": \"盛泰\",\n            \"shipTypeCode\": \"0201\",\n            \"regportCode\": \"0100\",\n            \"shipInspectNo\": \"97G2009\",\n            \"shipBuiltDate\": \"1997-05-25\",\n            \"sailingareaCode\": \"15\",\n            \"createTime\": \"2023-06-14 18:59:31\",\n            \"totalCount\": \"88\",\n            \"shipTypeCn\": \"干货船\",\n            \"regportCn\": \"上海\",\n            \"sailingareaCn\": \"远海\",\n            \"remouldStatus\": \"已完成设计\"\n        }, {\n            \"rowno\": \"4\",\n            \"rn\": \"1\",\n            \"dataSource\": \"船舶登记\",\n            \"flag\": \"1\",\n            \"refCode\": \"1,1,2,2\",\n            \"refName\": \"所有人,所有人,经营人,经营人\",\n            \"shipRegNo\": \"120816000051\",\n            \"shipId\": \"CN20021963530\",\n            \"shipImo\": \"\",\n            \"shipNo\": \"A120803000432\",\n            \"mmsi\": \"412081710\",\n            \"statusFlag\": \"1\",\n            \"shipNameCn\": \"长达海\",\n            \"shipTypeCode\": \"0203\",\n            \"regportCode\": \"3303\",\n            \"shipInspectNo\": \"2003S0000264\",\n            \"shipBuiltDate\": \"2003-07-15\",\n            \"sailingareaCode\": \"14\",\n            \"createTime\": \"2017-01-10 15:00:39\",\n            \"totalCount\": \"88\",\n            \"shipTypeCn\": \"散货船\",\n            \"regportCn\": \"武汉\",\n            \"sailingareaCn\": \"近海\",\n            \"remouldStatus\": \"已完成设计\"\n        }, {\n            \"rowno\": \"5\",\n            \"rn\": \"1\",\n            \"dataSource\": \"船舶登记\",\n            \"flag\": \"1\",\n            \"refCode\": \"1,1,2,2\",\n            \"refName\": \"所有人,所有人,经营人,经营人\",\n            \"shipRegNo\": \"120816000052\",\n            \"shipId\": \"CN20024825783\",\n            \"shipImo\": \"\",\n            \"shipNo\": \"A120803000292\",\n            \"mmsi\": \"412081720\",\n            \"statusFlag\": \"1\",\n            \"shipNameCn\": \"长通海\",\n            \"shipTypeCode\": \"0203\",\n            \"regportCode\": \"3303\",\n            \"shipInspectNo\": \"2003F0000230\",\n            \"shipBuiltDate\": \"2003-06-15\",\n            \"sailingareaCode\": \"14\",\n            \"createTime\": \"2017-01-11 14:24:21\",\n            \"totalCount\": \"88\",\n            \"shipTypeCn\": \"散货船\",\n            \"regportCn\": \"武汉\",\n            \"sailingareaCn\": \"近海\",\n            \"remouldStatus\": \"已完成设计\"\n        }, {\n            \"rowno\": \"6\",\n            \"rn\": \"1\",\n            \"dataSource\": \"船舶登记\",\n            \"flag\": \"1\",\n            \"refCode\": \"2,2\",\n            \"refName\": \"经营人,经营人\",\n            \"shipRegNo\": \"090725000033\",\n            \"shipId\": \"CN20042358606\",\n            \"shipImo\": \"----\",\n            \"shipNo\": \"A120804000180\",\n            \"mmsi\": \"412081790\",\n            \"statusFlag\": \"1\",\n            \"shipNameCn\": \"粤铭航299\",\n            \"shipTypeCode\": \"0203\",\n            \"regportCode\": \"0907\",\n            \"shipInspectNo\": \"2004D0000352\",\n            \"shipBuiltDate\": \"2004-09-20\",\n            \"sailingareaCode\": \"14\",\n            \"createTime\": \"2025-04-15 10:57:25\",\n            \"totalCount\": \"88\",\n            \"shipTypeCn\": \"散货船\",\n            \"regportCn\": \"江门\",\n            \"sailingareaCn\": \"近海\",\n            \"remouldStatus\": \"已完成设计\"\n        }, {\n            \"rowno\": \"7\",\n            \"rn\": \"1\",\n            \"dataSource\": \"船舶登记\",\n            \"flag\": \"1\",\n            \"refCode\": \"1,1,2,2\",\n            \"refName\": \"所有人,所有人,经营人,经营人\",\n            \"shipRegNo\": \"120816000040\",\n            \"shipId\": \"CN20043138624\",\n            \"shipImo\": \"\",\n            \"shipNo\": \"A120805000228\",\n            \"mmsi\": \"412082020\",\n            \"statusFlag\": \"1\",\n            \"shipNameCn\": \"长跃海\",\n            \"shipTypeCode\": \"0203\",\n            \"regportCode\": \"3303\",\n            \"shipInspectNo\": \"2005S0000351\",\n            \"shipBuiltDate\": \"2005-10-09\",\n            \"sailingareaCode\": \"14\",\n            \"createTime\": \"2017-01-11 14:27:40\",\n            \"totalCount\": \"88\",\n            \"shipTypeCn\": \"散货船\",\n            \"regportCn\": \"武汉\",\n            \"sailingareaCn\": \"近海\",\n            \"remouldStatus\": \"已完成设计\"\n        }, {\n            \"rowno\": \"8\",\n            \"rn\": \"1\",\n            \"dataSource\": \"船舶登记\",\n            \"flag\": \"1\",\n            \"refCode\": \"1,1,2,2\",\n            \"refName\": \"所有人,所有人,经营人,经营人\",\n            \"shipRegNo\": \"120816000050\",\n            \"shipId\": \"CN20043716667\",\n            \"shipImo\": \"\",\n            \"shipNo\": \"A120804000164\",\n            \"mmsi\": \"412081810\",\n            \"statusFlag\": \"1\",\n            \"shipNameCn\": \"长安海\",\n            \"shipTypeCode\": \"0203\",\n            \"regportCode\": \"3303\",\n            \"shipInspectNo\": \"2004T0000297\",\n            \"shipBuiltDate\": \"2004-08-25\",\n            \"sailingareaCode\": \"14\",\n            \"createTime\": \"2017-01-11 11:21:18\",\n            \"totalCount\": \"88\",\n            \"shipTypeCn\": \"散货船\",\n            \"regportCn\": \"武汉\",\n            \"sailingareaCn\": \"近海\",\n            \"remouldStatus\": \"已完成设计\"\n        }, {\n            \"rowno\": \"9\",\n            \"rn\": \"1\",\n            \"dataSource\": \"船舶登记\",\n            \"flag\": \"1\",\n            \"refCode\": \"1,1,2,2\",\n            \"refName\": \"所有人,所有人,经营人,经营人\",\n            \"shipRegNo\": \"120822000062\",\n            \"shipId\": \"CN20056450208\",\n            \"shipImo\": \"----\",\n            \"shipNo\": \"A010006000275\",\n            \"mmsi\": \"413566470\",\n            \"statusFlag\": \"1\",\n            \"shipNameCn\": \"长泰海\",\n            \"shipTypeCode\": \"0203\",\n            \"regportCode\": \"3303\",\n            \"shipInspectNo\": \"2006W0000249\",\n            \"shipBuiltDate\": \"2006-08-05\",\n            \"sailingareaCode\": \"03\",\n            \"createTime\": \"2022-03-10 14:30:36\",\n            \"totalCount\": \"88\",\n            \"shipTypeCn\": \"散货船\",\n            \"regportCn\": \"武汉\",\n            \"sailingareaCn\": \"沿海\",\n            \"remouldStatus\": \"已完成设计\"\n        }, {\n            \"rowno\": \"10\",\n            \"rn\": \"1\",\n            \"dataSource\": \"船舶登记\",\n            \"flag\": \"1\",\n            \"refCode\": \"2,2,4,4\",\n            \"refName\": \"经营人,经营人,承租方,承租方\",\n            \"shipRegNo\": \"120814000024\",\n            \"shipId\": \"CN20056895489\",\n            \"shipImo\": \"\",\n            \"shipNo\": \"A120806000049\",\n            \"mmsi\": \"412081830\",\n            \"statusFlag\": \"1\",\n            \"shipNameCn\": \"长盈海\",\n            \"shipTypeCode\": \"0203\",\n            \"regportCode\": \"3303\",\n            \"shipInspectNo\": \"2006N0000057\",\n            \"shipBuiltDate\": \"2006-02-28\",\n            \"sailingareaCode\": \"14\",\n            \"createTime\": \"2017-04-13 16:18:02\",\n            \"totalCount\": \"88\",\n            \"shipTypeCn\": \"散货船\",\n            \"regportCn\": \"武汉\",\n            \"sailingareaCn\": \"近海\",\n            \"remouldStatus\": \"已完成设计\"\n        }],\n        \"total\": \"88\"\n    }\n}",
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
          }, {
            "name" : "rn",
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
            "name" : "dataSource",
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
            "name" : "flag",
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
            "name" : "refCode",
            "value" : "1,1",
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
            "name" : "refName",
            "value" : "所有人,所有人",
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
            "value" : "120818000015",
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
            "value" : "CN19864697962",
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
            "name" : "shipImo",
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
            "name" : "shipNo",
            "value" : "A140100091",
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
            "value" : "413816172",
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
          }, {
            "name" : "shipNameCn",
            "value" : "长江02031",
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
            "name" : "shipTypeCode",
            "value" : "0602",
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
            "name" : "regportCode",
            "value" : "3303",
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
            "name" : "shipInspectNo",
            "value" : "1987L0000160",
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
            "name" : "shipBuiltDate",
            "value" : "1987-12-10",
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
            "name" : "sailingareaCode",
            "value" : "16",
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
            "name" : "createTime",
            "value" : "2018-03-28 15:11:21",
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
            "name" : "totalCount",
            "value" : "88",
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
            "value" : "推轮",
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
            "value" : "武汉",
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
            "value" : "内河AJ",
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
      }, {
        "name" : "total",
        "value" : "88",
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

var sql_bak = """

select m.*, count(*) over() total_count
  from (select row_number() over(partition by ship_id order by  t.create_time,t.flag desc) rn,
               t.*
          from (select '船舶登记' as data_source,
                       r.flag,
                       r.ref_code,
                       r.ref_name,
                       r.ship_reg_no,
                       s.ship_id,
                       s.ship_imo,
                       'A' || s.ship_firstreg_no as ship_no,
                       s.mmsi,
                       s.status_flag,
                       s.ship_name_cn,
                       s.ship_type_code,
                       s.regport_code,
                       s.ship_inspect_no,
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
                               1 as flag
                          from (
                                        
                                        select distinct ship_reg_no,
                                                        '4' ref_code,
                                                        '出租方' ref_name
                                          from bds_base_data.shp_cert_bc_reg
                                         where status_flag = '1'
                                           and delete_flag = '0'
                                           and ship_lender_cn = #{companyName}
                                        --抵押
                                        union 
                                        select distinct ship_reg_no,
                                                        '6' ref_code,
                                                        '抵押权人' ref_name
                                          from bds_base_data.shp_cert_mortgage
                                         where status_flag = '1'
                                           and delete_flag = '0'
                                           and ship_mortgagee_cn =
                                               #{companyName}
                                        union 
                                        select distinct ship_reg_no,
                                                        '7' ref_code,
                                                        '抵押人' ref_name
                                          from bds_base_data.shp_cert_mortgage
                                         where status_flag = '1'
                                           and delete_flag = '0'
                                           and ship_mortgagor_cn =
                                               #{companyName}
                                        union 

                                           select distinct ship_reg_no,
                                                        
                                                        type ref_code,
                                                         (case
                                                          when type = '1' then
                                                            '船舶所有人'
                                                          when type = '2' then
                                                            '船舶经营人'
                                                          when type = '3' then
                                                            '船舶管理人'
                                                          when type = '4' then
                                                            '船舶承租人'
                                                          else
                                                            ''
                                                        end) ref_name
                                          from BDS_BASE_DATA.CHANGE_REF_SHIP
                                          where is_delete = '0'
                                            and card_name = #{companyName}


                                       )
                         group by ship_reg_no,1
                         
                        
                         ) r
                  inner join bds_base_data.shp_basic_data s
                    on r.ship_reg_no = s.ship_reg_no and s.status_flag='1') t) m
 where rn = 1 and ref_name is not null 
 order by ship_built_date desc
  """
  var sql = """
select m.*, count(*) over() total_count
  from (select row_number() over(partition by ship_id order by  t.create_time,t.flag desc) rn,
               t.*
          from (select '船舶登记' as data_source,
                       r.flag,
                       r.ref_code,
                       r.ref_name,
                       r.ship_reg_no,
                       s.ship_id,
                       s.ship_imo,
                       'A' || s.ship_firstreg_no as ship_no,
                       s.mmsi,
                       s.status_flag,
                       s.ship_name_cn,
                       s.ship_type_code,
                       s.regport_code,
                       s.ship_inspect_no,
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
                               1 as flag
                          from  bds_base_data.COMP_SHIP_REF_NEW WHERE comp_name = #{companyName} and is_delete = '0' group by ship_reg_no, 1
                         ) r
                  inner join bds_base_data.shp_basic_data s
                    on r.ship_reg_no = s.ship_reg_no and s.status_flag='1') t) m
 where rn = 1 and ref_name is not null and ship_name_cn is not null 
 order by ship_built_date desc
  """
  var shipList = [];
       shipList= db.base_data.camel().select(pageStart + sql + pageEnd);
 
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