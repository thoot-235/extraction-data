{
  "properties" : { },
  "id" : "9b018f070f0a41f2a24bf84054c51299",
  "script" : null,
  "groupId" : "a2c371bd05c44f67b356888b31fa69af",
  "name" : "信用信息列表详情",
  "createTime" : null,
  "updateTime" : 1729756830205,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getCreditDataDetail",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"id\": \"UY3ioauwHGdlXJIV11elyA==\",\r\n    \"name\": \"浦海213\",\r\n    \"cardNo\": \"CN20047041980\",\r\n    \"breakDegree\": \"绿码\",\r\n    \"type\": \"ship\",\r\n    \"dataSource\": \"长航信用\",\r\n    \"cate\": \"credit\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"basicInfo\": {\n            \"dataSource\": \"长航信用\",\n            \"bodyType\": \"船舶\",\n            \"name\": \"浦海213\",\n            \"breakDegree\": \"蓝码\",\n            \"cardNo\": \"CN20047041980\",\n            \"safeValue\": \"1000\"\n        },\n        \"pointDetail\": []\n    }\n}",
  "description" : "",
  "requestBodyDefinition" : {
    "name" : "",
    "value" : "",
    "description" : "",
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ {
      "name" : "id",
      "value" : "UY3ioauwHGdlXJIV11elyA==",
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
      "name" : "name",
      "value" : "浦海213",
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
      "name" : "cardNo",
      "value" : "CN20047041980",
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
      "name" : "breakDegree",
      "value" : "绿码",
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
      "name" : "type",
      "value" : "ship",
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
      "name" : "dataSource",
      "value" : "长航信用",
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
      "name" : "cate",
      "value" : "credit",
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
      "name" : "result",
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
        "name" : "basicInfo",
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
          "name" : "dataSource",
          "value" : "长航信用",
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
          "name" : "bodyType",
          "value" : "船舶",
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
          "name" : "name",
          "value" : "浦海213",
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
          "name" : "breakDegree",
          "value" : "蓝码",
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
          "name" : "cardNo",
          "value" : "CN20047041980",
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
          "name" : "safeValue",
          "value" : "1000",
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
      }, {
        "name" : "pointDetail",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Array",
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
import com.alibaba.cloud.commons.lang.StringUtils
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
import response;
import 'org.springblade.common.utils.ZzSecurityHelper' as ZzSecurityHelper;

var id=body.id;
id=ZzSecurityHelper.decryptAES(id);
var name=(body.name==null?"":body.name).replace("<em>","").replace("</em>","");
var cardNo=(body.cardNo==null?"":body.cardNo).replace("<em>","").replace("</em>","");
var breakDegree=body.breakDegree;
var cardNo=body.cardNo;
var type=body.type;
var dataSource=body.dataSource;

if(dataSource == "长航信用"){
  if(type == "ship"){
    var shipPointSql = """
      select '长航信用' as data_source,
              '船舶' as body_type,
              a.ship_name_cn as name,
              a.rule_grade_name as break_degree,
              a.ship_id as card_no,
              to_char(a.safe_value) as safe_value
        from ods_hs_share.xy_view_eval_ship a
        where ship_id = #{id}
    """   
    var shipPoint = db.ods_data.camel().selectOne(shipPointSql);
    var shipDetailSql = """
    select  case when b.type = 'break' then '失信'
                 else '守信' end as type,
            b.object_code,
            b.object_name,
            b.case_no,
            b.break_name,
            b.break_rule_name,
            b.deduct_points,
            case when b.is_serious_break = 0 then '否'
                 else '是' end as is_serious_break,
            to_char(b.decision_time,'yyyy-MM-dd') as decision_time,
            to_char(b.exp_date,'yyyy-MM-dd') as exp_date,
            b.break_reason_desc
        from  ods_hs_share.xy_view_case_ship b
      where b.object_code = #{id}
    """
    var shipDetail = db.ods_data.camel().select(shipDetailSql);
    var res = {};
    res.put("basicInfo",shipPoint);
    res.put("pointDetail",shipDetail);
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
    });
  }else if (type == "company"){
    var companyPointSql = """
      select '长航信用' as data_source,
              '船公司' as body_type,
              a.company_name as name,
              a.rule_grade_name as break_degree,
              a.company_uscc as card_no,
              to_char(a.safe_value) as safe_value
        from ods_hs_share.xy_view_eval_company a
        where company_uscc = #{id}
    """
    var companyPoint = db.ods_data.camel().selectOne(companyPointSql);
    var companyDetailSql = """
    select  case when b.type = 'break' then '失信'
                 else '守信' end as type,
            b.object_code,
            b.object_name,
            b.case_no,
            b.break_name,
            b.break_rule_name,
            b.deduct_points,
            case when b.is_serious_break = 0 then '否'
                 else '是' end as is_serious_break,
            to_char(b.decision_time,'yyyy-MM-dd') as decision_time,
            to_char(b.exp_date,'yyyy-MM-dd') as exp_date,
            b.break_reason_desc
        from  ods_hs_share.xy_view_case_company b
      where b.object_code = #{id}
    """
    var companyDetail = db.ods_data.camel().select(companyDetailSql);
    var res = {};
    res.put("basicInfo",companyPoint);
    res.put("pointDetail",companyDetail);
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
    });
  }else if (type == "person"){
    var id=ZzSecurityHelper.decryptAES(id);
    var personPointSql = """
      select '长航信用' as data_source,
              '船员' as body_type,
              a.boatman_name as name,
              a.rule_grade_name as break_degree,
              substr(a.card_no,0,4)||'**********'||substr(a.card_no,15)  as card_no,
              to_char(a.safe_value) as safe_value
        from ods_hs_share.xy_view_eval_boatman a
        where card_no = #{id}
    """
    var personPoint = db.ods_data.camel().selectOne(personPointSql);
    var personDetailSql = """
    select  case when b.type = 'break' then '失信'
                 else '守信' end as type,
            substr(b.object_code,0,4)||'**********'||substr(b.object_code,15) as object_code,
            b.object_name,
            b.case_no,
            b.break_name,
            b.break_rule_name,
            b.deduct_points,
            case when b.is_serious_break = 0 then '否'
                 else '是' end as is_serious_break,
            to_char(b.decision_time,'yyyy-MM-dd') as decision_time,
            to_char(b.exp_date,'yyyy-MM-dd') as exp_date,
            b.break_reason_desc
        from  ods_hs_share.xy_view_case_boatman b
      where b.object_code = #{id}
    """
    var personDetail = db.ods_data.camel().select(personDetailSql);
    var res = {};
    if(personPoint!=null){
      personPoint.put("_cardNo",DesensitizationUtil.idCardNum(personPoint.get("cardNo")));
    }
   
    for(item in personDetail){
      item.put("objectCode",DesensitizationUtil.idCardNum(item.get("objectCode")));
    }
    res.put("basicInfo",personPoint);
    res.put("pointDetail",personDetail);
    return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
    });
  }
}

if(dataSource == "三峡信用"){
    if(type == "ship"){
        var shipPointSql = """
            select '三峡信用' as data_source, --数据源
                  '船舶' as body_type,
                  a.fd_object_name as name,
                  --8 as order_num,
                  --'三峡信用' as break_degree,
                  a.shipidentification as card_no,
                  --a.shipidentification as id,
                  to_char(1000 + nvl(b.nums, 0)) as safe_value
              from (select distinct fd_object_name, shipidentification
                      from ods_hs_share.sxdd_changhang_crednote
                    where fd_cerdit_object = '2'
                      and shipidentification = #{id}
                      ) a
              left join (select fd_object_name, sum(fd_credit_count) nums
                          from (select fd_object_name,
                                        case
                                          when fd_add_or_cut = '1' then
                                          fd_credit_count
                                          when fd_add_or_cut = '2' then
                                          0 - fd_credit_count
                                        end fd_credit_count
                                  from ods_hs_share.sxdd_changhang_crednote
                                  where fd_cerdit_object = '2'
                                    and shipidentification = #{id}
                                    and fd_happen_data >= trunc(sysdate, 'yyyy'))
                          group by fd_object_name) b
                on a.fd_object_name = b.fd_object_name
            order by safe_value
        """
        var shipPoint = db.ods_data.camel().selectOne(shipPointSql);

        var shipDetailSql = """
                select fd_credit_note_num,
                    fd_object_name,
                    case
                        when fd_add_or_cut = '1' then
                        fd_credit_count
                        when fd_add_or_cut = '2' then
                        0 - fd_credit_count
                    end fd_credit_count,
                    to_char(fd_happen_data, 'yyyy-MM-dd') fd_happen_data,
                    fd_happen_address_c,
                    case
                        when fd_cerdit_object = '1' then
                        '船公司'
                        when fd_cerdit_object = '2' then
                        '船舶'
                        when fd_cerdit_object = '3' then
                        '船员'
                    end fd_cerdit_object,
                    fd_object_num,
                    shipidentification,
                    fd_rule_desc,
                    fd_credit_desc
                from sxdd_changhang_crednote
                where shipidentification = #{id}
                and fd_cerdit_object = '2'
                --and fd_happen_data >= trunc(sysdate, 'yyyy')
                order by fd_happen_data desc
        """
        var shipDetail = db.ods_data.camel().select(shipDetailSql);
        var res = {};
        res.put("basicInfo",shipPoint);
        res.put("pointDetail",shipDetail);
        return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            result: res
        });
    }else if(type == "company"){
        var companyPointSql = """
            select '三峡信用' as data_source, --数据源
                  '船公司' as body_type,
                  a.fd_object_name as name,
                  a.fd_object_num as card_no,
                  to_char(1000 + nvl(b.nums, 0)) as safe_value
              from (select distinct fd_object_name, fd_object_num 
                      from ods_hs_share.sxdd_changhang_crednote
                    where fd_cerdit_object = '1'
                      and fd_object_num = #{id}
                      ) a
              left join (select fd_object_name, sum(fd_credit_count) nums
                          from (select fd_object_name,
                                        case
                                          when fd_add_or_cut = '1' then
                                          fd_credit_count
                                          when fd_add_or_cut = '2' then
                                          0 - fd_credit_count
                                        end fd_credit_count
                                  from ods_hs_share.sxdd_changhang_crednote
                                  where fd_cerdit_object = '1'
                                    and fd_object_num = #{id}
                                    and fd_happen_data >= trunc(sysdate, 'yyyy'))
                          group by fd_object_name) b
                on a.fd_object_name = b.fd_object_name
            order by safe_value
        """
        var companyPoint = db.ods_data.camel().selectOne(companyPointSql);

        var companyDetailSql = """
                select fd_credit_note_num,
                    fd_object_name,
                    case
                        when fd_add_or_cut = '1' then
                        fd_credit_count
                        when fd_add_or_cut = '2' then
                        0 - fd_credit_count
                    end fd_credit_count,
                    to_char(fd_happen_data, 'yyyy-MM-dd') fd_happen_data,
                    fd_happen_address_c,
                    case
                        when fd_cerdit_object = '1' then
                        '船公司'
                        when fd_cerdit_object = '2' then
                        '船舶'
                        when fd_cerdit_object = '3' then
                        '船员'
                    end fd_cerdit_object,
                    fd_object_num,
                    shipidentification,
                    fd_rule_desc,
                    fd_credit_desc
                from sxdd_changhang_crednote
                where fd_object_num = #{id}
                and fd_cerdit_object = '1'
                --and fd_happen_data >= trunc(sysdate, 'yyyy')
                order by fd_happen_data desc
        """
        var companyDetail = db.ods_data.camel().select(companyDetailSql);
        var res = {};
        res.put("basicInfo",companyPoint);
        res.put("pointDetail",companyDetail);
        return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            result: res
        });

    }else if(type == "person"){
        var personPointSql = """
            select '三峡信用' as data_source, --数据源
                  '船员' as body_type,
                  a.fd_object_name as name,
                  substr(a.fd_object_num,0,4)||'**********'||substr(a.fd_object_num,15)  as card_no,
                  to_char(1000 + nvl(b.nums, 0)) as safe_value
              from (select distinct fd_object_name, fd_object_num 
                      from ods_hs_share.sxdd_changhang_crednote
                    where fd_cerdit_object = '3'
                      and fd_object_num = #{id}
                      ) a
              left join (select fd_object_name, sum(fd_credit_count) nums
                          from (select fd_object_name,
                                        case
                                          when fd_add_or_cut = '1' then
                                          fd_credit_count
                                          when fd_add_or_cut = '2' then
                                          0 - fd_credit_count
                                        end fd_credit_count
                                  from ods_hs_share.sxdd_changhang_crednote
                                  where fd_cerdit_object = '3'
                                    and fd_object_num = #{id}
                                    and fd_happen_data >= trunc(sysdate, 'yyyy'))
                          group by fd_object_name) b
                on a.fd_object_name = b.fd_object_name
            order by safe_value
        """
        var personPoint = db.ods_data.camel().selectOne(personPointSql);

        var personDetailSql = """
                select fd_credit_note_num,
                    fd_object_name,
                    case
                        when fd_add_or_cut = '1' then
                        fd_credit_count
                        when fd_add_or_cut = '2' then
                        0 - fd_credit_count
                    end fd_credit_count,
                    to_char(fd_happen_data, 'yyyy-MM-dd') fd_happen_data,
                    fd_happen_address_c,
                    case
                        when fd_cerdit_object = '1' then
                        '船公司'
                        when fd_cerdit_object = '2' then
                        '船舶'
                        when fd_cerdit_object = '3' then
                        '船员'
                    end fd_cerdit_object,
                    substr(fd_object_num,0,4)||'**********'||substr(fd_object_num,15)  as fd_object_num,
                    shipidentification,
                    fd_rule_desc,
                    fd_credit_desc
                from sxdd_changhang_crednote
                where fd_object_num = #{id}
                and fd_cerdit_object = '3'
                --and fd_happen_data >= trunc(sysdate, 'yyyy')
                order by fd_happen_data desc
        """
        var personDetail = db.ods_data.camel().select(personDetailSql);
        var res = {};
        res.put("basicInfo",personPoint);
        res.put("pointDetail",personDetail);
        return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            result: res
        });

    }
}

var sql = """select  to_char(y.ID) id ,
        #{name} name,
        #{breakDegree} break_degree,
        #{cardNo} card_no,
      case when y.DATA_SOURCE='1' then '信用管理'
        when y.DATA_SOURCE='2'  then '行政处罚'
       else '其他系统' end system_SOURCE ,
       '红黄黑' data_source,
      -- y.CREATE_TIME,
      -- y.QCREIID,
      -- y.CREATE_NAME,
      -- y.USER_NAME,
       to_char(y.HEAR_BUREAU_ID) HEAR_BUREAU_ID,--所属局ID
       to_char(y.HEAR_BUREAU_NAME) HEAR_BUREAU_NAME,--所属局名称
       to_char(y.LINKMAN_NAME) LINKMAN_NAME,--联系人姓名
       to_char(y.LINKMAN_CARD_ID) LINKMAN_CARD_ID,--联系人身份证
       to_char(y.LINKMAN_PHONE) LINKMAN_PHONE,--联系人电话
      case when  y.CREDIJS_BODY_TYPE='1' then '船舶'
      when y.CREDIJS_BODY_TYPE='1' then '自然人'
     when y.CREDIJS_BODY_TYPE='3' then '法人及非法人组织'
      else '其他' end CREDIJS_BODY_TYPE,
      '' PUBLIC_TIME,--公示日期
       to_char(y.AFFIRM_TIME,'yyyy-mm-dd hh24:mi:ss') AFFIRM_TIME,--认定日期
      case when  y.STATUS='0' then '审批流程'
      when  y.STATUS='1' then '公示'
      when  y.STATUS='2' then '异议'
      when  y.STATUS='3' then '作废'
      when  y.STATUS='4' then '生效'
      when  y.STATUS='5' then '失效'
      when  y.STATUS='6' then '退出'
        else '其他' end STATUS_cn
        ,
      -- y.BOINS_ID,
    --   y.EXTEND1,
       --y.EXTEND2,
      -- y.EXTEND3,
       '' POSJS_STATUS_cn,
       to_char(y.AFFIRM_REASON) AFFIRM_REASON,
       to_char(y.AFFIRM_REASON_DESC) AFFIRM_REASON_DESC,
       to_char(nvl(y.INDATE,'')) INDATE,--有效期 (X个月)
       to_char(y.EXPIRY_DATE,'yyyy-mm-dd') EXPIRY_DATE,
      to_char(y.ESC_DATE,'yyyy-mm-dd') ESC_DATE,
       to_char(y.ESC_REASON) ESC_REASON ,
       to_char(y.CASE_NO)  CASE_NO
  from (select * from 
           JS_CREDIJS_YELLOW_LIST
         where id = #{id}) y
  left join jS_CREDIJS_BODY_NATURAL_PERSON p
    on p.info_id = y.id
  left join JS_CREDIJS_BODY_LEGAL_PERSON l
    on l.info_id = y.id
  left join JS_CREDIJS_BODY_SHIP s
    on s.info_id = y.id
union all
select  to_char(y.ID) id ,
  #{name} name,
        #{breakDegree} break_degree,
        #{cardNo} card_no,
      case when y.DATA_SOURCE='1' then '信用管理'
        when y.DATA_SOURCE='2'  then '行政处罚'
       else '其他系统' end system_SOURCE ,
       '红黄黑' data_source,
      -- y.CREATE_TIME,
      -- y.QCREIID,
      -- y.CREATE_NAME,
      -- y.USER_NAME,
      to_char(y.HEAR_BUREAU_ID) HEAR_BUREAU_ID,--所属局ID
        to_char(y.HEAR_BUREAU_NAME) HEAR_BUREAU_NAME,--所属局名称
       to_char(y.LINKMAN_NAME) LINKMAN_NAME ,--联系人姓名
       to_char(y.LINKMAN_CARD_ID) LINKMAN_CARD_ID,--联系人身份证
       to_char(y.LINKMAN_PHONE) LINKMAN_PHONE,--联系人电话
      case when  y.CREDIJS_BODY_TYPE='1' then '船舶'
      when y.CREDIJS_BODY_TYPE='1' then '自然人'
     when y.CREDIJS_BODY_TYPE='3' then '法人及非法人组织'
      else '其他' end CREDIJS_BODY_TYPE,
        to_char(y.PUBLIC_TIME,'yyyy-mm-dd hh24:mi:ss') PUBLIC_TIME,--公示日期
       to_char(y.AFFIRM_TIME,'yyyy-mm-dd'),--认定日期
      case when  y.STATUS='0' then '审批流程'
      when  y.STATUS='1' then '公示'
      when  y.STATUS='2' then '异议'
      when  y.STATUS='3' then '作废'
      when  y.STATUS='4' then '生效'
      when  y.STATUS='5' then '失效'
      when  y.STATUS='6' then '退出'
        else '其他' end STATUS_cn
        ,
      -- y.BOINS_ID,
    --   y.EXTEND1,
       --y.EXTEND2,
      -- y.EXTEND3,
       case when y.POSJS_STATUS='1' then '发布' 
        else '未发布' end POSJS_STATUS_cn,
       to_char(y.AFFIRM_REASON) AFFIRM_REASON,
       to_char(y.AFFIRM_REASON_DESC) AFFIRM_REASON_DESC,
       to_char(nvl(y.INDATE,'')) INDATE,--有效期 (X个月)
       to_char(y.EXPIRY_DATE,'yyyy-mm-dd') EXPIRY_DATE,
      to_char(y.ESC_DATE,'yyyy-mm-dd') ESC_DATE,
       to_char(y.ESC_REASON) ESC_REASON,
       to_char(y.CASE_NO) CASE_NO
  from (select *
          from JS_CREDIJS_RED_LIST
         where id =  #{id}) y
  left join jS_CREDIJS_BODY_NATURAL_PERSON p
    on p.info_id = y.id
  left join JS_CREDIJS_BODY_LEGAL_PERSON l
    on l.info_id = y.id
  left join JS_CREDIJS_BODY_SHIP s
    on s.info_id = y.id
union all
select  to_char(y.ID) id,
  #{name} name,
        #{breakDegree} break_degree,
        #{cardNo} card_no,
      case when y.DATA_SOURCE='1' then '信用管理'
        when y.DATA_SOURCE='2'  then '行政处罚'
       else '其他系统' end system_SOURCE ,
       '红黄黑' data_source,
      -- y.CREATE_TIME,
      -- y.QCREIID,
      -- y.CREATE_NAME,
      -- y.USER_NAME,
       to_char(y.HEAR_BUREAU_ID) HEAR_BUREAU_ID,--所属局ID
       to_char(y.HEAR_BUREAU_NAME) HEAR_BUREAU_NAME ,--所属局名称
        to_char(y.LINKMAN_NAME) LINKMAN_NAME,--联系人姓名
       to_char(y.LINKMAN_CARD_ID) LINKMAN_CARD_ID ,--联系人身份证
       to_char(y.LINKMAN_PHONE) LINKMAN_PHONE,--联系人电话
      case when  y.CREDIJS_BODY_TYPE='1' then '船舶'
      when y.CREDIJS_BODY_TYPE='1' then '自然人'
     when y.CREDIJS_BODY_TYPE='3' then '法人及非法人组织'
      else '其他' end CREDIJS_BODY_TYPE,
       to_char(y.PUBLIC_TIME,'yyyy-mm-dd hh24:mi:ss') PUBLIC_TIME,--公示日期
       to_char(y.AFFIRM_TIME,'yyyy-mm-dd') AFFIRM_TIME,--认定日期
      case when  y.STATUS='0' then '审批流程'
      when  y.STATUS='1' then '公示'
      when  y.STATUS='2' then '异议'
      when  y.STATUS='3' then '作废'
      when  y.STATUS='4' then '生效'
      when  y.STATUS='5' then '失效'
      when  y.STATUS='6' then '退出'
        else '其他' end STATUS_cn
        ,
      -- y.BOINS_ID,
    --   y.EXTEND1,
       --y.EXTEND2,
      -- y.EXTEND3,
       case when y.POSJS_STATUS='1' then '发布' 
        else '未发布' end POSJS_STATUS_cn,
       to_char(y.AFFIRM_REASON) AFFIRM_REASON,
       to_char(y.AFFIRM_REASON_DESC) AFFIRM_REASON_DESC,
       to_char(nvl(y.INDATE,'')) INDATE,--有效期 (X个月)
       to_char(y.EXPIRY_DATE,'yyyy-mm-dd') EXPIRY_DATE,
      to_char(y.ESC_DATE,'yyyy-mm-dd') ESC_DATE,
       to_char(y.ESC_REASON) ESC_REASON,
       to_char(y.CASE_NO) CASE_NO
  from (select *
          from JS_CREDIJS_BLACK_LIST
         where id = #{id}) y
  left join jS_CREDIJS_BODY_NATURAL_PERSON p
    on p.info_id = y.id
  left join JS_CREDIJS_BODY_LEGAL_PERSON l
    on l.info_id = y.id
  left join JS_CREDIJS_BODY_SHIP s
    on s.info_id = y.id
      union all 
      select obj.GACT_ID id,
        #{name} name,
        #{breakDegree} break_degree,
        #{cardNo} card_no,
        case when info.DATA_SOURCE='1' then '动态执法' 
        when info.DATA_SOURCE='2' then '海事通' 
         when info.DATA_SOURCE='3' then '综合执法'
         else '其他' end system_SOURCE ,
        '信用数据域' data_source,
     '' HEAR_BUREAU_ID,--所属局ID
    '' HEAR_BUREAU_NAME,--所属局名称
      '' LINKMAN_NAME,--联系人姓名
      ''  LINKMAN_CARD_ID,--联系人身份证
      ''  LINKMAN_PHONE,--联系人电话
       case when  obj.OBJ_TYPE='1' then '从业人员'
       when  obj.OBJ_TYPE='2' then '从业单位'
      when  obj.OBJ_TYPE='3' then '船舶'
       else '其他' end CREDIJS_BODY_TYPE,
        obj.PUB_TIME PUBLIC_TIME,--公示日期
       to_char(info.HAPPEN_TIME,'yyyy-mm-dd') AFFIRM_TIME,--认定日期
       '公示' STATUS_cn,
        '发布' POSJS_STATUS_cn,
        nvl(obj.extend2,obj.ACT_DETAIL) AFFIRM_REASON,
        info.ACC_DESC AFFIRM_REASON_DESC,
        '' INDATE,--有效期 (X个月)
        to_char(obj.PUB_AGING,'yyyy-mm-dd') EXPIRY_DATE,
       '' ESC_DATE,
       '' ESC_REASON,
       '' CASE_NO
       from GATHER_RTLN_ACT_CREDIT_OBJ obj
   left join GATHER_ILLEGAL_ACT_INFO info
     on obj.GACT_ID = info.record_id
   left join BAS_COMPANY_INFO cmp
     on cmp.record_id = obj.OBJ_ID
  where obj.OBJ_TYPE = '2'
  and obj.pub_status=1
  and obj.gact_id=#{id}

  """
  if(type=='ship' &&dataSource=='信用数据域'){
    sql="""
         select info.record_ID id,
        #{name} name,
        '' break_degree,
        ''  card_no,
        case when info.DATA_SOURCE='1' then '动态执法' 
        when info.DATA_SOURCE='2' then '海事通' 
         when info.DATA_SOURCE='3' then '综合执法'
         else '其他' end system_SOURCE ,
        '信用数据域' data_source,
     '' HEAR_BUREAU_ID,--所属局ID
    '' HEAR_BUREAU_NAME,--所属局名称
      '' LINKMAN_NAME,--联系人姓名
      ''  LINKMAN_CARD_ID,--联系人身份证
      ''  LINKMAN_PHONE,--联系人电话
       '船舶' CREDIJS_BODY_TYPE,
   
       to_char(info.REGISTER_TIME,'yyyy-mm-dd') AFFIRM_TIME,--认定日期
       '公示' STATUS_cn,
        '发布' POSJS_STATUS_cn,
       ''  AFFIRM_REASON,
        info.ACC_DESC AFFIRM_REASON_DESC,
        '' INDATE,--有效期 (X个月)
        '' EXPIRY_DATE,
       '' ESC_DATE,
       '' ESC_REASON,
       '' CASE_NO,
         to_char(info.HAPPEN_TIME, 'yyyy-mm-dd hh24:mi:ss')  HAPPEN_TIME,--发生时间
       info.HAPPEN_ADDR--发生地点
       from GATHER_ILLEGAL_ACT_INFO info
       where record_id=#{id}
    """
  }
var ret = db.biz_data.camel().selectOne(sql);
if(ret!=null){
      ret.put("linkmanCardId", DesensitizationUtil.idCardNum(ret.get("linkmanCardId")));
      ret.put("_linkmanPhone", DesensitizationUtil.isFixed(ret.get("linkmanPhone") != null && ret.get("linkmanPhone") != '' ? ret.get("linkmanPhone") : '-'));
}
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: ret
});