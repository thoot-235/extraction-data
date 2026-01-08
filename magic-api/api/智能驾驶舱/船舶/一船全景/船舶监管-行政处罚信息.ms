{
  "properties" : { },
  "id" : "copy1704858915538d9330",
  "script" : null,
  "groupId" : "a2f8b128e2c64d9eba631714dd3787a1",
  "name" : "船舶监管-行政处罚信息",
  "createTime" : null,
  "updateTime" : 1745573743893,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getListPunishInfo",
  "method" : "GET",
  "parameters" : [ {
    "name" : "mmsi",
    "value" : "414221000",
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
  }, {
    "name" : "code",
    "value" : "list",
    "description" : "",
    "required" : true,
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": [{\n        \"totalCount\": \"4\",\n        \"punishReference\": \"《海运固体散装货物安全监督管理规定》第三十五条第（三）项\",\n        \"orgName\": \"泉州海事局\",\n        \"caseNo\": \"海事罚字[2024]08042010011-1-1\",\n        \"caseStatus\": \"已完成\",\n        \"processType\": \"fine\",\n        \"processTypeName\": \"罚款(元)\",\n        \"punishObjName\": \"浙江永航海运有限公司\",\n        \"punishObjAddress\": \"江省舟山市普陀区东港街道沙田街56号汇隆大厦1501室\",\n        \"illegalFact\": \"2024年11月19日，泉州海事局泉港海事处的执法人员在行政检查中发现“同茂7”轮于2024年11月19日在肖厝物流三号泊位载运固体散装货物船舶未按照船岸安全检查表的要求进行检查和填写的行为。经进一步调查，发现该轮本航次2024年11月19日0300时在肖厝物流公司3号泊位完成易流态货物高岭土3600吨、长石600吨的装货作业，并填写《散货船装卸船/岸安全检查表》，其中《散货船装卸船/岸安全检查表》第17项“已经讨论货物是否需要平仓”中备注“需要平仓”，实际上本次载运高岭土1493吨、长石500吨的NO.1号货舱完货后未进行平仓作业；《散货船装卸船/岸安全检查表》第14项“货物装卸能力和每台装货机运行限制是否已经通知船方/码头”中，未填写完整。该轮载运固体散装货物船舶未按照船岸安全检查表的要求进行检查和填写的行为违反了《海运固体散装货物安全监督管理规定》第十七条第一款之规定，浙江永航海运有限公司作为船舶所有人应当承担相应责任。\",\n        \"punishResult\": \"罚款人民币壹万叁仟伍佰元整\",\n        \"orgCode\": \"010202080207\",\n        \"deliveryDate\": \"2024-11-29\",\n        \"creatorName\": \"-1\",\n        \"createTime\": \"2024-11-29 10:16:50\",\n        \"decisionDate\": \"2024-11-29\"\n    }, {\n        \"totalCount\": \"4\",\n        \"punishReference\": \"《中华人民共和国海上海事行政处罚规定》第二十六条第一款、第二款第（十三）项\",\n        \"orgName\": \"台州海事局\",\n        \"caseNo\": \"2020070501025212\",\n        \"caseStatus\": \"已完成\",\n        \"processType\": \"fine\",\n        \"processTypeName\": \"罚款(元)\",\n        \"punishObjName\": \"陈俊杰\",\n        \"punishObjAddress\": \"江苏启动市江龙镇万豪花园2号楼104室\",\n        \"illegalFact\": \"2020年3月22日0051时左右，浙江永航海运有限公司所有的“同茂7”（总吨3770，总功率2060KW）轮从厦门驶往张家港途径台州椒江东矶列岛洋面，与一艘向南航行的AIS船名为“yuan yang 96”轮在东矶列岛以东水域发生碰撞（概位：28°35.3′N/121°53.3′E），造成“同茂7”轮右舷船头外部凹陷破损，内肋骨弯曲变形，船艏甲班隆起变形等，无人员伤亡，无燃油泄露，未造成污染，构成小事故等级水上交通事故。因对方船舶事故后逃逸，有些细节无法复核，现根据已查实的情况初步分析，本起船舶碰撞事故属双方责任事故。2020年6月22日经椒江海事处批复结案，“同茂7”轮负主要责任，船长陈俊杰负管理责任，二副李健是主要责任人。”yuan yang96”轮负次要责任，该轮当班驾驶员为次要责任人。上述行为违反了《中华人民共和国海上交通安全法》第十条和《1972年国际海上避碰规则》第五条、《中华人民共和国海船船员值班规则》第二十条的规定。\",\n        \"punishResult\": \"罚款人民币伍仟元整\",\n        \"orgCode\": \"0102020702040201\",\n        \"deliveryDate\": \"2020-07-08\",\n        \"creatorName\": \"高慧芬\",\n        \"createTime\": \"2020-07-08 15:32:31\",\n        \"decisionDate\": \"2020-07-08\"\n    }, {\n        \"totalCount\": \"4\",\n        \"punishReference\": \"《中华人民共和国海上海事行政处罚规定》第二十六条第一款、第二款第（十三）项\",\n        \"orgName\": \"台州海事局\",\n        \"caseNo\": \"2020070501025211\",\n        \"caseStatus\": \"已完成\",\n        \"processType\": \"fine\",\n        \"processTypeName\": \"罚款(元)\",\n        \"punishObjName\": \"浙江永航海运有限公司\",\n        \"punishObjAddress\": \"舟山市普陀区东港街道沙田街56号汇隆大厦1501室\",\n        \"illegalFact\": \"2020年3月22日0051时左右，浙江永航海运有限公司所有的“同茂7”（总吨3770，总功率2060KW）轮从厦门驶往张家港途径台州椒江东矶列岛洋面，与一艘向南航行的AIS船名为“yuan yang 96”轮在东矶列岛以东水域发生碰撞（概位：28°35.3′N/121°53.3′E），造成“同茂7”轮右舷船头外部凹陷破损，内肋骨弯曲变形，船艏甲班隆起变形等，无人员伤亡，无燃油泄露，未造成污染，构成小事故等级水上交通事故。因对方船舶事故后逃逸，有些细节无法复核，现根据已查实的情况初步分析，本起船舶碰撞事故属双方责任事故。2020年6月22日经椒江海事处批复结案，“同茂7”轮负主要责任，船长陈俊杰负管理责任，二副李健是主要责任人。”yuan yang96”轮负次要责任，该轮当班驾驶员为次要责任人。上述行为违反了《中华人民共和国海上交通安全法》第十条和《1972年国际海上避碰规则》第五条、《中华人民共和国海船船员值班规则》第二十条的规定。\",\n        \"punishResult\": \"罚款人民币柒仟元整\",\n        \"orgCode\": \"0102020702040201\",\n        \"deliveryDate\": \"2020-07-08\",\n        \"creatorName\": \"高慧芬\",\n        \"createTime\": \"2020-07-08 15:33:07\",\n        \"decisionDate\": \"2020-07-08\"\n    }, {\n        \"totalCount\": \"4\",\n        \"punishReference\": \"《中华人民共和国海上海事行政处罚规定》第二十四条第一款、第二款第（八）项\",\n        \"orgName\": \"台州海事局\",\n        \"caseNo\": \"2020070501025411\",\n        \"caseStatus\": \"已完成\",\n        \"processType\": \"fine\",\n        \"processTypeName\": \"罚款(元)\",\n        \"punishObjName\": \"李健\",\n        \"punishObjAddress\": \"江苏省如东县栟茶镇卫海南路9号\",\n        \"illegalFact\": \"2020年3月22日0051时左右，浙江永航海运有限公司所有的“同茂7”（总吨3770，总功率2060KW）轮从厦门驶往张家港途径台州椒江东矶列岛洋面，与一艘向南航行的AIS船名为“yuan yang 96”轮在东矶列岛以东水域发生碰撞（概位：28°35.3′N/121°53.3′E），造成“同茂7”轮右舷船头外部凹陷破损，内肋骨弯曲变形，船艏甲班隆起变形等，无人员伤亡，无燃油泄露，未造成污染，构成小事故等级水上交通事故。因对方船舶事故后逃逸，有些细节无法复核，现根据已查实的情况初步分析，本起船舶碰撞事故属双方责任事故。2020年6月22日经椒江海事处批复结案，“同茂7”轮负主要责任，船长陈俊杰负管理责任，二副李健是主要责任人。”yuan yang96”轮负次要责任，该轮当班驾驶员为次要责任人。上述行为违反了《中华人民共和国海上交通安全法》第九条和《1972年国际海上避碰规则》第五条、《中华人民共和国海船船员值班规则》第二十条的规定。\",\n        \"punishResult\": \"罚款人民币肆仟元整\",\n        \"orgCode\": \"0102020702040201\",\n        \"deliveryDate\": \"2020-07-08\",\n        \"creatorName\": \"高慧芬\",\n        \"createTime\": \"2020-07-08 15:31:14\",\n        \"decisionDate\": \"2020-07-08\"\n    }]\n}",
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
          "name" : "totalCount",
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
          "name" : "punishReference",
          "value" : "《海运固体散装货物安全监督管理规定》第三十五条第（三）项",
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
          "name" : "orgName",
          "value" : "泉州海事局",
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
          "name" : "caseNo",
          "value" : "海事罚字[2024]08042010011-1-1",
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
          "name" : "caseStatus",
          "value" : "已完成",
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
          "name" : "processType",
          "value" : "fine",
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
          "name" : "processTypeName",
          "value" : "罚款(元)",
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
          "name" : "punishObjName",
          "value" : "浙江永航海运有限公司",
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
          "name" : "punishObjAddress",
          "value" : "江省舟山市普陀区东港街道沙田街56号汇隆大厦1501室",
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
          "name" : "illegalFact",
          "value" : "2024年11月19日，泉州海事局泉港海事处的执法人员在行政检查中发现“同茂7”轮于2024年11月19日在肖厝物流三号泊位载运固体散装货物船舶未按照船岸安全检查表的要求进行检查和填写的行为。经进一步调查，发现该轮本航次2024年11月19日0300时在肖厝物流公司3号泊位完成易流态货物高岭土3600吨、长石600吨的装货作业，并填写《散货船装卸船/岸安全检查表》，其中《散货船装卸船/岸安全检查表》第17项“已经讨论货物是否需要平仓”中备注“需要平仓”，实际上本次载运高岭土1493吨、长石500吨的NO.1号货舱完货后未进行平仓作业；《散货船装卸船/岸安全检查表》第14项“货物装卸能力和每台装货机运行限制是否已经通知船方/码头”中，未填写完整。该轮载运固体散装货物船舶未按照船岸安全检查表的要求进行检查和填写的行为违反了《海运固体散装货物安全监督管理规定》第十七条第一款之规定，浙江永航海运有限公司作为船舶所有人应当承担相应责任。",
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
          "name" : "punishResult",
          "value" : "罚款人民币壹万叁仟伍佰元整",
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
          "name" : "orgCode",
          "value" : "010202080207",
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
          "name" : "deliveryDate",
          "value" : "2024-11-29",
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
          "name" : "creatorName",
          "value" : "-1",
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
          "name" : "createTime",
          "value" : "2024-11-29 10:16:50",
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
          "name" : "decisionDate",
          "value" : "2024-11-29",
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




var mmsiSql="""

select  SHIP_REG_NO,SHIP_FIRSTREG_NO,ship_id  from  bds_base_data.sc_ship_basic_data  where  status_flag='1' and delete_flag='0'
and mmsi=#{mmsi} and  rownum=1
"""
var shipDetail=db.base_data.camel().selectOne(mmsiSql);

if(shipDetail==null){
    return response.json({
    resultCode: 200,
    resultMsg: "未查询到船舶基本信息",
    total: 0,
    result: []
    });   
}
var shipRegNo=shipDetail.get("shipRegNo");
var shipFirstRegNo=shipDetail.get("shipFirstregNo");
var shipId=shipDetail.get("shipId");

if((shipRegNo==null||shipRegNo=="")&&(shipFirstRegNo==null||shipFirstRegNo=="")&&(shipId==null||shipId=="")){
return response.json({
    resultCode: 200,
    resultMsg: "未查询到船舶基本信息",
    total: 0,
    result: []
    });
}


//行政处罚总数
/*
var shipPunCaseNumSql="""
   select count（*） as SHIP_PUN_CASE_NUMS from BDS_BIZ_DATA.PUN_PUNISH_DECISION  where substr(case_no, 0, (length(CASE_NO) - 2)) in
       (select CASE_NO
          FROM  BDS_BIZ_DATA.PUN_CASE_STATUS
         where SHIP_REG_NO = #{shipRegNo}
            or SHIP_REG_NO = #{shipId}
           or SHIP_REG_NO = #{shipFirstregNo}
           and delete_flag = '0')
   and delete_flag = '0'
"""
*/
var shipPunCaseNumSql = """
select distinct count(a.DECISION_ID) over() SHIP_PUN_CASE_NUMS
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
//行政处罚详情
/*
var shipPunCaseListSql="""

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

*/
var shipPunCaseListSql="""
select distinct count(a.DECISION_ID) over() total_count,
                a.punish_basis as PUNISH_REFERENCE,
                a.ORG_NAME,
                a.case_no,
                b.case_status as case_status,
                b.punish_type as PROCESS_TYPE,
                (case
                  when b.punish_type = 'criticism' then
                   '通报批评'
                  when b.punish_type = 'detainCert' then
                   '暂扣适任证书(月)'
                  when b.punish_type = 'detainPapers' then
                   '暂扣其他许可证件(月)'
                  when b.punish_type = 'fine' then
                   '罚款(元)'
                  when b.punish_type = 'limitScope' then
                   '限制从业范围'
                  when b.punish_type = 'revokeCert' then
                   '吊销适任证书'
                  when b.punish_type = 'revokePapers' then
                   '吊销其他许可证件'
                  when b.punish_type = 'seizureEarn' then
                   '没收违法所得(元)'
                  when b.punish_type = 'seizureEarn' then
                   '没收违法所得(元)'
                  when b.punish_type = 'seizureFinance' then
                   '没收非法财务'
                  when b.punish_type = 'seizureShip' then
                   '没收船舶'
                  when b.punish_type = 'warning' then
                   '警告'
                  else
                   ''
                end) PROCESS_TYPE_NAME,
                a.party_name as PUNISH_OBJ_NAME,
                a.contact_addr as PUNISH_OBJ_ADDRESS,
                a.illegal_fact,
                a.punish_result,
                a.org_code,
                to_char(a.punish_date, 'yyyy-mm-dd') DELIVERY_DATE,
                a.creator_name,
                a.create_date CREATE_TIME,
                to_char(a.punish_date, 'yyyy-mm-dd')  decision_Date
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
   ?{shipId,and c.ship_id=#{shipId}
   ?{shipNameCn,and c.ship_name_cn=#{shipNameCn}}
   ?{shipRegNo,and d.ship_reg_no=#{shipRegNo}}
   ?{shipFirstregNo,and d.SHIP_FIRSTREG_NO=#{shipFirstregNo}} 
   order by decision_Date desc
"""

if(code == 'nums'){
  var nums=db.ods_data.camel().selectOne(shipPunCaseNumSql);
  var re={}
  re.put("nums",nums.get("shipPunCaseNums")::int);
  return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: re
});
  
}else if(code == 'list'){
var list=db.ods_data.camel().select(shipPunCaseListSql);
  var totalCount=0;
        for(item in list){
           
            totalCount = item.get("totalCount");
        }     
      
        return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            result: list
            
      });

}else{
     return response.json({
    resultCode: 200,
    resultMsg: "请输入正确请求参数【code】",
    result: []
    });
}
