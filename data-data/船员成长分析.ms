{
  "properties" : { },
  "id" : "copy1672037290290d8798",
  "script" : null,
  "groupId" : "69f9552f682c4f55a2f59d8663909151",
  "name" : "船员成长分析",
  "createTime" : null,
  "updateTime" : 1723786547357,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/developLocusAnalysis",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n\"idCardNo\":\"YymFJgF0eQeEndjs2Pn/iO7Vq42yhEv6gsAD0YgcKYY=\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": []\n}",
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
      "name" : "idCardNo",
      "value" : "YymFJgF0eQeEndjs2Pn/iO7Vq42yhEv6gsAD0YgcKYY=",
      "description" : "",
      "required" : false,
      "dataType" : "String",
      "type" : null,
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
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Array",
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
import 'org.springblade.common.utils.ZzSecurityHelper' as ZzSecurityHelper;
//idCardNo = (idCardNo == null ? "" : idCardNo).replace("<em>", "").replace("</em>", "");
import response;
var idCardNo=(body.idCardNo==null?"":body.idCardNo).replace("<em>","").replace("</em>","");
idCardNo=ZzSecurityHelper.decryptAES(body.idCardNo);
idCardNo = idCardNo.replace("<em>","").replace("</em>","");
if(idCardNo==null || idCardNo==''){
    return  response.json({
        "code": 0,
        "message": "参数[idCardNo]为必填项",
        "data": {},      
        "executeTime": 2
    });
}

//取初次签发日期不为空并且初次签发日期不最早的一条服务薄
var sql = """select  REGI_CATE AS reg_type_code,INITISSU_DATE from CREW_CERT_SERVICEBOOK   where delete_flag='0' and  ID_CARD_NO = #{idCardNo} and INITISSU_DATE is not null 
 and  to_char(INITISSU_DATE,'yyyy-mm-dd') !='1900-01-01'   order by INITISSU_DATE  """
var retSql = [];
var initRes = [];
var regTypeSql = db.base_data.camel().selectOne(sql);
var initIssueDate = "--";
var jsOrljSql = "";
//注册类别 1海船 2内河
var regCate = "";
//驾驶轮机 1驾驶 2轮机
var major = "";
if (regTypeSql != null) {
    var regType = regTypeSql.get("regTypeCode");
    initIssueDate = regTypeSql.get("initissuDate");
    //海船船员适任证
    if (regType == "W" || regType == "H") {
        regCate = '1';
        var hcsql = """
                select  * from  CREW_CERT_SEAMAN_CMPT   where ID_CARD_NO = #{idCardNo}     and APPL_MAJOR  in ('1','2') and  delete_flag='0'
            """
        //判断专业是驾驶还是轮机
        var majorSql = db.base_data.camel().selectOne(hcsql);
        //1驾驶 2轮机
        if (majorSql != null && majorSql.get("applMajor") == "1") {
            jsOrljSql = """
                         select * from CREW_GROWTH_ANALYSIS where REG_TYPE = 1 and MAJOR_TYPE = 1
                    """
            retSql = db.dm_data.camel().select(jsOrljSql);
        } else if (majorSql != null && majorSql.get("applMajor") == "2") {
            jsOrljSql = """
                    select * from CREW_GROWTH_ANALYSIS where REG_TYPE = 1 and MAJOR_TYPE = 2
                    """
            retSql = db.dm_data.camel().select(jsOrljSql);
        } else {
            major = '3';
            jsOrljSql = """select a.up_to_t4 || '/' || b.up_to_t4 up_to_t4,
                            a.up_to_t3 || '/' || b.up_to_t3 up_to_t3,
                            a.up_to_t2 || '/' || b.up_to_t2 up_to_t2,
                            a.up_to_t1 || '/' || b.up_to_t1 up_to_t1,
                            a.up_to_t || '/' || b.up_to_t up_to_t,
                            a.up_To_T4_Code || '/' || b.up_To_T4_Code up_To_T4_Code,
                            a.up_To_T3_Code || '/' || b.up_To_T3_Code up_To_T3_Code,
                            a.up_To_T2_Code || '/' || b.up_To_T2_Code up_To_T2_Code,
                            a.up_To_T1_Code || '/' || b.up_To_T1_Code up_To_T1_Code,
                            a.up_To_T_Code || '/' || b.up_To_T_Code up_To_T_Code,
                            a.REG_TYPE,
                            a.MAJOR_TYPE || '/' || b.MAJOR_TYPE MAJOR_TYPE
                        from (select *
                                from CREW_GROWTH_ANALYSIS
                                where REG_TYPE = 1
                                and MAJOR_TYPE = 1) a
                        left join (select *
                                    from CREW_GROWTH_ANALYSIS
                                    where REG_TYPE = 1
                                        and MAJOR_TYPE = 2) b
                            on a.reg_type = b.reg_type
    """
            retSql = db.dm_data.camel().select(jsOrljSql);
        }
    } else {
        regCate = '2';
        //内河船员适任证    
        var nhsql = """
                select  * from   CREW_CERT_INL_CMPT  where id_card_no = #{idCardNo} and APPL_MAJOR  in ('1','2')  and  delete_flag='0'
            """
        //判断专业是驾驶还是轮机
        var majorSql = db.base_data.camel().selectOne(nhsql);
        //1驾驶 2轮机
        if (majorSql != null && majorSql.get("applMajor") == "1") {
            jsOrljSql = """
                    select * from CREW_GROWTH_ANALYSIS where REG_TYPE = 2 and MAJOR_TYPE = 1
                    """
            retSql = db.dm_data.camel().select(jsOrljSql);
        } else if (majorSql != null && majorSql.get("applMajor") == "2") {
            jsOrljSql = """
                    select * from CREW_GROWTH_ANALYSIS where REG_TYPE = 2 and MAJOR_TYPE = 2
                    """
            retSql = db.dm_data.camel().select(jsOrljSql);
        } else {
            major = '3';
            jsOrljSql = """select a.up_to_t4 || '/' || b.up_to_t4 up_to_t4,
                            a.up_to_t3 || '/' || b.up_to_t3 up_to_t3,
                            a.up_to_t2 || '/' || b.up_to_t2 up_to_t2,
                            a.up_to_t1 || '/' || b.up_to_t1 up_to_t1,
                            a.up_to_t || '/' || b.up_to_t up_to_t,
                            a.up_To_T4_Code || '/' || b.up_To_T4_Code up_To_T4_Code,
                            a.up_To_T3_Code || '/' || b.up_To_T3_Code up_To_T3_Code,
                            a.up_To_T2_Code || '/' || b.up_To_T2_Code up_To_T2_Code,
                            a.up_To_T1_Code || '/' || b.up_To_T1_Code up_To_T1_Code,
                            a.up_To_T_Code || '/' || b.up_To_T_Code up_To_T_Code,
                            a.REG_TYPE,
                            a.MAJOR_TYPE || '/' || b.MAJOR_TYPE MAJOR_TYPE
                        from (select *
                                from CREW_GROWTH_ANALYSIS
                                where REG_TYPE = 2
                                and MAJOR_TYPE = 1) a
                        left join (select *
                                    from CREW_GROWTH_ANALYSIS
                                    where REG_TYPE = 2
                                        and MAJOR_TYPE = 2) b
                            on a.reg_type = b.reg_type
    """
            retSql = db.dm_data.camel().select(jsOrljSql);
        }
    }
}
import 'org.springblade.common.utils.DateUtil' as DateUtil;
import log;

if (major == '3') {
    var count = 0;
    for (resItem in retSql) {
        var code = String.valueOf(resItem.get("upToT4Code"));
        resItem.put("upToT4Code", TagUtils.getTagNameByCode("offiDutyTag", code.split("/")[0]) + "/" +
            TagUtils.getTagNameByCode("offiDutyTag", code.split("/")[1]));
        code = String.valueOf(resItem.get("upToT3Code"));
        resItem.put("upToT3Code", TagUtils.getTagNameByCode("offiDutyTag", code.split("/")[0]) + "/" +
            TagUtils.getTagNameByCode("offiDutyTag", code.split("/")[1]));
        code = String.valueOf(resItem.get("upToT2Code"));
        resItem.put("upToT2Code", TagUtils.getTagNameByCode("offiDutyTag", code.split("/")[0]) + "/" +
            TagUtils.getTagNameByCode("offiDutyTag", code.split("/")[1]));
        code = String.valueOf(resItem.get("upToT1Code"));
        resItem.put("upToT1Code", TagUtils.getTagNameByCode("offiDutyTag", code.split("/")[0]) + "/" +
            TagUtils.getTagNameByCode("offiDutyTag", code.split("/")[1]));
        code = String.valueOf(resItem.get("upToTCode"));
        resItem.put("upToTCode", TagUtils.getTagNameByCode("offiDutyTag", code.split("/")[0]) + "/" +
            TagUtils.getTagNameByCode("offiDutyTag", code.split("/")[1]));
        resItem.put("now", '0/0')
    }
} else {
    for (resItem in retSql) {
        resItem.put("upToT4Code", TagUtils.getTagNameByCode("offiDutyTag", resItem.get("upToT4Code")));
        resItem.put("upToT3Code", TagUtils.getTagNameByCode("offiDutyTag", resItem.get("upToT3Code")));
        resItem.put("upToT2Code", TagUtils.getTagNameByCode("offiDutyTag", resItem.get("upToT2Code")));
        resItem.put("upToT1Code", TagUtils.getTagNameByCode("offiDutyTag", resItem.get("upToT1Code")));
        resItem.put("upToTCode", TagUtils.getTagNameByCode("offiDutyTag", resItem.get("upToTCode")));
        //     resItem.put("upToT4", DateUtil.dayByYear(String.valueOf(resItem.get("upToT4"))));
        //     resItem.put("upToT3", DateUtil.dayByYear(String.valueOf(resItem.get("upToT3"))));
        //     resItem.put("upToT2", DateUtil.dayByYear(String.valueOf(resItem.get("upToT2"))));
        //     resItem.put("upToT1", DateUtil.dayByYear(String.valueOf(resItem.get("upToT1"))));
        //     resItem.put("upToT", DateUtil.dayByYear(String.valueOf(resItem.get("upToT"))));
    }
}

return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: retSql
})