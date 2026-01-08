{
  "properties" : { },
  "id" : "e034915e721341cbb52c46cbda2a92d7",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "全国行政处罚数据",
  "createTime" : null,
  "updateTime" : 1745568406535,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/listPunishInfo",
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
    "value" : "CN20159215756",
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
    "name" : "page",
    "value" : "1",
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
    "name" : "size",
    "value" : "10",
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
    "name" : "shipNameCn",
    "value" : null,
    "description" : null,
    "required" : false,
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"list\": [{\n            \"rowno\": \"1\",\n            \"totalCount\": \"2\",\n            \"punishReference\": \"\",\n            \"orgName\": \"岳阳洪湖海事处\",\n            \"caseNo\": \"2022120705002811\",\n            \"caseStatus\": \"已完成\",\n            \"processType\": \"\",\n            \"processTypeName\": \"\",\n            \"punishObjName\": \"泰州益嘉物流有限公司\",\n            \"punishObjAddress\": \"泰州市高港区永安洲镇疏港北路\",\n            \"illegalFact\": \"“益嘉66”船舶进出内河港口，未按规定向海事管理机构报告进出港信息，违反《中华人民共和国内河交通安全管理条例》第十八条，《中华人民共和国船舶安全监督规则》第十条、第十一条、第十二条、第十三条，鉴于该船舶违法行为首次发生，违法行为轻微并及时改正，依据《中华人民共和国行政处罚法》第三十三条第一款、《长江海事局关于公布海事违法行为“不予处罚”“首违可不罚”清单的通告》，符合“首违可不罚”条件。\",\n            \"punishResult\": \"不予处罚\",\n            \"orgCode\": \"0102021202070203\",\n            \"deliveryDate\": \"2022-05-17\",\n            \"creatorName\": \"常少东\",\n            \"createTime\": \"2022-05-17 16:18:31\",\n            \"decisionDate\": \"2022-05-17\"\n        }, {\n            \"rowno\": \"2\",\n            \"totalCount\": \"2\",\n            \"punishReference\": \"《长江干线水上交通安全管理特别规定》第三十四条第（二）项\",\n            \"orgName\": \"中华人民共和国荆州海事局\",\n            \"caseNo\": \"2021120603006011\",\n            \"caseStatus\": \"已完成\",\n            \"processType\": \"fine\",\n            \"processTypeName\": \"罚款(元)\",\n            \"punishObjName\": \"泰州益嘉物流有限公司\",\n            \"punishObjAddress\": \"泰州市高港区永安洲镇疏港北路\",\n            \"illegalFact\": \"2021年3月2日，泰州益嘉物流有限公司所属益嘉66轮从泰州装载黄豆7489吨上行，目的港重庆。2021年3月18日1530时绣林大队执法人员在文艺村临时停泊区发现益嘉66轮船舶实际吃水船艏5.0米、船中5.1米、船尾5.0米，而长江航道局公布的航道维护尺度（3月13日-3月19日）荆州四码头至城陵矶水道维护水深为4.3米，按照规定，航经长江中下游的普货船舶富余水深不小于0.2米，该轮吃水最大不应超过4.1米，该轮构成了未遵守海事管理机构公布的富余水深要求的违法事实，其行为违反了《长江干线水上交通安全管理特别规定》第六条之规定。\",\n            \"punishResult\": \"罚款人民币壹万伍仟元整\",\n            \"orgCode\": \"0102021202060202\",\n            \"deliveryDate\": \"2021-04-05\",\n            \"creatorName\": \"张其亮\",\n            \"createTime\": \"2021-04-05 16:12:41\",\n            \"decisionDate\": \"2021-04-05\"\n        }],\n        \"total\": 2\n    }\n}",
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
        "name" : "list",
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
          }, {
            "name" : "totalCount",
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
            "name" : "punishReference",
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
            "name" : "orgName",
            "value" : "岳阳洪湖海事处",
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
            "value" : "2022120705002811",
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
            "name" : "processTypeName",
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
            "name" : "punishObjName",
            "value" : "泰州益嘉物流有限公司",
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
            "value" : "泰州市高港区永安洲镇疏港北路",
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
            "value" : "“益嘉66”船舶进出内河港口，未按规定向海事管理机构报告进出港信息，违反《中华人民共和国内河交通安全管理条例》第十八条，《中华人民共和国船舶安全监督规则》第十条、第十一条、第十二条、第十三条，鉴于该船舶违法行为首次发生，违法行为轻微并及时改正，依据《中华人民共和国行政处罚法》第三十三条第一款、《长江海事局关于公布海事违法行为“不予处罚”“首违可不罚”清单的通告》，符合“首违可不罚”条件。",
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
            "value" : "不予处罚",
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
            "value" : "0102021202070203",
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
            "value" : "2022-05-17",
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
            "value" : "常少东",
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
            "value" : "2022-05-17 16:18:31",
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
            "value" : "2022-05-17",
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
        "value" : "2",
        "description" : "",
        "required" : false,
        "dataType" : "Integer",
        "type" : null,
        "defaultValue" : null,
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
import response

//shipId=(shipId==null?"":shipId).replace("<em>","").replace("</em>","");
//shipRegNo=(shipRegNo==null?"":shipRegNo).replace("<em>","").replace("</em>","");
//shipFirstregNo=(shipFirstregNo==null?"":shipFirstregNo).replace("<em>","").replace("</em>","");
//shipNameCn=(shipNameCn==null?"":shipNameCn).replace("<em>","").replace("</em>","");
if(shipId==""&&shipRegNo==""&&shipFirstregNo==""&&shipNameCn==""){
      return response.json({
    resultCode: 200,
    resultMsg: "参数不可全为空!",
    data: back 
});
}
/*
var cbSql;

cbSql = """
select a.*
  from (select rownum rowno, b.*
          from (select distinct count(ID) over() total_count,
                                PUNISH_REFERENCE,
                                ORG_NAME,
                                PUNISH_OBJECT_ID,
                                CASE_NO,
                                CASE_STATUS,
                                (case PROCESS_TYPE
                                  when 1 then
                                   '警告'
                                  when 2 then
                                   '罚款'
                                  when 3 then
                                   '扣留证书'
                                  when 4 then
                                   '吊销证书'
                                  else
                                   ''
                                end) PROCESS_TYPE_NAME,
                                PROCESS_TYPE,
                                PUNISH_OBJ_NAME,
                                PUNISH_OBJ_ADDRESS,
                                ILLEGAL_FACT,
                                PUNISH_RESULT,
                                BANK_NAME,
                                REVIEW_DEP_NAME,
                                ORG_CODE,
                                REFER_LAW,
                                SUIT_TIME,
                                SUIT_COURT,
                                NEXT_OPERATOR_CARD_ID,
                                NEXT_OPERATOR_NAME,
                                to_char(DELIVERY_DATE, 'yyyy-mm-dd') DELIVERY_DATE,
                                DELIVERY_LOCATION,
                                DELIVERY_PERSON2,
                                DELIVERY_PERSON1,
                                DELIVERY_REMARK,
                                ILLEGAL_SCORE_FLAG,
                                ILLEGAL_SCORE,
                                CREATE_NAME,
                                CREATE_TIME,
                                to_char(DECISION_Date, 'yyyy-mm-dd') DECISION_Date
                 from bds_biz_data.PUN_PUNISH_DECISION
                 where substr(case_no, 0, (length(CASE_NO) - 2)) in
                       (select CASE_NO
                          FROM bds_biz_data.PUN_CASE_STATUS

                           <trim prefix="WHERE (" prefixOverrides="AND |OR ">
                  <if test="shipRegNo != null and shipRegNo!=''">
                            SHIP_REG_NO =#{shipRegNo} 
                   </if>
                    <if test="shipId != null and shipId!=''">
                           or SHIP_REG_NO =#{shipId} 
                   </if>
                   <if test="shipFirstregNo != null and shipFirstregNo!=''">
                         or SHIP_REG_NO =#{shipFirstregNo}
                   </if>
                   <if test="shipNameCn != null and shipNameCn!=''">
                         or  instr(ILLEGAL_SUBJECT_NAME ,#{shipNameCn})>0
                   </if>
                )
                   
                  
                   and delete_flag='0'
                 </trim>

            )and delete_flag='0'
               ) b
              where rownum <= (#{page}*#{size})) a
              where a.rowno >((#{page}-1)* #{size}) 
               order by  decision_Date desc
""";

*/
var cbSql = """
select t2.* from
(select rownum rowno, t1.* from
(select distinct count(a.DECISION_ID) over() total_count,
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
   ?{shipId,and c.ship_id=#{shipId}}
   ?{shipNameCn,and c.ship_name_cn=#{shipNameCn}}
   ?{shipRegNo,and d.ship_reg_no=#{shipRegNo}}
   ?{shipFirstregNo,and d.SHIP_FIRSTREG_NO=#{shipFirstregNo}} 
   order by decision_Date desc) t1 
   where rownum <= (#{page}*#{size}))t2
  where t2.rowno >((#{page}-1)* #{size}) 
 order by  decision_Date desc
"""

var list=db.ods_data.camel().select(cbSql);
      
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
 




