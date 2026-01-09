{
  "properties" : { },
  "id" : "cfc84b2233564db8bf09ee73591d3595",
  "script" : null,
  "groupId" : "a2f8b128e2c64d9eba631714dd3787a1",
  "name" : "船舶监管信息",
  "createTime" : null,
  "updateTime" : 1705997068003,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getShipSupervisionNums",
  "method" : "GET",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1704853318251,\n    \"executeTime\": 8\n}",
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
      "value" : "-1",
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
      "name" : "message",
      "value" : "系统内部出现错误",
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
      "children" : [ ]
    }, {
      "name" : "timestamp",
      "value" : "1704853318251",
      "description" : "",
      "required" : false,
      "dataType" : "Long",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "executeTime",
      "value" : "8",
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
  }
}
================================

import response;

//行政处罚总数
var shipPunCaseSql="""
   select count（*） as SHIP_PUN_CASE_NUMS from BDS_BIZ_DATA.PUN_PUNISH_DECISION  where substr(case_no, 0, (length(CASE_NO) - 2)) in
       (select CASE_NO
          FROM  BDS_BIZ_DATA.PUN_CASE_STATUS
         where SHIP_REG_NO = #{shipRegNo}
            or SHIP_REG_NO = #{shipId}
           or SHIP_REG_NO = #{shipFirstregNo}
           and delete_flag = '0')
   and delete_flag = '0'
"""

//重点跟踪次数
 var shipTrackSql="""
 select count(*)  as  ship_track_no from SHP_KEY_TRACK_SHIP e where 1=1 
                   and delete_flag='0'
                   and e.RELEASE_MARK<>'9'

<trim prefix="and("  suffix=")" prefixOverrides="AND |OR ">
       <if test="shipFirstRegNo != null and shipFirstRegNo!=''">
             OR trim(e.SHIP_FIRSTREG_NO)=#{shipFirstRegNo}
      </if>
      <if test="shipRegNo != null and shipRegNo!=''">
             or trim(e.ship_reg_no)=#{shipRegNo}
      </if>
     
  </trim>
 """


//滞留次数
var shipWaitSql="""
 select count(*)  as ship_wait_nums from bds_biz_data.SHP_DENTENTION_FSC e  
        where e.delete_flag='0'
   <trim prefix="and("  suffix=")" prefixOverrides="AND |OR ">
       <if test="shipFirstRegNo != null and shipFirstRegNo!=''">
             OR trim(e.SHIP_FIRSTREG_NO)=#{shipFirstRegNo}
      </if>
      <if test="shipNo != null and shipNo!=''">
             or trim(e.ship_no)=#{shipNo}
      </if>
     
  </trim>

     
"""

//协查次数

var shiCheckSql="""
 select count(*)  as  ship_check_nums
        
         from SHP_ASSIST_INVESTIGATION e where 1=1 and delete_flag='0' 

          <trim prefix="and("  suffix=")" prefixOverrides="AND |OR ">
       <if test="shipFirstRegNo != null and shipFirstRegNo!=''">
             OR trim(e.SHIP_FIRSTREG_NO)=#{shipFirstRegNo}
      </if>
      <if test="shipNo != null and shipNo!=''">
             or trim(e.ship_reg_no)=#{shipRegNo}
      </if>
     
  </trim>

"""

