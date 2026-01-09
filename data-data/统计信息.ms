{
  "properties" : { },
  "id" : "6de5ee154e13481e9513200e9f7dac67",
  "script" : null,
  "groupId" : "429bf27232e44bdbae1a46ea3dcc6609",
  "name" : "统计信息",
  "createTime" : null,
  "updateTime" : 1713167595598,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getCrewAnalysis",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"idCardNo\": \"buPyG9AXkW9s1hyqd9Q+SeCtDq5hM2XLVIEKPwp5F5I=\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"certNum\": 4,\n        \"trainNum\": 4,\n        \"examNum\": 4,\n        \"score\": 0,\n        \"punishNum\": 0,\n        \"serviceDay\": 260\n    }\n}",
  "description" : "",
  "requestBodyDefinition" : {
    "name" : "",
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ {
      "name" : "idCardNo",
      "value" : "buPyG9AXkW9s1hyqd9Q+SeCtDq5hM2XLVIEKPwp5F5I=",
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
  },
  "responseBodyDefinition" : {
    "name" : "",
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "String",
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
        "name" : "certNum",
        "value" : "4",
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
        "name" : "trainNum",
        "value" : "4",
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
        "name" : "examNum",
        "value" : "4",
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
        "name" : "score",
        "value" : "0",
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
        "name" : "punishNum",
        "value" : "0",
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
        "name" : "serviceDay",
        "value" : "260",
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
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import org.springblade.common.utils.ZzSecurityHelper
import log;
import response;

var idCardNo=(body.idCardNo==null?"":body.idCardNo).replace("<em>","").replace("</em>","");
if(idCardNo==null || idCardNo ==""){
    return response.json({
        resultCode: 200,
        resultMsg: "idCardNo不能为空"
    });
}
log.info("------------------------idCardNo---------------------------"+idCardNo);
idCardNo = ZzSecurityHelper.decryptAES(idCardNo);
//证书总数
var certNumSql = """
select sum(nums)
  from (select count(1) nums
          from bds_base_data.CREW_CERT_SEAMAN
         where delete_flag = '0'
           and cert_status = '1'
           and id_card_no = #{idCardNo}
        union all
        select count(1) nums
          from bds_base_data.CREW_CERT_INL_CMPT
         where delete_flag = '0'
           and cert_status = '1'
           and id_card_no = #{idCardNo}
        union all
        select count(1) nums
          from bds_base_data.CREW_CERT_SEAMAN_CMPT
         where delete_flag = '0'
           and cert_status = '1'
           and id_card_no = #{idCardNo}
        union all
        select count(1)
          from bds_base_data.CREW_CERT_SMALL_SEAMAN
         where delete_flag = '0'
           and cert_status = '1'
           and id_card_no = #{idCardNo}
        union all
        select count(1) nums
          from bds_base_data.CREW_CERT_PILOT_CMPT
         where delete_flag = '0'
           and cert_status = '1'
           and id_card_no = #{idCardNo}
        union all
        select count(1) nums
          from bds_base_data.CREW_CERT_SERVICEBOOK
         where delete_flag = '0'
           and cert_status = '1'
           and id_card_no = #{idCardNo}
        union all
        select count(1) nums
          from bds_base_data.CREW_CERT_INL_TRAIN_QULI
         where delete_flag = '0'
           and cert_status = '1'
           and id_card_no = #{idCardNo}
        union all
        select count(1) nums
          from bds_base_data.CREW_CERT_SEA_TRAIN_QULI
         where delete_flag = '0'
           and cert_status = '1'
           and id_card_no = #{idCardNo}
        union all
        select count(1) nums
          from bds_base_data.CREW_CERT_SEAMAN_FIT
         where delete_flag = '0'
           and cert_status = '1'
           and id_card_no = #{idCardNo}
        union all
        select count(1) nums
          from bds_base_data.CREW_CERT_YACHT_DRIVE_LIC
         where delete_flag = '0'
           and cert_status = '1'
           and id_card_no = #{idCardNo}
        union all
        select count(1) nums
          from bds_base_data.CREW_CERT_INL_NAV_QC
         where delete_flag = '0'
           and cert_status = '1'
           and id_card_no = #{idCardNo})
"""
//培训总数
//考试总数
//累计计分
//处罚次数
var sql = """
        select nvl(train_num,0) train_num,nvl(exam_num,0) exam_num,nvl(illegal_score_num,0) score,nvl(punish_num,0) punish_num
                from dm_data.STS_CREW_INDEX 
                where ID_CARD_NO =#{idCardNo}
"""
//累计在职
var serviceDaySql = """
  select nvl(sum(OFFI_DAYS),0)
    from (select case
                  when DISMISS_DATE = '--' then
                    trunc(sysdate, 'dd') - to_date(OFFI_DATE, 'yyyy-MM-dd')
                  else
                    OFFI_DAYS
                end OFFI_DAYS
            from (select distinct case
                                    when to_char(OFFI_DATE, 'yyyy-mm-dd') =
                                        '1900-01-01' then
                                    '--'
                                    else
                                    to_char(OFFI_DATE, 'yyyy-mm-dd')
                                  end as OFFI_DATE,
                                  case
                                    when to_char(DISMISS_DATE, 'yyyy-mm-dd') =
                                        '1900-01-01' then
                                    '--'
                                    else
                                    to_char(DISMISS_DATE, 'yyyy-mm-dd')
                                  end as DISMISS_DATE,
                                  OFFI_DAYS
                    from bds_biz_data.CREW_SERVICE_EXPE
                  where delete_flag = '0'
                    and id_card_no = #{idCardNo}
                  order by offi_date desc))
"""


var certNum = async db.dm_data.camel().selectInt(certNumSql);
var map = async db.dm_data.camel().selectOne(sql);
var serviceDay = async db.dm_data.camel().selectInt(serviceDaySql);


var res = {};
res.put("certNum",certNum.get());
res.put("trainNum",map.get().get("trainNum")::int);
res.put("examNum",map.get().get("examNum")::int);
res.put("score",map.get().get("score")::int);
res.put("punishNum",map.get().get("score")::int);
res.put("serviceDay",serviceDay.get());
 /**
var res = {};
res.put("certNum",233);
res.put("trainNum",233);
res.put("examNum",233);
res.put("score",23);
res.put("punishNum",2);
res.put("serviceDay",2333);
*/
return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
});