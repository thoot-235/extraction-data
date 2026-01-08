{
  "properties" : { },
  "id" : "993bd1acddd743d98bd72a17e81f4934",
  "script" : null,
  "groupId" : "429bf27232e44bdbae1a46ea3dcc6609",
  "name" : "考试信息",
  "createTime" : null,
  "updateTime" : 1713163697096,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getCrewExam",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"idCardNo\": \"buPyG9AXkW9s1hyqd9Q+SeCtDq5hM2XLVIEKPwp5F5I=\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"examList\": [{\n            \"examProject\": \"N1\",\n            \"applForm\": \"0011000012\",\n            \"compType\": \"N1111\",\n            \"admitickNo\": \"2819NC1806011012\",\n            \"applexamMajor\": \"1\",\n            \"examPeriods\": \"2819NC180601\",\n            \"isPass\": \"通过\",\n            \"initTestData\": \"2018/06/14\",\n            \"passDate\": \"2019/03/26\",\n            \"subjType\": \"评估\",\n            \"isMakeupexam\": \"否\",\n            \"examProjectCn\": \"内河全国统考(长江)\",\n            \"applFormCn\": \"航线考试\",\n            \"compTypeCn\": \"一类船长\"\n        }, {\n            \"examProject\": \"N1\",\n            \"applForm\": \"0011000012\",\n            \"compType\": \"N1111\",\n            \"admitickNo\": \"2819NC1806011012\",\n            \"applexamMajor\": \"1\",\n            \"examPeriods\": \"2819NC181001\",\n            \"isPass\": \"通过\",\n            \"initTestData\": \"2018/06/14\",\n            \"passDate\": \"2019/03/26\",\n            \"subjType\": \"评估\",\n            \"isMakeupexam\": \"是\",\n            \"examProjectCn\": \"内河全国统考(长江)\",\n            \"applFormCn\": \"航线考试\",\n            \"compTypeCn\": \"一类船长\"\n        }, {\n            \"examProject\": \"N1\",\n            \"applForm\": \"0011000012\",\n            \"compType\": \"N1111\",\n            \"admitickNo\": \"2819NC1806011012\",\n            \"applexamMajor\": \"1\",\n            \"examPeriods\": \"2819NC190101\",\n            \"isPass\": \"通过\",\n            \"initTestData\": \"2018/06/14\",\n            \"passDate\": \"2019/03/26\",\n            \"subjType\": \"评估\",\n            \"isMakeupexam\": \"是\",\n            \"examProjectCn\": \"内河全国统考(长江)\",\n            \"applFormCn\": \"航线考试\",\n            \"compTypeCn\": \"一类船长\"\n        }, {\n            \"examProject\": \"N1\",\n            \"applForm\": \"0011000012\",\n            \"compType\": \"N1111\",\n            \"admitickNo\": \"2819NC1806011012\",\n            \"applexamMajor\": \"1\",\n            \"examPeriods\": \"2819NC190301\",\n            \"isPass\": \"通过\",\n            \"initTestData\": \"2018/06/14\",\n            \"passDate\": \"2019/03/26\",\n            \"subjType\": \"评估\",\n            \"isMakeupexam\": \"是\",\n            \"examProjectCn\": \"内河全国统考(长江)\",\n            \"applFormCn\": \"航线考试\",\n            \"compTypeCn\": \"一类船长\"\n        }, {\n            \"examProject\": \"N1\",\n            \"applForm\": \"001100003\",\n            \"compType\": \"N1111\",\n            \"admitickNo\": \"0503120412137\",\n            \"applexamMajor\": \"1\",\n            \"examPeriods\": \"130102\",\n            \"isPass\": \"通过\",\n            \"initTestData\": \"2013/01/05\",\n            \"passDate\": \"2013/01/14\",\n            \"subjType\": \"评估\",\n            \"isMakeupexam\": \"否\",\n            \"examProjectCn\": \"内河全国统考(长江)\",\n            \"applFormCn\": \"类别职务晋升考试\",\n            \"compTypeCn\": \"一类船长\"\n        }],\n        \"trainExamList\": [{\n            \"examProject\": \"N0067\",\n            \"admitickNo\": \"FT4N006718007001\",\n            \"trainOrgCn\": \"南京油运海员培训中心有限公司\",\n            \"trainOrgId\": \"716207461\",\n            \"trainDate\": \"2018-08-03至2018-08-14\",\n            \"workorderNo\": \"NPKB-06010018070021\",\n            \"isPass\": \"通过\",\n            \"passDate\": \"2018/08/16\",\n            \"examProjectCn\": \"1000总吨及以上油船培训\"\n        }, {\n            \"examProject\": \"N0068\",\n            \"admitickNo\": \"716N006818001017\",\n            \"trainOrgCn\": \"南京油运海员培训中心有限公司\",\n            \"trainOrgId\": \"716207461\",\n            \"trainDate\": \"2018-04-17至2018-05-02\",\n            \"workorderNo\": \"NPKB-06010018040003\",\n            \"isPass\": \"未通过\",\n            \"passDate\": \"--\",\n            \"examProjectCn\": \"1000总吨及以上散装化学品船培训\"\n        }]\n    }\n}",
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
      "required" : true,
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
        "name" : "examList",
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
            "name" : "examProject",
            "value" : "N1",
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
            "name" : "applForm",
            "value" : "0011000012",
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
            "name" : "compType",
            "value" : "N1111",
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
            "name" : "admitickNo",
            "value" : "2819NC1806011012",
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
            "name" : "applexamMajor",
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
            "name" : "examPeriods",
            "value" : "2819NC180601",
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
            "name" : "isPass",
            "value" : "通过",
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
            "name" : "initTestData",
            "value" : "2018/06/14",
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
            "name" : "passDate",
            "value" : "2019/03/26",
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
            "name" : "subjType",
            "value" : "评估",
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
            "name" : "isMakeupexam",
            "value" : "否",
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
            "name" : "examProjectCn",
            "value" : "内河全国统考(长江)",
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
            "name" : "applFormCn",
            "value" : "航线考试",
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
            "name" : "compTypeCn",
            "value" : "一类船长",
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
        "name" : "trainExamList",
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
            "name" : "examProject",
            "value" : "N0067",
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
            "name" : "admitickNo",
            "value" : "FT4N006718007001",
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
            "name" : "trainOrgCn",
            "value" : "南京油运海员培训中心有限公司",
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
            "name" : "trainOrgId",
            "value" : "716207461",
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
            "name" : "trainDate",
            "value" : "2018-08-03至2018-08-14",
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
            "name" : "workorderNo",
            "value" : "NPKB-06010018070021",
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
            "name" : "isPass",
            "value" : "通过",
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
            "name" : "passDate",
            "value" : "2018/08/16",
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
            "name" : "examProjectCn",
            "value" : "1000总吨及以上油船培训",
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
      } ]
    } ]
  }
}
================================
import org.springblade.common.utils.ZzSecurityHelper
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import java.util.Arrays;
import log;
import java.text.ParseException;
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
//查询适任考试列表
var  sql1="""
 select b.EXAM_TYPE exam_project,
        b.APPLEXAM_FORM appl_form,
        b.COMP_TYPE_CODE comp_type,
        b.ADMITICK_NO admitick_no,
        b.applexam_major,
        b.exam_periods,
        b.IS_PASS is_pass,
        case when to_char(b.INITTEST_DATE,'yyyy-MM-dd')='1900-01-01' then '--' else to_char(b.INITTEST_DATE,'yyyy/MM/dd') end init_test_data,
        case when is_pass='1' and SCOREVERI_DATE!='1900-01-01' then  SCOREVERI_DATE else '--' end pass_date,
        case when b.subj_type in ('1', 'P') then '评估' when b.subj_type in ('0', 'L') then '理论' else '理论与评估' end subj_type,
        case when is_makeupexam='1' then '是' else '否' end is_makeupexam
        from bds_biz_data.CREW_CC_EXAM_TESTEE b inner join (
           select id_card_no,admitick_no,max(to_char(SCOREVERI_DATE,'yyyy/MM/dd')) SCOREVERI_DATE 
           from bds_biz_data.CREW_CC_EXAM a
           where delete_flag='0' 
           ?{idCardNo,and a.ID_CARD_NO = #{idCardNo}}
           and is_scorecoll='1' 
           group by id_card_no,admitick_no
        ) t on b.admitick_no=t.admitick_no and b.id_card_no=t.id_card_no
        where delete_flag='0'
        ?{idCardNo,and  b.ID_CARD_NO = #{idCardNo}}
        --group by b.admitick_no,b.comp_type_code,b.applexam_form,b.applexam_major,b.exam_type
        order by b.INITTEST_DATE desc,is_makeupexam asc
"""

var sql3="""
  select  a.TRAINEXAM_ITEM exam_project,
         a.ADMITICK_NO,
         (select comp_name from bds_base_data.ORG_CREW_BASIC_INFO where comp_id=a.TRAIN_ORG_ID) train_org_cn,
         a.TRAIN_ORG_ID,
         case when d.workorder_no is not null then 
          to_char(d.SCHE_CLAS_TIME, 'yyyy-MM-dd') || '至' ||
          to_char(d.SCHE_GRADUATION_TIME, 'yyyy-MM-dd') 
         else '--' end train_date,
         a.exam_periods workorder_no,
         a.pass_sign is_pass,
         case when a.pass_sign='1' and COLLATE_DATE!='1900-01-01' then COLLATE_DATE else '--' end pass_date
         from bds_biz_data.CREW_TRAIN_TESTEE_LIST a 
          left outer join bds_biz_data.CREW_AHEP d on a.exam_periods=d.workorder_no
          inner join (
           select id_card_no,admitick_no,max(to_char(COLLATE_DATE,'yyyy/MM/dd')) COLLATE_DATE 
           from bds_biz_data.CREW_EXAM_SCORE a
           where delete_flag='0' 
           ?{idCardNo,and a.ID_CARD_NO = #{idCardNo}}
           and CHECK_FLAG='1' 
           group by id_card_no,admitick_no
        ) t on a.admitick_no=t.admitick_no and a.id_card_no=t.id_card_no   
        where a.delete_flag='0'
        ?{idCardNo,and  a.ID_CARD_NO = #{idCardNo}}
        --group by a.TRAINEXAM_ITEM,a.ADMITICK_NO,a.TRAIN_ORG_ID,d.SCHE_CLAS_TIME,d.workorder_no,d.SCHE_GRADUATION_TIME,a.exam_periods
        order by SCHE_CLAS_TIME desc nulls last
"""

var crewExamListQueryDTO={};
var examList=db.biz_data.camel().select(sql1);
for (item in examList) {
        item.put("examProjectCn",TagUtils.getTagNameByCode("examTypeTag",item.get("examProject")));
        item.put("applFormCn",TagUtils.getTagNameByCode("applexamFormTag",item.get("applForm")));
        item.put("compTypeCn",TagUtils.getTagNameByCode("crewCertTypeTag",item.get("compType")));
        item.put("isPass",TagUtils.getTagNameByCode("isPassTag",item.get("isPass")));
}
crewExamListQueryDTO.put("examList",examList);
var trainExamList = db.biz_data.camel().select(sql3);
log.info("trainExamList-------------------"+trainExamList.size())
  for (e in  trainExamList) {
     e.put("examProjectCn",TagUtils.getTagNameByCode("trainItemCodeTag",e.get("examProject")));
     e.put("isPass",TagUtils.getTagNameByCode("isPassTag",e.get("isPass")));      
  }
  crewExamListQueryDTO.put("trainExamList",trainExamList);
	return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: crewExamListQueryDTO
	});
 