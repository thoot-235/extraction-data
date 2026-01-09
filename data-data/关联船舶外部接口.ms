{
  "properties" : { },
  "id" : "792adb6031ab45ecb2d845bcf3bce892",
  "script" : null,
  "groupId" : "9c416fafc8b24dee85b6572562b05b64",
  "name" : "关联船舶外部接口",
  "createTime" : null,
  "updateTime" : 1730886641448,
  "lock" : null,
  "createBy" : null,
  "updateBy" : "admin",
  "path" : "/getShipByCompany",
  "method" : "GET",
  "parameters" : [ {
    "name" : "companyName",
    "value" : "深圳技术有限公司",
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }, {
    "name" : "uscc",
    "value" : "9144030019244115XX1",
    "description" : null,
    "required" : true,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"detail\": [{\n            \"companyName\": \"深圳海油工程水下技术有限公司\",\n            \"uscc\": \"9144030019244115XX\",\n            \"companyRegAddr\": \"深圳市南山区粤海街道蔚蓝海岸社区后海滨路3168号中海油大厦B2903\",\n            \"startTime\": \"2024-09-05\"\n        }],\n        \"shiptotal\": \"1\",\n        \"shiplist\": [{\n            \"shipId\": \"CN20099436517\",\n            \"shipNameCn\": \"赣武宁货3314\"\n        }]\n    }\n}",
  "description" : null,
  "requestBodyDefinition" : null,
  "responseBodyDefinition" : {
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
        "name" : "detail",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : null,
        "defaultValue" : null,
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
            "name" : "companyName",
            "value" : "深圳海油工程水下技术有限公司",
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
            "name" : "uscc",
            "value" : "9144030019244115XX",
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
            "name" : "companyRegAddr",
            "value" : "深圳市南山区粤海街道蔚蓝海岸社区后海滨路3168号中海油大厦B2903",
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
            "name" : "startTime",
            "value" : "2024-09-05",
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
        "name" : "shiptotal",
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
        "name" : "shiplist",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
        "type" : null,
        "defaultValue" : null,
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
            "name" : "shipId",
            "value" : "CN20099436517",
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
            "value" : "赣武宁货3314",
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
    } ]
  }
}
================================
import log;
import response;
companyName=(companyName==null?"":companyName).replace("<em>","").replace("</em>","");


var totalCount=0;
//查询船企基本信息

var sqlDeatil = """select COMPANY_NAME,USCC,COMPANY_REG_ADDR,START_TIME from   
   BDS_BASE_DATA.company_info_all where (
                          ?{uscc, uscc = #{uscc}}   ?{companyName, or COMPANY_NAME = #{companyName}}  ) and source_DEPT = '1' """;

var companyDetail=db.bds.camel().select( sqlDeatil ); 
//查询关联船舶
var sql="""
select m.ship_id,m.ship_name_cn, count(*) over() total_count
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
                               ref_code,
                               ref_name,
                               1 as flag
                          from  bds_base_data.COMP_SHIP_REF_NEW WHERE
                         ( ?{uscc, comp_uscc = #{uscc}}   ?{companyName, or comp_name = #{companyName}}  )
                          
                            and is_delete = '0'
                         ) r
                  inner join bds_base_data.sc_ship_basic_data s
                    on r.ship_reg_no = s.ship_reg_no and s.status_flag='1') t) m
 where rn = 1 and ref_name is not null"""
 
  var shipList = [];
 shipList= db.bds.camel().select( sql );
 
  var shipBaCK=[];//重组返回值
  for(ship in shipList){
     
      totalCount = ship.get("totalCount");
      var data={
             "shipId": ship.get("shipId"),
            "shipNameCn": ship.get("shipNameCn")
      };
      shipBaCK.add(data);
    
  }

if(shipList==null){
  shipList=[];
}   
var back={
        "detail":companyDetail,
        "shiptotal":totalCount,
        "shiplist":shipBaCK
        //"total":Integer.parseInt(totalCount::string) 

}
return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: back
	});