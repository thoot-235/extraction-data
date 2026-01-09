{
  "properties" : { },
  "id" : "45821f12c35f4abc9978efb702bc14c8",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "行政处罚总数",
  "createTime" : null,
  "updateTime" : 1745573802137,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/listPunishInfoTotal",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipRegNo",
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
    "name" : "shipId",
    "value" : "CN19978861606",
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
    "name" : "shipFirstregNo",
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
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": \"7\"\n}",
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
      "value" : "7",
      "description" : "",
      "required" : false,
      "dataType" : "Object",
      "type" : null,
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;

var cbSql;
/*
cbSql = """      
select distinct count(ID) over() total_count, PUNISH_REFERENCE,ORG_NAME,PUNISH_OBJECT_ID,CASE_NO,CASE_STATUS,
               (case PROCESS_TYPE when 1 then '警告' when 2 then '罚款' when 3 then '扣留证书' when 4 then '吊销证书' else '' end )
                PROCESS_TYPE_NAME,PROCESS_TYPE,PUNISH_OBJ_NAME,PUNISH_OBJ_ADDRESS,ILLEGAL_FACT,
            PUNISH_RESULT,BANK_NAME,REVIEW_DEP_NAME,ORG_CODE,REFER_LAW,SUIT_TIME,SUIT_COURT,NEXT_OPERATOR_CARD_ID,
            NEXT_OPERATOR_NAME,DELIVERY_DATE,DELIVERY_LOCATION,DELIVERY_PERSON2,DELIVERY_PERSON1,DELIVERY_REMARK,ILLEGAL_SCORE_FLAG,
            ILLEGAL_SCORE,CREATE_NAME,CREATE_TIME DECISION_Date,UPDATE_NAME,UPDATE_DATE,SOURCE_CODE,DATA_ORG_CODE,
            CREATE_DATE,CREATOR,LAST_UPDATE_DATE,UPDATE_BY,DELETE_FLAG,PROCESS_STATUS,IMPORT_TIME from PUN_PUNISH_DECISION  
             where substr(case_no, 0, (length(CASE_NO) - 2)) in (select CASE_NO   FROM PUN_CASE_STATUS
             where SHIP_REG_NO =#{shipRegNo} or SHIP_REG_NO =#{shipId} or SHIP_REG_NO =#{shipFirstregNo} and delete_flag='0'
              )and delete_flag='0'
""";
*/
cbSql = """
select distinct count(a.DECISION_ID) over() total_count
  from BIZ_AP_PUNISH_DECISION a
  left join BIZ_AP_ILLEGAL_PARTIES b
    on a.case_no = b.case_no
  left join BIZ_AP_SHIP_INFO c
    on c.case_id = b.case_id
  left join sub_base_data.shp_basic_data d
    on c.ship_id = d.ship_id
 where a.delete_flag = '0'
   and b.delete_flag = '0'
   and c.delete_flag = '0'
   and d.delete_flag = '0'
   and d.status_flag = '1' 
   ?{shipId,and c.ship_id=#{shipId}}
   ?{shipNameCn,and c.ship_name_cn=#{shipNameCn}}
   ?{shipRegNo,and d.ship_reg_no=#{shipRegNo}}
   ?{shipFirstregNo,and d.SHIP_FIRSTREG_NO=#{shipFirstregNo}}
"""
import response
var list=db.ods_data.camel().select(cbSql);
      
        var totalCount=0;
        for(item in list){
           
            totalCount = item.get("totalCount");
        }     
      
        return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            data: totalCount
            
      });
 




