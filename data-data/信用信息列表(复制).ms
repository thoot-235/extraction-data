{
  "properties" : { },
  "id" : "copy1706667371315d97561",
  "script" : null,
  "groupId" : "a2c371bd05c44f67b356888b31fa69af",
  "name" : "信用信息列表(复制)",
  "createTime" : null,
  "updateTime" : 1706702708720,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getCreditDataList_copy",
  "method" : "GET",
  "parameters" : [ {
    "name" : "type",
    "value" : "ship",
    "description" : "person、company、ship  人员 公司 船舶三种类型查询",
    "required" : true,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "startTime",
    "value" : "",
    "description" : "开始日期",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "endTime",
    "value" : "",
    "description" : "结束日期",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "keyword",
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
    "required" : false,
    "dataType" : "Integer",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "size",
    "value" : "5",
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
    "name" : "partFlag",
    "value" : "",
    "description" : "传1 是精确",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "id",
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
    "name" : "dataSource",
    "value" : "红黄黑",
    "description" : "长航信用、红黄黑、三峡信用",
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
  }, {
    "name" : "dataSourceType",
    "value" : "",
    "description" : "长航信用：绿码、蓝码、黄码、红码；红黄黑：红名单、黄名单、黑名单",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"total\": 599,\n        \"list\": [{\n            \"dataSource\": \"红黄黑\",\n            \"bodyType\": \"船舶\",\n            \"name\": \"新长江25028\",\n            \"breakDegree\": \"黑名单\",\n            \"cardNo\": \"120812000156\",\n            \"hearBureauId\": \"60-0DIOK1AG-HC93-MLUO-XLU7-WI94587RP5QQ\",\n            \"hearBureauName\": \"南京海事局\",\n            \"affirmReason\": \"\",\n            \"affirmReasonDesc\": \"\",\n            \"indate\": \"个月\",\n            \"dishonestDate\": \"\",\n            \"expiryDate\": \"\",\n            \"id\": \"BLK-56313C05-08C5-491E-A4D9-C26AD85A4CE3\",\n            \"safeValue\": \"\",\n            \"rowId\": \"1\"\n        }, {\n            \"dataSource\": \"红黄黑\",\n            \"bodyType\": \"船舶\",\n            \"name\": \"姜淤货6\",\n            \"breakDegree\": \"黑名单\",\n            \"cardNo\": \"271211000763\",\n            \"hearBureauId\": \"60-0DIOK1AG-HC93-MLUO-XLU7-WI94587RP5QQ\",\n            \"hearBureauName\": \"南京海事局\",\n            \"affirmReason\": \"\",\n            \"affirmReasonDesc\": \"\",\n            \"indate\": \"个月\",\n            \"dishonestDate\": \"\",\n            \"expiryDate\": \"\",\n            \"id\": \"BLK-B1623C27-F7BB-40DA-920A-44780A102A66\",\n            \"safeValue\": \"\",\n            \"rowId\": \"2\"\n        }, {\n            \"dataSource\": \"红黄黑\",\n            \"bodyType\": \"船舶\",\n            \"name\": \"正杰号\",\n            \"breakDegree\": \"黑名单\",\n            \"cardNo\": \"270119000156\",\n            \"hearBureauId\": \"60-0DIOK1AG-HC93-MLUO-XLU7-WI94587RP5QQ\",\n            \"hearBureauName\": \"南京海事局\",\n            \"affirmReason\": \"\",\n            \"affirmReasonDesc\": \"\",\n            \"indate\": \"个月\",\n            \"dishonestDate\": \"\",\n            \"expiryDate\": \"\",\n            \"id\": \"BLK-FAB8075C-F757-4667-B631-2934E061A5FD\",\n            \"safeValue\": \"\",\n            \"rowId\": \"3\"\n        }, {\n            \"dataSource\": \"红黄黑\",\n            \"bodyType\": \"船舶\",\n            \"name\": \"苏鑫海2\",\n            \"breakDegree\": \"黑名单\",\n            \"cardNo\": \"270319000084\",\n            \"hearBureauId\": \"60-0DIOK1AG-HC93-MLUO-XLU7-WI94587RP5QQ\",\n            \"hearBureauName\": \"南京海事局\",\n            \"affirmReason\": \"\",\n            \"affirmReasonDesc\": \"\",\n            \"indate\": \"个月\",\n            \"dishonestDate\": \"\",\n            \"expiryDate\": \"\",\n            \"id\": \"BLK-A9B910A4-6690-4227-A2CE-B24857392709\",\n            \"safeValue\": \"\",\n            \"rowId\": \"4\"\n        }, {\n            \"dataSource\": \"红黄黑\",\n            \"bodyType\": \"船舶\",\n            \"name\": \"象牙光（IVORY RAY）\",\n            \"breakDegree\": \"黑名单\",\n            \"cardNo\": \"IMO9505986\",\n            \"hearBureauId\": \"60-GJJP3U5L-9FM3-58TF-FQR1-I2RY9FUPORSL\",\n            \"hearBureauName\": \"常州海事局\",\n            \"affirmReason\": \"\",\n            \"affirmReasonDesc\": \"\",\n            \"indate\": \"个月\",\n            \"dishonestDate\": \"\",\n            \"expiryDate\": \"\",\n            \"id\": \"BLK-80A33B57-8E0D-4279-B224-C840CDB45EAD\",\n            \"safeValue\": \"\",\n            \"rowId\": \"5\"\n        }]\n    }\n}",
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
      "dataType" : "Object",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "total",
        "value" : "599",
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
            "name" : "dataSource",
            "value" : "红黄黑",
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
            "value" : "新长江25028",
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
            "value" : "黑名单",
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
            "value" : "120812000156",
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
            "name" : "hearBureauId",
            "value" : "60-0DIOK1AG-HC93-MLUO-XLU7-WI94587RP5QQ",
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
            "name" : "hearBureauName",
            "value" : "南京海事局",
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
            "name" : "affirmReason",
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
            "name" : "affirmReasonDesc",
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
            "name" : "indate",
            "value" : "个月",
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
            "name" : "dishonestDate",
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
            "name" : "expiryDate",
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
            "name" : "id",
            "value" : "BLK-56313C05-08C5-491E-A4D9-C26AD85A4CE3",
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
            "name" : "rowId",
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
          } ]
        } ]
      } ]
    } ]
  }
}
================================
import org.ssssssss.magicapi.modules.db.model.PageResult
import com.alibaba.cloud.commons.lang.StringUtils;
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
import response;
import log;
var sql="""""";
var ret=[];
if("person".equals(type)){
  var sqlStart = """
    select data_source,
          '人员' as body_type,
          name,
          break_degree,
          substr(card_no,0,4)||'**********'||substr(card_no,15) as card_no,
          HEAR_BUREAU_ID,
          HEAR_BUREAU_NAME,
          AFFIRM_REASON,
          AFFIRM_REASON_DESC,
          INDATE,
          DISHONEST_DATE,
          EXPIRY_DATE,
          id,
          safe_value
        from (
  """
  
  //长航信用
  var chSql = """
      select distinct '长航信用' as data_source, --数据源
                cast(a.boatman_name as nvarchar2(40)) as name, --名称
                case
                  when a.rule_grade_name = '绿码' then
                   1
                  when a.rule_grade_name = '蓝码' then
                   2
                  when a.rule_grade_name = '黄码' then
                   3
                  when a.rule_grade_name = '红码' then
                   4
                end as order_num, --数据类型排序
                a.rule_grade_name as break_degree, --绿码
                cast(a.card_no as nvarchar2(40)) as card_no, --唯一标识
                N'' as HEAR_BUREAU_ID, --所属局id
                N'' as HEAR_BUREAU_NAME, --所属局名称
                N'' as AFFIRM_REASON, --认定理由
                N'' as AFFIRM_REASON_DESC, --认定理由描述
                N'' as INDATE, --有效期
                to_char(a.update_time,'yyyy-mm-dd hh24:mi:ss') as DISHONEST_DATE, --起草日期
                '' as EXPIRY_DATE, --失效日期
                a.card_no as id, --主键
                to_char(a.safe_value) as safe_value --记分
          from ods_hs_share.xy_view_eval_boatman a
          where 1=1
          ?{partFlag=='1' and keyword!=null and keyword!='', and (a.boatman_name = #{keyword} or a.card_no = #{keyword})}
          ?{partFlag!='1' and keyword!=null and keyword!='', and (a.boatman_name like '%'||#{keyword}||'%' or a.card_no like '%'||#{keyword}||'%')}
          <if test="dataSourceType!=null and dataSourceType!=''">
            and a.rule_grade_name in
            <foreach item='item' collection="dataSourceTypeArray" open="(" separator="," close=")">
              ${item}
            </foreach>
          </if>
  """
  
  //红名单
  var redSql = """
            select distinct '红黄黑' as data_source,
                   p.name,
                   5 order_num ,
                   '红名单' break_degree,
                   p.card_no,
                   y.HEAR_BUREAU_ID,
                   y.HEAR_BUREAU_NAME,
                   y.AFFIRM_REASON,
                   y.AFFIRM_REASON_DESC,
                   y.INDATE||'个月' INDATE,
                   to_char(y.CREATE_TIME, 'yyyy-mm-dd hh24:mi:ss') DISHONEST_DATE,
                   to_char(y.EXPIRY_DATE, 'yyyy-mm-dd hh24:mi:ss')  EXPIRY_DATE,
                   to_char(y.id) id,
                   '' as safe_value
              from jS_CREDIJS_BODY_NATURAL_PERSON p, JS_CREDIJS_RED_LIST y
             where p.info_id = y.id and p.boins_type_id = '1'
                and p.CARD_TYPE = '1'
                ?{partFlag=='1' and keyword!=null and keyword!='',  and (p.name =#{keyword} or p.card_no =#{keyword}) }
                ?{partFlag!='1' and keyword!=null and keyword!='',  and (p.name like  '%'||#{keyword}||'%' or p.card_no like '%'||#{keyword}||'%') }
  """

  //黄名单
  var yellowSql = """
            select distinct '红黄黑' as data_source,
                   p.name,
                   6 order_num ,
                   '黄名单' break_degree,
                   p.card_no,
                   y.HEAR_BUREAU_ID,
                   y.HEAR_BUREAU_NAME,
                   y.AFFIRM_REASON,
                   y.AFFIRM_REASON_DESC,
                   y.INDATE||'个月' INDATE,
                   to_char(y.DISHONESJS_DATE, 'yyyy-mm-dd hh24:mi:ss') DISHONEST_DATE,
                   to_char(y.EXPIRY_DATE, 'yyyy-mm-dd hh24:mi:ss')  EXPIRY_DATE,
                   to_char(y.id) id,
                   '' as safe_value
              from jS_CREDIJS_BODY_NATURAL_PERSON p, JS_CREDIJS_YELLOW_LIST y
             where p.info_id = y.id and p.boins_type_id = '2'
                and p. CARD_TYPE = '1'
                ?{partFlag=='1' and keyword!=null and keyword!='',  and (p.name =#{keyword} or p.card_no =#{keyword}) }
                ?{partFlag!='1' and keyword!=null and keyword!='',  and (p.name like  '%'||#{keyword}||'%' or p.card_no like '%'||#{keyword}||'%') }
  """

  //黑名单
  var blackSql = """
          select distinct '红黄黑' as data_source,
                   p.name,
                   7 order_num ,
                   '黑名单' break_degree,
                   p.card_no,
                   y.HEAR_BUREAU_ID,
                   y.HEAR_BUREAU_NAME,
                   y.AFFIRM_REASON,
                   y.AFFIRM_REASON_DESC,
                   y.INDATE||'个月' INDATE,
                   to_char(y.DISHONESJS_DATE, 'yyyy-mm-dd hh24:mi:ss') DISHONEST_DATE,
                   to_char(y.EXPIRY_DATE, 'yyyy-mm-dd hh24:mi:ss')  EXPIRY_DATE,
                   to_char(y.id) id,
                   '' as safe_value
              from jS_CREDIJS_BODY_NATURAL_PERSON p, JS_CREDIJS_BLACK_LIST y
             where p.info_id = y.id and p.boins_type_id = '3'
                and p.CARD_TYPE = '1'
                ?{partFlag=='1' and keyword!=null and keyword!='',  and (p.name =#{keyword} or p.card_no =#{keyword}) }
                ?{partFlag!='1' and keyword!=null and keyword!='',  and (p.name like  '%'||#{keyword}||'%' or p.card_no like '%'||#{keyword}||'%') }
  """

  //三峡信用
  var sanxiaSql = """
        select data_source,
              name,
              8 as order_num,
              break_degree,
              card_no,
              HEAR_BUREAU_ID,
              HEAR_BUREAU_NAME,
              AFFIRM_REASON,
              AFFIRM_REASON_DESC,
              INDATE,
              DISHONEST_DATE,
              EXPIRY_DATE,
              id,
              to_char(safe_value) as safe_value from (
          select '三峡信用' as data_source, --数据源
                  cast(a.fd_object_name as nvarchar2(40)) as name,
                  8 as order_num,
                  '三峡信用' as break_degree,
                  cast(a.fd_object_num as nvarchar2(40)) as card_no,
                  N'' as HEAR_BUREAU_ID, --所属局id
                  N'' as HEAR_BUREAU_NAME, --所属局名称
                  N'' as AFFIRM_REASON, --认定理由
                  N'' as AFFIRM_REASON_DESC, --认定理由描述
                  N'' as INDATE, --有效期
                  '' as DISHONEST_DATE,
                  '' as EXPIRY_DATE, --失效日期
                  a.fd_object_num as id,
                  1000 + nvl(b.nums, 0) as safe_value
              from (select distinct fd_object_name, fd_object_num
                      from sanxia.sxdd_changhang_crednote
                    where fd_cerdit_object = '3'
                      and fd_object_num is not null
                      ?{partFlag=='1' and keyword!=null and keyword!='', and (fd_object_name = #{keyword} or fd_object_num = #{keyword})}
                      ?{partFlag!='1' and keyword!=null and keyword!='', and (fd_object_name like '%'||#{keyword}||'%' or fd_object_num like '%'||#{keyword}||'%')}) a
              left join (select fd_object_name, sum(fd_credit_count) nums
                          from (select fd_object_name,
                                        case
                                          when fd_add_or_cut = '1' then
                                          fd_credit_count
                                          when fd_add_or_cut = '2' then
                                          0 - fd_credit_count
                                        end fd_credit_count
                                  from sanxia.sxdd_changhang_crednote
                                  where fd_cerdit_object = '3'
                                    and fd_object_num is not null
                                    and fd_happen_data >= trunc(sysdate, 'yyyy')
                                    ?{partFlag=='1' and keyword!=null and keyword!='', and (fd_object_name = #{keyword} or fd_object_num = #{keyword})}
                                    ?{partFlag!='1' and keyword!=null and keyword!='', and (fd_object_name like '%'||#{keyword}||'%' or fd_object_num like '%'||#{keyword}||'%')})
                          group by fd_object_name) b
                on a.fd_object_name = b.fd_object_name
            order by safe_value desc)
  """

  //结束sql
  var sqlEnd = """
      ) order by order_num asc ,DISHONEST_DATE desc
  """
  //union all sql
  var unionSql = """ union all """
/**
  sql="""
    select data_source,'人员' as body_type,name,break_degree,substr(card_no,0,4)||'**********'||substr(card_no,15) as card_no,HEAR_BUREAU_ID,HEAR_BUREAU_NAME,AFFIRM_REASON,AFFIRM_REASON_DESC,INDATE,DISHONEST_DATE,EXPIRY_DATE,id,safe_value
        from (
            select distinct '红黄黑' as data_source,
                   p.name,
                   6 order_num ,
                   '黄名单' break_degree,
                   p.card_no,
                   y.HEAR_BUREAU_ID,
                   y.HEAR_BUREAU_NAME,
                   y.AFFIRM_REASON,
                   y.AFFIRM_REASON_DESC,
                   y.INDATE||'个月' INDATE,
                   to_char(y.DISHONESJS_DATE, 'yyyy-mm-dd hh24:mi:ss') DISHONEST_DATE,
                   to_char(y.EXPIRY_DATE, 'yyyy-mm-dd hh24:mi:ss')  EXPIRY_DATE,
                   to_char(y.id) id,
                   '' as safe_value
              from jS_CREDIJS_BODY_NATURAL_PERSON p, JS_CREDIJS_YELLOW_LIST y
             where p.info_id = y.id and p.boins_type_id = '2'
               and p. CARD_TYPE = '1'
               ?{partFlag=='1' && keyword,  and (p.name =#{keyword} or p.card_no =#{keyword}) }
                ?{partFlag!='1' &&keyword,  and (p.name like  '%'||#{keyword}||'%' or p.card_no like '%'||#{keyword}||'%') }
             union ALL
              select distinct '红黄黑' as data_source,
                   p.name,
                   5 order_num ,
                   '红名单' break_degree,
                   p.card_no,
                   y.HEAR_BUREAU_ID,
                   y.HEAR_BUREAU_NAME,
                   y.AFFIRM_REASON,
                   y.AFFIRM_REASON_DESC,
                   y.INDATE||'个月' INDATE,
                   to_char(y.CREATE_TIME, 'yyyy-mm-dd hh24:mi:ss') DISHONEST_DATE,
                   to_char(y.EXPIRY_DATE, 'yyyy-mm-dd hh24:mi:ss')  EXPIRY_DATE,
                   to_char(y.id) id,
                   '' as safe_value
              from jS_CREDIJS_BODY_NATURAL_PERSON p, JS_CREDIJS_RED_LIST y
             where p.info_id = y.id and p.boins_type_id = '1'
               and p.CARD_TYPE = '1'
            ?{partFlag=='1' && keyword,  and (p.name =#{keyword} or p.card_no =#{keyword}) }
                ?{partFlag!='1' &&keyword,  and (p.name like  '%'||#{keyword}||'%' or p.card_no like '%'||#{keyword}||'%') }
               union ALL
                select distinct '红黄黑' as data_source,
                   p.name,
                   7 order_num ,
                   '黑名单' break_degree,
                   p.card_no,
                   y.HEAR_BUREAU_ID,
                   y.HEAR_BUREAU_NAME,
                   y.AFFIRM_REASON,
                   y.AFFIRM_REASON_DESC,
                   y.INDATE||'个月' INDATE,
                   to_char(y.DISHONESJS_DATE, 'yyyy-mm-dd hh24:mi:ss') DISHONEST_DATE,
                   to_char(y.EXPIRY_DATE, 'yyyy-mm-dd hh24:mi:ss')  EXPIRY_DATE,
                   to_char(y.id) id,
                   '' as safe_value
              from jS_CREDIJS_BODY_NATURAL_PERSON p, JS_CREDIJS_BLACK_LIST y
             where p.info_id = y.id and p.boins_type_id = '3'
               and p.
             CARD_TYPE = '1'
             ?{partFlag=='1' && keyword,  and (p.name =#{keyword} or p.card_no =#{keyword}) }
                ?{partFlag!='1' &&keyword,  and (p.name like  '%'||#{keyword}||'%' or p.card_no like '%'||#{keyword}||'%') }
              union all
              select distinct '长航信用' as data_source, --数据源
                cast(a.boatman_name as nvarchar2(40)) as name, --名称
                case
                  when a.rule_grade_name = '绿码' then
                   1
                  when a.rule_grade_name = '蓝码' then
                   2
                  when a.rule_grade_name = '黄码' then
                   3
                  when a.rule_grade_name = '红码' then
                   4
                end as order_num, --数据类型排序
                a.rule_grade_name as break_degree, --绿码
                cast(a.card_no as nvarchar2(40)) as card_no, --唯一标识
                N'' as HEAR_BUREAU_ID, --所属局id
                N'' as HEAR_BUREAU_NAME, --所属局名称
                N'' as AFFIRM_REASON, --认定理由
                N'' as AFFIRM_REASON_DESC, --认定理由描述
                N'' as INDATE, --有效期
                to_char(a.update_time,'yyyy-mm-dd hh24:mi:ss') as DISHONEST_DATE, --起草日期
                '' as EXPIRY_DATE, --失效日期
                a.card_no as id, --主键
                to_char(a.safe_value) as safe_value --记分
          from ods_hs_share.xy_view_eval_boatman a
          where 1=1
          ?{partFlag=='1' && keyword, and (a.boatman_name = #{keyword} or a.card_no = #{keyword})}
          ?{partFlag!='1' && keyword, and (a.boatman_name like '%'||#{keyword}||'%' or a.card_no like '%'||#{keyword}||'%')}
          <if test="dataSourceType!=null and dataSourceType!=''">
            a.rule_grade_name in
            <foreach item='item' collection="dataSourceTypeArray" open="(" separator="," close=")">
              #{item}
            </foreach>
          </if>
          union all
          select '三峡信用' as data_source, --数据源
                  cast(a.fd_object_name as nvarchar2(40)) as name,
                  8 as order_num,
                  '三峡信用' as break_degree,
                  cast(a.fd_object_num as nvarchar2(40)) as card_no,
                  N'' as HEAR_BUREAU_ID, --所属局id
                  N'' as HEAR_BUREAU_NAME, --所属局名称
                  N'' as AFFIRM_REASON, --认定理由
                  N'' as AFFIRM_REASON_DESC, --认定理由描述
                  N'' as INDATE, --有效期
                  '' as DISHONEST_DATE,
                  '' as EXPIRY_DATE, --失效日期
                  a.fd_object_num as id,
                  to_char(1000 + nvl(b.nums, 0)) as safe_value
              from (select distinct fd_object_name, fd_object_num
                      from sanxia.sxdd_changhang_crednote
                    where fd_cerdit_object = '3'
                      and fd_object_num is not null
                      ?{partFlag=='1' && keyword, and (fd_object_name = #{keyword} or fd_object_num = #{keyword})}
                      ?{partFlag!='1' && keyword, and (fd_object_name like '%'||#{keyword}||'%' or fd_object_num like '%'||#{keyword}||'%')}) a
              left join (select fd_object_name, sum(fd_credit_count) nums
                          from (select fd_object_name,
                                        case
                                          when fd_add_or_cut = '1' then
                                          fd_credit_count
                                          when fd_add_or_cut = '2' then
                                          0 - fd_credit_count
                                        end fd_credit_count
                                  from sanxia.sxdd_changhang_crednote
                                  where fd_cerdit_object = '3'
                                    and fd_object_num is not null
                                    and fd_happen_data >= trunc(sysdate, 'yyyy')
                                    ?{partFlag=='1' && keyword, and (fd_object_name = #{keyword} or fd_object_num = #{keyword})}
                                    ?{partFlag!='1' && keyword, and (fd_object_name like '%'||#{keyword}||'%' or fd_object_num like '%'||#{keyword}||'%')})
                          group by fd_object_name) b
                on a.fd_object_name = b.fd_object_name
            order by safe_value desc
           ) order by order_num asc ,DISHONEST_DATE desc
  """*/

  var sql = """"""
  if("长航信用".equals(dataSource)){
    var dataSourceTypeArray = [];
    var dataSourceTypeArray1 = [];
    if(dataSourceType!="" && dataSourceType != null){
      dataSourceTypeArray1 = dataSourceType.split(",");
      for(item in dataSourceTypeArray1){
        dataSourceTypeArray.add("'"+item+"'");
      }
    }
    sql = sqlStart + chSql + sqlEnd;
  }else if("红黄黑".equals(dataSource)){
    if("红名单".equals(dataSourceType)){
      sql = sqlStart + redSql + sqlEnd;
    }else if("黄名单".equals(dataSourceType)){
      sql = sqlStart + yellowSql + sqlEnd;
    }else if("黑名单".equals(dataSourceType)){
      sql = sqlStart + blackSql + sqlEnd;
    }else{
      sql = sqlStart + redSql + unionSql + yellowSql + unionSql + blackSql + sqlEnd;
    }
  }else if("三峡信用".equals(dataSource)){
    sql = sqlStart + sanxiaSql + sqlEnd;
  }else{
    sql = sqlStart + chSql + unionSql + redSql + unionSql + yellowSql + unionSql + blackSql + unionSql + sanxiaSql + sqlEnd;
  }
  log.info("sql==================="+sql)
  ret=db.biz_data.camel().page(sql);
}
else if("company".equals(type)){
  var sqlStart = """
    select data_source,
          '公司' as body_type,
          name,
          break_degree,
          card_no,
          HEAR_BUREAU_ID,
          HEAR_BUREAU_NAME,
          AFFIRM_REASON,
          AFFIRM_REASON_DESC,
          INDATE,
          DISHONEST_DATE,
          EXPIRY_DATE,
          id,
          safe_value
        from (
  """
  //长航信用
  var chSql = """
        select distinct '长航信用' as data_source, --数据源
                a.company_name as name, --名称
                case
                  when a.rule_grade_name = '绿码' then
                   1
                  when a.rule_grade_name = '蓝码' then
                   2
                  when a.rule_grade_name = '黄码' then
                   3
                  when a.rule_grade_name = '红码' then
                   4
                end as order_num, --数据类型排序
                a.rule_grade_name as break_degree, --绿码
                a.company_uscc as card_no, --唯一标识
                '' as HEAR_BUREAU_ID, --所属局id
                '' as HEAR_BUREAU_NAME, --所属局名称
                '' as AFFIRM_REASON, --认定理由
                '' as AFFIRM_REASON_DESC, --认定理由描述
                '' as INDATE, --有效期
                to_char(a.update_time,'yyyy-mm-dd hh24:mi:ss') as DISHONEST_DATE, --起草日期
                '' as EXPIRY_DATE, --失效日期
                a.company_uscc as id, --主键
                to_char(a.safe_value) as safe_value --记分
          from ods_hs_share.xy_view_eval_company a
          where 1=1
          ?{partFlag=='1' and keyword!=null and keyword!='', and (a.company_name = #{keyword} or a.company_uscc = #{keyword})}
          ?{partFlag!='1' and keyword!=null and keyword!='', and (a.company_name like '%'||#{keyword}||'%' or a.company_uscc like '%'||#{keyword}||'%')}
          <if test="dataSourceType!=null and dataSourceType!=''">
            and a.rule_grade_name in
            <foreach item='item' collection="dataSourceTypeArray" open="(" separator="," close=")">
              ${item}
            </foreach>
          </if>
  """
  
  //红名单
  var redSql = """
      select distinct '红黄黑' as data_source,
               to_char(p.COMPANY_NAME) name,
               5 order_num,
               '红名单' break_degree,
               to_char(p.ADMIN_COUNTERPARjs_CODE) card_no,
               to_char(y.HEAR_BUREAU_ID) HEAR_BUREAU_ID,
               to_char(y.HEAR_BUREAU_NAME) HEAR_BUREAU_NAME,
               to_char(y.AFFIRM_REASON) AFFIRM_REASON ,
               to_char(y.AFFIRM_REASON_DESC) AFFIRM_REASON_DESC,
               to_char(y.INDATE) || '个月' INDATE,
               to_char(y.CREATE_TIME, 'yyyy-mm-dd hh24:mi:ss') DISHONEST_DATE,
               to_char(y.EXPIRY_DATE, 'yyyy-mm-dd hh24:mi:ss') EXPIRY_DATE,
               to_char(y.id) id,
               '' as safe_value
          from JS_CREDIJS_BODY_LEGAL_PERSON p, JS_CREDIJS_RED_LIST y
         where p.info_id = y.id and p.boins_type_id = '1'
         and y.CREDIjs_BODY_TYPE='3'
         ?{partFlag=='1' and keyword!=null and keyword!='', and (p.company_name =#{keyword} or p.ADMIN_COUNTERPARjs_CODE =#{keyword}) }
         ?{partFlag!='1' and keyword!=null and keyword!='',  and (p.company_name like  '%'||#{keyword}||'%' or p.ADMIN_COUNTERPARjs_CODE like '%'||#{keyword}||'%') }
  """

  //黄名单
  var yellowSql = """
      select distinct '红黄黑' as data_source,
               to_char(p.COMPANY_NAME) name,
               6 order_num,
               '黄名单' break_degree,
               to_char(p.ADMIN_COUNTERPARjs_CODE) card_no,
               to_char(y.HEAR_BUREAU_ID) HEAR_BUREAU_ID,
               to_char(y.HEAR_BUREAU_NAME) HEAR_BUREAU_NAME,
               to_char(y.AFFIRM_REASON) AFFIRM_REASON ,
               to_char(y.AFFIRM_REASON_DESC) AFFIRM_REASON_DESC,
               to_char(y.INDATE) || '个月' INDATE,
               to_char(y.DISHONESJS_DATE, 'yyyy-mm-dd hh24:mi:ss') DISHONEST_DATE,
               to_char(y.EXPIRY_DATE, 'yyyy-mm-dd hh24:mi:ss') EXPIRY_DATE,
               to_char(y.id) id,
               '' as safe_value
          from JS_CREDIJS_BODY_LEGAL_PERSON p, JS_CREDIJS_YELLOW_LIST y
         where p.info_id = y.id  and y.CREDIjs_BODY_TYPE='3' and p.boins_type_id = '2'
         ?{partFlag=='1' and keyword!=null and keyword!='', and (p.company_name =#{keyword} or p.ADMIN_COUNTERPARjs_CODE =#{keyword}) }
         ?{partFlag!='1' and keyword!=null and keyword!='',  and (p.company_name like  '%'||#{keyword}||'%' or p.ADMIN_COUNTERPARjs_CODE like '%'||#{keyword}||'%') }
  """

  //黑名单
  var blackSql = """
      select distinct '红黄黑' as data_source,
               to_char(p.COMPANY_NAME) name,
               7 order_num,
               '黑名单' break_degree,
               to_char(p.ADMIN_COUNTERPARjs_CODE) card_no,
               to_char(y.HEAR_BUREAU_ID) HEAR_BUREAU_ID,
               to_char(y.HEAR_BUREAU_NAME) HEAR_BUREAU_NAME,
               to_char(y.AFFIRM_REASON) AFFIRM_REASON ,
               to_char(y.AFFIRM_REASON_DESC) AFFIRM_REASON_DESC,
               to_char(y.INDATE) || '个月' INDATE,
               to_char(y.DISHONESJS_DATE, 'yyyy-mm-dd hh24:mi:ss') DISHONEST_DATE,
               to_char(y.EXPIRY_DATE, 'yyyy-mm-dd hh24:mi:ss') EXPIRY_DATE,
               to_char(y.id) id,
               '' as safe_value
          from JS_CREDIJS_BODY_LEGAL_PERSON p, JS_CREDIJS_BLACK_LIST y
         where p.info_id = y.id  and y.CREDIjs_BODY_TYPE='3' and p.boins_type_id = '3'
          ?{partFlag=='1' and keyword!=null and keyword!='', and (p.company_name =#{keyword} or p.ADMIN_COUNTERPARjs_CODE =#{keyword}) }
         ?{partFlag!='1' and keyword!=null and keyword!='',  and (p.company_name like  '%'||#{keyword}||'%' or p.ADMIN_COUNTERPARjs_CODE like '%'||#{keyword}||'%') }
  """

  //三峡信用
  var sanxiaSql = """
        select '三峡信用' as data_source, --数据源
                  a.fd_object_name as name,
                  8 as order_num,
                  '三峡信用' as break_degree,
                  a.fd_object_num as card_no,
                  '' as HEAR_BUREAU_ID, --所属局id
                  '' as HEAR_BUREAU_NAME, --所属局名称
                  '' as AFFIRM_REASON, --认定理由
                  '' as AFFIRM_REASON_DESC, --认定理由描述
                  '' as INDATE, --有效期
                  '' as DISHONEST_DATE,
                  '' as EXPIRY_DATE, --失效日期
                  a.fd_object_num as id,
                  to_char(1000 + nvl(b.nums, 0)) as safe_value
              from (select distinct fd_object_name, fd_object_num
                      from sanxia.sxdd_changhang_crednote
                    where fd_cerdit_object = '1'
                      and fd_object_num is not null
                      ?{partFlag=='1' and keyword!=null and keyword!='', and (fd_object_name = #{keyword} or fd_object_num = #{keyword})}
                      ?{partFlag!='1' and keyword!=null and keyword!='', and (fd_object_name like '%'||#{keyword}||'%' or fd_object_num like '%'||#{keyword}||'%')}) a
              left join (select fd_object_name, sum(fd_credit_count) nums
                          from (select fd_object_name,
                                        case
                                          when fd_add_or_cut = '1' then
                                          fd_credit_count
                                          when fd_add_or_cut = '2' then
                                          0 - fd_credit_count
                                        end fd_credit_count
                                  from sanxia.sxdd_changhang_crednote
                                  where fd_cerdit_object = '1'
                                    and fd_object_num is not null
                                    and fd_happen_data >= trunc(sysdate, 'yyyy')
                                    ?{partFlag=='1' and keyword!=null and keyword!='', and (fd_object_name = #{keyword} or fd_object_num = #{keyword})}
                                    ?{partFlag!='1' and keyword!=null and keyword!='', and (fd_object_name like '%'||#{keyword}||'%' or fd_object_num like '%'||#{keyword}||'%')})
                          group by fd_object_name) b
                on a.fd_object_name = b.fd_object_name
            order by safe_value
  """

  //结束sql
  var sqlEnd = """
      ) order by order_num asc ,DISHONEST_DATE desc
  """
  //union all sql
  var unionSql = """ union all """
/**
  sql="""
 SELECT data_source,'公司' as body_type,name,break_degree,card_no,HEAR_BUREAU_ID,HEAR_BUREAU_NAME,AFFIRM_REASON,AFFIRM_REASON_DESC,INDATE,DISHONEST_DATE,EXPIRY_DATE,id,safe_value
  FROM (select distinct '红黄黑' as data_source,
               to_char(p.COMPANY_NAME) name,
               5 order_num,
               '红名单' break_degree,
               to_char(p.ADMIN_COUNTERPARjs_CODE) card_no,
               to_char(y.HEAR_BUREAU_ID) HEAR_BUREAU_ID,
               to_char(y.HEAR_BUREAU_NAME) HEAR_BUREAU_NAME,
               to_char(y.AFFIRM_REASON) AFFIRM_REASON ,
               to_char(y.AFFIRM_REASON_DESC) AFFIRM_REASON_DESC,
               to_char(y.INDATE) || '个月' INDATE,
               to_char(y.CREATE_TIME, 'yyyy-mm-dd hh24:mi:ss') DISHONEST_DATE,
               to_char(y.EXPIRY_DATE, 'yyyy-mm-dd hh24:mi:ss') EXPIRY_DATE,
               to_char(y.id) id,
               '' as safe_value
          from JS_CREDIJS_BODY_LEGAL_PERSON p, JS_CREDIJS_RED_LIST y
         where p.info_id = y.id and p.boins_type_id = '1'
         and y.CREDIjs_BODY_TYPE='3'
         ?{partFlag=='1' && keyword, and (p.company_name =#{keyword} or p.ADMIN_COUNTERPARjs_CODE =#{keyword}) }
         ?{partFlag!='1' && keyword,  and (p.company_name like  '%'||#{keyword}||'%' or p.ADMIN_COUNTERPARjs_CODE like '%'||#{keyword}||'%') }
        union ALL
        select distinct '红黄黑' as data_source,
               to_char(p.COMPANY_NAME) name,
               6 order_num,
               '黄名单' break_degree,
               to_char(p.ADMIN_COUNTERPARjs_CODE) card_no,
               to_char(y.HEAR_BUREAU_ID) HEAR_BUREAU_ID,
               to_char(y.HEAR_BUREAU_NAME) HEAR_BUREAU_NAME,
               to_char(y.AFFIRM_REASON) AFFIRM_REASON ,
               to_char(y.AFFIRM_REASON_DESC) AFFIRM_REASON_DESC,
               to_char(y.INDATE) || '个月' INDATE,
               to_char(y.DISHONESJS_DATE, 'yyyy-mm-dd hh24:mi:ss') DISHONEST_DATE,
               to_char(y.EXPIRY_DATE, 'yyyy-mm-dd hh24:mi:ss') EXPIRY_DATE,
               to_char(y.id) id,
               '' as safe_value
          from JS_CREDIJS_BODY_LEGAL_PERSON p, JS_CREDIJS_YELLOW_LIST y
         where p.info_id = y.id  and y.CREDIjs_BODY_TYPE='3' and p.boins_type_id = '2'
         ?{partFlag=='1' && keyword, and (p.company_name =#{keyword} or p.ADMIN_COUNTERPARjs_CODE =#{keyword}) }
         ?{partFlag!='1' && keyword,  and (p.company_name like  '%'||#{keyword}||'%' or p.ADMIN_COUNTERPARjs_CODE like '%'||#{keyword}||'%') }
        union ALL
        select distinct '红黄黑' as data_source,
               to_char(p.COMPANY_NAME) name,
               7 order_num,
               '黑名单' break_degree,
               to_char(p.ADMIN_COUNTERPARjs_CODE) card_no,
               to_char(y.HEAR_BUREAU_ID) HEAR_BUREAU_ID,
               to_char(y.HEAR_BUREAU_NAME) HEAR_BUREAU_NAME,
               to_char(y.AFFIRM_REASON) AFFIRM_REASON ,
               to_char(y.AFFIRM_REASON_DESC) AFFIRM_REASON_DESC,
               to_char(y.INDATE) || '个月' INDATE,
               to_char(y.DISHONESJS_DATE, 'yyyy-mm-dd hh24:mi:ss') DISHONEST_DATE,
               to_char(y.EXPIRY_DATE, 'yyyy-mm-dd hh24:mi:ss') EXPIRY_DATE,
               to_char(y.id) id,
               '' as safe_value
          from JS_CREDIJS_BODY_LEGAL_PERSON p, JS_CREDIJS_BLACK_LIST y
         where p.info_id = y.id  and y.CREDIjs_BODY_TYPE='3' and p.boins_type_id = '3'
          ?{partFlag=='1' && keyword, and (p.company_name =#{keyword} or p.ADMIN_COUNTERPARjs_CODE =#{keyword}) }
         ?{partFlag!='1' && keyword,  and (p.company_name like  '%'||#{keyword}||'%' or p.ADMIN_COUNTERPARjs_CODE like '%'||#{keyword}||'%') }
        union all
        select distinct '长航信用' as data_source, --数据源
                a.company_name as name, --名称
                case
                  when a.rule_grade_name = '绿码' then
                   1
                  when a.rule_grade_name = '蓝码' then
                   2
                  when a.rule_grade_name = '黄码' then
                   3
                  when a.rule_grade_name = '红码' then
                   4
                end as order_num, --数据类型排序
                a.rule_grade_name as break_degree, --绿码
                a.company_uscc as card_no, --唯一标识
                '' as HEAR_BUREAU_ID, --所属局id
                '' as HEAR_BUREAU_NAME, --所属局名称
                '' as AFFIRM_REASON, --认定理由
                '' as AFFIRM_REASON_DESC, --认定理由描述
                '' as INDATE, --有效期
                to_char(a.update_time,'yyyy-mm-dd hh24:mi:ss') as DISHONEST_DATE, --起草日期
                '' as EXPIRY_DATE, --失效日期
                a.company_uscc as id, --主键
                to_char(a.safe_value) as safe_value --记分
          from ods_hs_share.xy_view_eval_company a
          where 1=1
          ?{partFlag=='1' && keyword, and (a.company_name = #{keyword} or a.company_uscc = #{keyword})}
          ?{partFlag!='1' && keyword, and (a.company_name like '%'||#{keyword}||'%' or a.company_uscc like '%'||#{keyword}||'%')}
          union all
          select '三峡信用' as data_source, --数据源
                  a.fd_object_name as name,
                  8 as order_num,
                  '三峡信用' as break_degree,
                  a.fd_object_num as card_no,
                  '' as HEAR_BUREAU_ID, --所属局id
                  '' as HEAR_BUREAU_NAME, --所属局名称
                  '' as AFFIRM_REASON, --认定理由
                  '' as AFFIRM_REASON_DESC, --认定理由描述
                  '' as INDATE, --有效期
                  '' as DISHONEST_DATE,
                  '' as EXPIRY_DATE, --失效日期
                  a.fd_object_num as id,
                  to_char(1000 + nvl(b.nums, 0)) as safe_value
              from (select distinct fd_object_name, fd_object_num
                      from sanxia.sxdd_changhang_crednote
                    where fd_cerdit_object = '1'
                      and fd_object_num is not null
                      ?{partFlag=='1' && keyword, and (fd_object_name = #{keyword} or fd_object_num = #{keyword})}
                      ?{partFlag!='1' && keyword, and (fd_object_name like '%'||#{keyword}||'%' or fd_object_num like '%'||#{keyword}||'%')}) a
              left join (select fd_object_name, sum(fd_credit_count) nums
                          from (select fd_object_name,
                                        case
                                          when fd_add_or_cut = '1' then
                                          fd_credit_count
                                          when fd_add_or_cut = '2' then
                                          0 - fd_credit_count
                                        end fd_credit_count
                                  from sanxia.sxdd_changhang_crednote
                                  where fd_cerdit_object = '1'
                                    and fd_object_num is not null
                                    and fd_happen_data >= trunc(sysdate, 'yyyy')
                                    ?{partFlag=='1' && keyword, and (fd_object_name = #{keyword} or fd_object_num = #{keyword})}
                                    ?{partFlag!='1' && keyword, and (fd_object_name like '%'||#{keyword}||'%' or fd_object_num like '%'||#{keyword}||'%')})
                          group by fd_object_name) b
                on a.fd_object_name = b.fd_object_name
            order by safe_value
        )
 order by order_num, DISHONEST_DATE desc
  """*/

  if("长航信用".equals(dataSource)){
    var dataSourceTypeArray = [];
    var dataSourceTypeArray1 = [];
    if(dataSourceType!="" && dataSourceType != null){
      dataSourceTypeArray1 = dataSourceType.split(",");
      for(item in dataSourceTypeArray1){
        dataSourceTypeArray.add("'"+item+"'");
      }
    }
    sql = sqlStart + chSql + sqlEnd;
  }else if("红黄黑".equals(dataSource)){
    if("红名单".equals(dataSourceType)){
      sql = sqlStart + redSql + sqlEnd;
    }else if("黄名单".equals(dataSourceType)){
      sql = sqlStart + yellowSql + sqlEnd;
    }else if("黑名单".equals(dataSourceType)){
      sql = sqlStart + blackSql + sqlEnd;
    }else{
      sql = sqlStart + redSql + unionSql + yellowSql + unionSql + blackSql + sqlEnd;
    }
  }else if("三峡信用".equals(dataSource)){
    sql = sqlStart + sanxiaSql + sqlEnd;
  }else{
    sql = sqlStart + chSql + unionSql + redSql + unionSql + yellowSql + unionSql + blackSql + unionSql + sanxiaSql + sqlEnd;
  }
  log.info("sql==================="+sql)
  ret=db.biz_data.camel().page(sql);
  
}
else if("ship".equals(type)){
  
  var sqlStart = """
    select data_source,
          '船舶' as body_type,
          name,
          break_degree,
          card_no,
          HEAR_BUREAU_ID,
          HEAR_BUREAU_NAME,
          AFFIRM_REASON,
          AFFIRM_REASON_DESC,
          INDATE,
          DISHONEST_DATE,
          EXPIRY_DATE,
          id,
          safe_value
        from (
  """
  //长航信用
  var chSql = """
      select distinct '长航信用' as data_source, --数据源
                a.ship_name_cn as name, --名称
                case
                  when a.rule_grade_name = '绿码' then
                   1
                  when a.rule_grade_name = '蓝码' then
                   2
                  when a.rule_grade_name = '黄码' then
                   3
                  when a.rule_grade_name = '红码' then
                   4
                end as order_num, --数据类型排序
                a.rule_grade_name as break_degree, --绿码
                a.ship_id as card_no, --唯一标识
                '' as HEAR_BUREAU_ID, --所属局id
                '' as HEAR_BUREAU_NAME, --所属局名称
                '' as AFFIRM_REASON, --认定理由
                '' as AFFIRM_REASON_DESC, --认定理由描述
                '' as INDATE, --有效期
                to_char(a.update_time,'yyyy-mm-dd hh24:mi:ss') as DISHONEST_DATE, --起草日期
                '' as EXPIRY_DATE, --失效日期
                a.ship_id as id, --主键
                to_char(a.safe_value) as safe_value --记分
          from ods_hs_share.xy_view_eval_ship a
          where 1=1
          ?{partFlag=='1' and keyword!=null and keyword!='', and (a.ship_name_cn = #{keyword} or a.ship_id = #{keyword})}
          ?{partFlag!='1' and keyword!=null and keyword!='', and (a.ship_name_cn like '%'||#{keyword}||'%' or a.ship_id like '%'||#{keyword}||'%')}
          <if test="dataSourceType!=null and dataSourceType!=''">
            and a.rule_grade_name in
            <foreach item='item' collection="dataSourceTypeArray" open="(" separator="," close=")">
              ${item}
            </foreach>
          </if>
  """
  
  //红名单
  var redSql = """
      SELECT distinct '红黄黑' as data_source,
                to_char(nvl(SHIP_CHINESE_NAME, SHIP_ENGLISH_NAME)) as name,
                5 order_num,
                '红名单' break_degree,
                to_char(SHIP_REGISTRATION_NO) as card_no,
                to_char(r.HEAR_BUREAU_ID) HEAR_BUREAU_ID,
                to_char(r.HEAR_BUREAU_NAME) HEAR_BUREAU_NAME,
                to_char(r.AFFIRM_REASON) AFFIRM_REASON,
                to_char(r.AFFIRM_REASON_DESC) AFFIRM_REASON_DESC,
                to_char(r.INDATE || '个月') INDATE,
                to_char(r.CREATE_TIME, 'yyyy-mm-dd hh24:mi:ss') DISHONEST_DATE,
                to_char(r.EXPIRY_DATE, 'yyyy-mm-dd hh24:mi:ss') EXPIRY_DATE,
                to_char(r.id) id,
                '' as safe_value
          FROM JS_CREDIJS_BODY_SHIP ship, JS_CREDIJS_red_LIST r
         where ship.info_id = r.id and ship.boins_type_id = '1'
          ?{partFlag=='1' and keyword!=null and keyword!='', and (trim(ship.SHIP_CHINESE_NAME) =#{keyword} or trim(ship.SHIP_ENGLISH_NAME) =#{keyword} or trim(ship.SHIP_REGISTRATION_NO )= #{keyword})}
          ?{partFlag!='1' and keyword!=null and keyword!='', and (ship.SHIP_CHINESE_NAME like  '%'||#{keyword}||'%' or ship.SHIP_ENGLISH_NAME like  '%'||#{keyword}||'%' or ship.SHIP_REGISTRATION_NO like  '%'||#{keyword}||'%')}
  """

  //黄名单
  var yellowSql = """
      SELECT distinct '红黄黑' as data_source,
                to_char(nvl(SHIP_CHINESE_NAME, SHIP_ENGLISH_NAME)) as name,
                6 order_num,
                '黄名单' break_degree,
                to_char(SHIP_REGISTRATION_NO) as card_no,
                to_char(r.HEAR_BUREAU_ID) HEAR_BUREAU_ID,
                to_char(r.HEAR_BUREAU_NAME) HEAR_BUREAU_NAME,
                to_char(r.AFFIRM_REASON) AFFIRM_REASON,
                to_char(r.AFFIRM_REASON_DESC) AFFIRM_REASON_DESC,
                to_char(r.INDATE || '个月') INDATE,
                to_char(r.DISHONESjs_DATE, 'yyyy-mm-dd hh24:mi:ss') DISHONEST_DATE,
                to_char(r.EXPIRY_DATE, 'yyyy-mm-dd hh24:mi:ss') EXPIRY_DATE,
                to_char(r.id) id,
                '' as safe_value
          FROM JS_CREDIJS_BODY_SHIP ship,
                JS_CREDIJS_yellow_LIST            r
         where ship.info_id = r.id and ship.boins_type_id = '2'
          ?{partFlag=='1' and keyword!=null and keyword!='', and (trim(ship.SHIP_CHINESE_NAME) =#{keyword} or trim(ship.SHIP_ENGLISH_NAME) =#{keyword} or trim(ship.SHIP_REGISTRATION_NO )= #{keyword})}
         ?{partFlag!='1' and keyword!=null and keyword!='' , and (ship.SHIP_CHINESE_NAME like  '%'||#{keyword}||'%' or ship.SHIP_ENGLISH_NAME like  '%'||#{keyword}||'%' or ship.SHIP_REGISTRATION_NO like  '%'||#{keyword}||'%')}
  """

  //黑名单
  var blackSql = """
      SELECT distinct '红黄黑' as data_source,
                to_char(nvl(SHIP_CHINESE_NAME, SHIP_ENGLISH_NAME)) as name,
                7 order_num,
                '黑名单' break_degree,
                to_char(SHIP_REGISTRATION_NO) as card_no,
                to_char(r.HEAR_BUREAU_ID) HEAR_BUREAU_ID,
                to_char(r.HEAR_BUREAU_NAME) HEAR_BUREAU_NAME,
                to_char(r.AFFIRM_REASON) AFFIRM_REASON,
                to_char(r.AFFIRM_REASON_DESC) AFFIRM_REASON_DESC,
                to_char(r.INDATE || '个月') INDATE,
                to_char(r.DISHONESjs_DATE, 'yyyy-mm-dd hh24:mi:ss') DISHONEST_DATE,
                to_char(r.EXPIRY_DATE, 'yyyy-mm-dd hh24:mi:ss') EXPIRY_DATE,
                to_char(r.id) id,
                '' as safe_value
          FROM JS_CREDIJS_BODY_SHIP ship,
                JS_CREDIJS_BLACK_LIST             r
         where ship.info_id = r.id and ship.boins_type_id = '3'
          ?{partFlag=='1' and keyword!=null and keyword!='', and (trim(ship.SHIP_CHINESE_NAME) =#{keyword} or trim(ship.SHIP_ENGLISH_NAME) =#{keyword} or trim(ship.SHIP_REGISTRATION_NO )= #{keyword})}
         ?{partFlag!='1' and keyword!=null and keyword!='' , and (ship.SHIP_CHINESE_NAME like  '%'||#{keyword}||'%' or ship.SHIP_ENGLISH_NAME like  '%'||#{keyword}||'%' or ship.SHIP_REGISTRATION_NO like  '%'||#{keyword}||'%')}
  """

  //三峡信用
  var sanxiaSql = """
      select '三峡信用' as data_source, --数据源
                  a.fd_object_name as name,
                  8 as order_num,
                  '三峡信用' as break_degree,
                  a.shipidentification as card_no,
                  '' as HEAR_BUREAU_ID, --所属局id
                  '' as HEAR_BUREAU_NAME, --所属局名称
                  '' as AFFIRM_REASON, --认定理由
                  '' as AFFIRM_REASON_DESC, --认定理由描述
                  '' as INDATE, --有效期
                  '' as DISHONEST_DATE,
                  '' as EXPIRY_DATE, --失效日期
                  a.shipidentification as id,
                  to_char(1000 + nvl(b.nums, 0)) as safe_value
              from (select distinct fd_object_name, shipidentification
                      from sanxia.sxdd_changhang_crednote
                    where fd_cerdit_object = '2'
                      and shipidentification is not null
                      ?{partFlag=='1' and keyword!=null and keyword!='', and (fd_object_name = #{keyword} or fd_object_num = #{keyword})}
                      ?{partFlag!='1' and keyword!=null and keyword!='', and (fd_object_name like '%'||#{keyword}||'%' or fd_object_num like '%'||#{keyword}||'%')}
                      ) a
              left join (select fd_object_name, sum(fd_credit_count) nums
                          from (select fd_object_name,
                                        case
                                          when fd_add_or_cut = '1' then
                                          fd_credit_count
                                          when fd_add_or_cut = '2' then
                                          0 - fd_credit_count
                                        end fd_credit_count
                                  from sanxia.sxdd_changhang_crednote
                                  where fd_cerdit_object = '2'
                                    and shipidentification is not null
                                    and fd_happen_data >= trunc(sysdate, 'yyyy')
                                    ?{partFlag=='1' and keyword!=null and keyword!='', and (fd_object_name = #{keyword} or fd_object_num = #{keyword})}
                                    ?{partFlag!='1' and keyword!=null and keyword!='', and (fd_object_name like '%'||#{keyword}||'%' or fd_object_num like '%'||#{keyword}||'%')})
                          group by fd_object_name) b
                on a.fd_object_name = b.fd_object_name
            order by safe_value
  """

  //结束sql
  var sqlEnd = """
      ) order by order_num asc ,DISHONEST_DATE desc
  """
  //union all sql
  var unionSql = """ union all """

/**
    sql="""
select data_source,
       '船舶' as body_type,
       name,
       break_degree,
       card_no,
       HEAR_BUREAU_ID,
       HEAR_BUREAU_NAME,
       AFFIRM_REASON,
       AFFIRM_REASON_DESC,
       INDATE,
       DISHONEST_DATE,
       EXPIRY_DATE,
       id,
       safe_value
  from (
        
        SELECT distinct '红黄黑' as data_source,
                to_char(nvl(SHIP_CHINESE_NAME, SHIP_ENGLISH_NAME)) as name,
                5 order_num,
                '红名单' break_degree,
                to_char(SHIP_REGISTRATION_NO) as card_no,
                to_char(r.HEAR_BUREAU_ID) HEAR_BUREAU_ID,
                to_char(r.HEAR_BUREAU_NAME) HEAR_BUREAU_NAME,
                to_char(r.AFFIRM_REASON) AFFIRM_REASON,
                to_char(r.AFFIRM_REASON_DESC) AFFIRM_REASON_DESC,
                to_char(r.INDATE || '个月') INDATE,
                to_char(r.CREATE_TIME, 'yyyy-mm-dd hh24:mi:ss') DISHONEST_DATE,
                to_char(r.EXPIRY_DATE, 'yyyy-mm-dd hh24:mi:ss') EXPIRY_DATE,
                to_char(r.id) id,
                '' as safe_value
          FROM JS_CREDIJS_BODY_SHIP ship, JS_CREDIJS_red_LIST r
         where ship.info_id = r.id and ship.boins_type_id = '1'
          ?{partFlag=='1' && keyword, and (trim(ship.SHIP_CHINESE_NAME) =#{keyword} or trim(ship.SHIP_ENGLISH_NAME) =#{keyword} or trim(ship.SHIP_REGISTRATION_NO )= #{keyword})}
          ?{partFlag!='1' && keyword, and (ship.SHIP_CHINESE_NAME like  '%'||#{keyword}||'%' or ship.SHIP_ENGLISH_NAME like  '%'||#{keyword}||'%' or ship.SHIP_REGISTRATION_NO like  '%'||#{keyword}||'%')}
        union all
        SELECT distinct '红黄黑' as data_source,
                to_char(nvl(SHIP_CHINESE_NAME, SHIP_ENGLISH_NAME)) as name,
                6 order_num,
                '黄名单' break_degree,
                to_char(SHIP_REGISTRATION_NO) as card_no,
                to_char(r.HEAR_BUREAU_ID) HEAR_BUREAU_ID,
                to_char(r.HEAR_BUREAU_NAME) HEAR_BUREAU_NAME,
                to_char(r.AFFIRM_REASON) AFFIRM_REASON,
                to_char(r.AFFIRM_REASON_DESC) AFFIRM_REASON_DESC,
                to_char(r.INDATE || '个月') INDATE,
                to_char(r.DISHONESjs_DATE, 'yyyy-mm-dd hh24:mi:ss') DISHONEST_DATE,
                to_char(r.EXPIRY_DATE, 'yyyy-mm-dd hh24:mi:ss') EXPIRY_DATE,
                to_char(r.id) id,
                '' as safe_value
          FROM JS_CREDIJS_BODY_SHIP ship,
                JS_CREDIJS_yellow_LIST            r
         where ship.info_id = r.id and ship.boins_type_id = '2'
          ?{partFlag=='1' && keyword, and (trim(ship.SHIP_CHINESE_NAME) =#{keyword} or trim(ship.SHIP_ENGLISH_NAME) =#{keyword} or trim(ship.SHIP_REGISTRATION_NO )= #{keyword})}
         ?{partFlag!='1' && keyword , and (ship.SHIP_CHINESE_NAME like  '%'||#{keyword}||'%' or ship.SHIP_ENGLISH_NAME like  '%'||#{keyword}||'%' or ship.SHIP_REGISTRATION_NO like  '%'||#{keyword}||'%')}
        union all
        SELECT distinct '红黄黑' as data_source,
                to_char(nvl(SHIP_CHINESE_NAME, SHIP_ENGLISH_NAME)) as name,
                7 order_num,
                '黑名单' break_degree,
                to_char(SHIP_REGISTRATION_NO) as card_no,
                to_char(r.HEAR_BUREAU_ID) HEAR_BUREAU_ID,
                to_char(r.HEAR_BUREAU_NAME) HEAR_BUREAU_NAME,
                to_char(r.AFFIRM_REASON) AFFIRM_REASON,
                to_char(r.AFFIRM_REASON_DESC) AFFIRM_REASON_DESC,
                to_char(r.INDATE || '个月') INDATE,
                to_char(r.DISHONESjs_DATE, 'yyyy-mm-dd hh24:mi:ss') DISHONEST_DATE,
                to_char(r.EXPIRY_DATE, 'yyyy-mm-dd hh24:mi:ss') EXPIRY_DATE,
                to_char(r.id) id,
                '' as safe_value
          FROM JS_CREDIJS_BODY_SHIP ship,
                JS_CREDIJS_BLACK_LIST             r
         where ship.info_id = r.id and ship.boins_type_id = '3'
          ?{partFlag=='1' && keyword, and (trim(ship.SHIP_CHINESE_NAME) =#{keyword} or trim(ship.SHIP_ENGLISH_NAME) =#{keyword} or trim(ship.SHIP_REGISTRATION_NO )= #{keyword})}
         ?{partFlag!='1' && keyword , and (ship.SHIP_CHINESE_NAME like  '%'||#{keyword}||'%' or ship.SHIP_ENGLISH_NAME like  '%'||#{keyword}||'%' or ship.SHIP_REGISTRATION_NO like  '%'||#{keyword}||'%')}
        union all
        select distinct '长航信用' as data_source, --数据源
                a.ship_name_cn as name, --名称
                case
                  when a.rule_grade_name = '绿码' then
                   1
                  when a.rule_grade_name = '蓝码' then
                   2
                  when a.rule_grade_name = '黄码' then
                   3
                  when a.rule_grade_name = '红码' then
                   4
                end as order_num, --数据类型排序
                a.rule_grade_name as break_degree, --绿码
                a.ship_id as card_no, --唯一标识
                '' as HEAR_BUREAU_ID, --所属局id
                '' as HEAR_BUREAU_NAME, --所属局名称
                '' as AFFIRM_REASON, --认定理由
                '' as AFFIRM_REASON_DESC, --认定理由描述
                '' as INDATE, --有效期
                to_char(a.update_time,'yyyy-mm-dd hh24:mi:ss') as DISHONEST_DATE, --起草日期
                '' as EXPIRY_DATE, --失效日期
                a.ship_id as id, --主键
                to_char(a.safe_value) as safe_value --记分
          from ods_hs_share.xy_view_eval_ship a
          where 1=1
          ?{partFlag=='1' && keyword, and (a.ship_name_cn = #{keyword} or a.ship_id = #{keyword})}
          ?{partFlag!='1' && keyword, and (a.ship_name_cn like '%'||#{keyword}||'%' or a.ship_id like '%'||#{keyword}||'%')}
          union all 
          select '三峡信用' as data_source, --数据源
                  a.fd_object_name as name,
                  8 as order_num,
                  '三峡信用' as break_degree,
                  a.shipidentification as card_no,
                  '' as HEAR_BUREAU_ID, --所属局id
                  '' as HEAR_BUREAU_NAME, --所属局名称
                  '' as AFFIRM_REASON, --认定理由
                  '' as AFFIRM_REASON_DESC, --认定理由描述
                  '' as INDATE, --有效期
                  '' as DISHONEST_DATE,
                  '' as EXPIRY_DATE, --失效日期
                  a.shipidentification as id,
                  to_char(1000 + nvl(b.nums, 0)) as safe_value
              from (select distinct fd_object_name, shipidentification
                      from sanxia.sxdd_changhang_crednote
                    where fd_cerdit_object = '2'
                      and shipidentification is not null
                      ?{partFlag=='1' && keyword, and (fd_object_name = #{keyword} or fd_object_num = #{keyword})}
                      ?{partFlag!='1' && keyword, and (fd_object_name like '%'||#{keyword}||'%' or fd_object_num like '%'||#{keyword}||'%')}
                      ) a
              left join (select fd_object_name, sum(fd_credit_count) nums
                          from (select fd_object_name,
                                        case
                                          when fd_add_or_cut = '1' then
                                          fd_credit_count
                                          when fd_add_or_cut = '2' then
                                          0 - fd_credit_count
                                        end fd_credit_count
                                  from sanxia.sxdd_changhang_crednote
                                  where fd_cerdit_object = '2'
                                    and shipidentification is not null
                                    and fd_happen_data >= trunc(sysdate, 'yyyy')
                                    ?{partFlag=='1' && keyword, and (fd_object_name = #{keyword} or fd_object_num = #{keyword})}
                                    ?{partFlag!='1' && keyword, and (fd_object_name like '%'||#{keyword}||'%' or fd_object_num like '%'||#{keyword}||'%')})
                          group by fd_object_name) b
                on a.fd_object_name = b.fd_object_name
            order by safe_value
        )
        where name is not null
 order by order_num asc, DISHONEST_DATE desc
    """*/

  if("长航信用".equals(dataSource)){
    var dataSourceTypeArray = [];
    var dataSourceTypeArray1 = [];
    if(dataSourceType!="" && dataSourceType != null){
      dataSourceTypeArray1 = dataSourceType.split(",");
      for(item in dataSourceTypeArray1){
        dataSourceTypeArray.add("'"+item+"'");
      }
    }
    sql = sqlStart + chSql + sqlEnd;
  }else if("红黄黑".equals(dataSource)){
    if("红名单".equals(dataSourceType)){
      sql = sqlStart + redSql + sqlEnd;
    }else if("黄名单".equals(dataSourceType)){
      sql = sqlStart + yellowSql + sqlEnd;
    }else if("黑名单".equals(dataSourceType)){
      sql = sqlStart + blackSql + sqlEnd;
    }else{
      sql = sqlStart + redSql + unionSql + yellowSql + unionSql + blackSql + sqlEnd;
    }
  }else if("三峡信用".equals(dataSource)){
    sql = sqlStart + sanxiaSql + sqlEnd;
  }else{
    sql = sqlStart + chSql + unionSql + redSql + unionSql + yellowSql + unionSql + blackSql + unionSql + sanxiaSql + sqlEnd;
  }
  log.info("sql==================="+sql)
   ret=db.biz_data.camel().page(sql);
}
else{
  return response.json({
        resultCode: 200,
        resultMsg: "type 传参异常，type值应为 person,company,ship其一",
        result:  ""
  });
}
 var list=ret!=null?ret.list:null;
 if(partFlag!="1"&&!StringUtils.isBlank(keyword)&&list!=null&&list.size()>0){
  for(item in list){
     var _name=item.get("name")==null?"":item.get("name").asString().replace(keyword,"<em>"+keyword+"</em>");
     var _cardNo=item.get("cardNo")==null?"":item.get("cardNo").asString().replace(keyword,"<em>"+keyword+"</em>");
     item.put("name",_name);
     item.put("cardNo",_cardNo);
   }
 }


return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result:  ret
  });