{
  "properties" : { },
  "id" : "6b9bc2086a3a4a05a0987fdc76f06724",
  "script" : null,
  "groupId" : "429bf27232e44bdbae1a46ea3dcc6609",
  "name" : "成长轨迹",
  "createTime" : null,
  "updateTime" : 1713163665564,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getCrewGrow",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"idCardNo\": \"Ir3I+MykcdB9i4OGn+tUqrQljI/DFPWiPa2U1ojh0gs=\"\r\n}",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": []\n}",
  "description" : "",
  "requestBodyDefinition" : {
    "name" : "root",
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
      "value" : "Ir3I+MykcdB9i4OGn+tUqrQljI/DFPWiPa2U1ojh0gs=",
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
    "dataType" : "Object",
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
      "name" : "data",
      "value" : "",
      "description" : "",
      "required" : false,
      "dataType" : "Array",
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
import org.springblade.common.utils.ZzSecurityHelper
import 'com.success.data.tag.TagUtils' as TagUtils;


var idCardNo = (body.idCardNo == null ? "" : body.idCardNo).replace("<em>", "").replace("</em>", "");
if(idCardNo==null || idCardNo ==""){
    return response.json({
        resultCode: 200,
        resultMsg: "idCardNo不能为空"
    });
}
import log;
log.info("------------------------idCardNo---------------------------"+idCardNo);
idCardNo = ZzSecurityHelper.decryptAES(idCardNo);

//取初次签发日期不为空并且初次签发日期不最早的一条服务薄
var sql = """select  REGI_CATE AS reg_type_code,INITISSU_DATE from CREW_CERT_SERVICEBOOK   where ID_CARD_NO = #{idCardNo} and INITISSU_DATE is not null 
 and  to_char(INITISSU_DATE,'yyyy-mm-dd') !='1900-01-01'  and  delete_flag='0'  order by INITISSU_DATE  """
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
            major = '1';
            jsOrljSql = """
                          select    CERT_POSI,t.ISSU_DATE from (select a.* ,row_number() over (partition by CERT_POSI  
                          order by ISSU_DATE )rn from CREW_CERT_SEAMAN_CMPT a where CERT_POSI in ('51','52','53','54','55') and 
                           to_char(ISSU_DATE,'yyyy-mm-dd') !='1900-01-01' and  delete_flag='0' and  id_card_no = #{idCardNo}) t 
                        where t.rn = 1  
                    """
            retSql = db.base_data.camel().select(jsOrljSql);
        } else if (majorSql != null && majorSql.get("applMajor") == "2") {
            major = '2';
            jsOrljSql = """
                    select     CERT_POSI,t.ISSU_DATE from (select a.* ,row_number() over (partition by CERT_POSI  
                          order by ISSU_DATE )rn from CREW_CERT_SEAMAN_CMPT a where CERT_POSI in ('61','62','63','64','65') and 
                           to_char(ISSU_DATE,'yyyy-mm-dd') !='1900-01-01' and  delete_flag='0' and  id_card_no = #{idCardNo}) t 
                        where t.rn = 1  
                    """
            retSql = db.base_data.camel().select(jsOrljSql);
        } else {
            major = '3';
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
            major = '1';
            jsOrljSql = """
                  select     CERT_POSI,t.ISSU_DATE from (select a.* ,row_number() over (partition by CERT_POSI  
                          order by ISSU_DATE )rn from CREW_CERT_INL_CMPT a where   delete_flag='0' and  CERT_POSI in ('N11','N12','N13','N14','N15') and 
                           to_char(ISSU_DATE,'yyyy-mm-dd') !='1900-01-01' and  id_card_no = #{idCardNo}) t 
                        where t.rn = 1  
                    """
            retSql = db.base_data.camel().select(jsOrljSql);
        } else if (majorSql != null && majorSql.get("applMajor") == "2") {
            major = '2';
            jsOrljSql = """
                    select    CERT_POSI,t.ISSU_DATE from (select a.* ,row_number() over (partition by CERT_POSI  
                          order by ISSU_DATE )rn from CREW_CERT_INL_CMPT a where delete_flag='0' and  CERT_POSI in ('N21','N22','N23','N24','N25') and 
                           to_char(ISSU_DATE,'yyyy-mm-dd') !='1900-01-01' and  id_card_no = #{idCardNo}) t 
                        where t.rn = 1 
                    """
            retSql = db.base_data.camel().select(jsOrljSql);
        } else {
            major = '3';
        }
    }
}

if (regCate == '1' && major == '1') {
    var initMap1 = {}
    initMap2 = {}
    initMap3 = {}
    initMap4 = {}
    initMap5 = {}
    initMap6 = {};
    initMap1.put("certPosi", '51');
    initMap1.put("issuDate", '--');
    initRes.add(initMap1);
    initMap2.put("certPosi", '52');
    initMap2.put("issuDate", '--');
    initRes.add(initMap2);
    initMap3.put("certPosi", '53');
    initMap3.put("issuDate", '--');
    initRes.add(initMap3);
    initMap4.put("certPosi", '54');
    initMap4.put("issuDate", '--');
    initRes.add(initMap4);
    initMap5.put("certPosi", '55');
    initMap5.put("issuDate", '--');
    initRes.add(initMap5);
    initMap6.put("certPosi", '注册');
    initMap6.put("issuDate", initIssueDate);
    initRes.add(initMap6);
    for (initItem in initRes) {
        for (resItem in retSql) {
            if (initItem.get("certPosi") == resItem.get("certPosi")) {
                initItem.put("issuDate", resItem.get("issuDate"));
            }
        }
        initItem.put("certPosi", TagUtils.getTagNameByCode("offiDutyTag", initItem.get("certPosi")));
    }
} else if (regCate == '1' && major == '2') {
    var initMap1 = {}
    initMap2 = {}
    initMap3 = {}
    initMap4 = {}
    initMap5 = {}
    initMap6 = {};
    initMap1.put("certPosi", '61');
    initMap1.put("issuDate", '--');
    initRes.add(initMap1);
    initMap2.put("certPosi", '62');
    initMap2.put("issuDate", '--');
    initRes.add(initMap2);
    initMap3.put("certPosi", '63');
    initMap3.put("issuDate", '--');
    initRes.add(initMap3);
    initMap4.put("certPosi", '64');
    initMap4.put("issuDate", '--');
    initRes.add(initMap4);
    initMap5.put("certPosi", '65');
    initMap5.put("issuDate", '--');
    initRes.add(initMap5);
    initMap6.put("certPosi", '注册');
    initMap6.put("issuDate", initIssueDate);
    initRes.add(initMap6);
    for (initItem in initRes) {
        for (resItem in retSql) {
            if (initItem.get("certPosi") == resItem.get("certPosi")) {
                initItem.put("issuDate", resItem.get("issuDate"));
            }
        }
        initItem.put("certPosi", TagUtils.getTagNameByCode("offiDutyTag", initItem.get("certPosi")));
    }
} else if (regCate == '1' && major == '3') {
    var initMap1 = {}
    initMap2 = {}
    initMap3 = {}
    initMap4 = {}
    initMap5 = {}
    initMap6 = {};
    initMap1.put("certPosi", '51/61');
    initMap1.put("issuDate", '--');
    initRes.add(initMap1);
    initMap2.put("certPosi", '52/62');
    initMap2.put("issuDate", '--');
    initRes.add(initMap2);
    initMap3.put("certPosi", '53/63');
    initMap3.put("issuDate", '--');
    initRes.add(initMap3);
    initMap4.put("certPosi", '54/64');
    initMap4.put("issuDate", '--');
    initRes.add(initMap4);
    initMap5.put("certPosi", '55/65');
    initMap5.put("issuDate", '--');
    initRes.add(initMap5);
    for (initItem in initRes) {
        var certPosi = String.valueOf(initItem.get("certPosi"));
        initItem.put("certPosi", TagUtils.getTagNameByCode("offiDutyTag", certPosi.split("/")[0]) + "/" +
            TagUtils.getTagNameByCode("offiDutyTag", certPosi.split("/")[1]));
    }
    initMap6.put("certPosi", '注册');
    initMap6.put("issuDate", initIssueDate);
    initRes.add(initMap6);
} else if (regCate == '2' && major == '1') {
    var initMap1 = {}
    initMap2 = {}
    initMap3 = {}
    initMap4 = {}
    initMap5 = {}
    initMap6 = {};
    initMap1.put("certPosi", 'N11');
    initMap1.put("issuDate", '--');
    initRes.add(initMap1);
    initMap2.put("certPosi", 'N12');
    initMap2.put("issuDate", '--');
    initRes.add(initMap2);
    initMap3.put("certPosi", 'N13');
    initMap3.put("issuDate", '--');
    initRes.add(initMap3);
    initMap4.put("certPosi", 'N14');
    initMap4.put("issuDate", '--');
    initRes.add(initMap4);
    initMap5.put("certPosi", 'N15');
    initMap5.put("issuDate", '--');
    initRes.add(initMap5);
    initMap6.put("certPosi", '注册');
    initMap6.put("issuDate", initIssueDate);
    initRes.add(initMap6);
    for (initItem in initRes) {
        for (resItem in retSql) {
            if (initItem.get("certPosi") == resItem.get("certPosi")) {
                initItem.put("issuDate", resItem.get("issuDate"));
            }
        }
        initItem.put("certPosi", TagUtils.getTagNameByCode("offiDutyTag", initItem.get("certPosi")));
    }
} else if (regCate == '2' && major == '2') {
    var initMap1 = {}
    initMap2 = {}
    initMap3 = {}
    initMap4 = {}
    initMap5 = {}
    initMap6 = {};
    initMap1.put("certPosi", 'N21');
    initMap1.put("issuDate", '--');
    initRes.add(initMap1);
    initMap2.put("certPosi", 'N22');
    initMap2.put("issuDate", '--');
    initRes.add(initMap2);
    initMap3.put("certPosi", 'N23');
    initMap3.put("issuDate", '--');
    initRes.add(initMap3);
    initMap4.put("certPosi", 'N24');
    initMap4.put("issuDate", '--');
    initRes.add(initMap4);
    initMap5.put("certPosi", 'N25');
    initMap5.put("issuDate", '--');
    initRes.add(initMap5);
    initMap6.put("certPosi", '注册');
    initMap6.put("issuDate", initIssueDate);
    initRes.add(initMap6);
    for (initItem in initRes) {
        for (resItem in retSql) {
            if (initItem.get("certPosi") == resItem.get("certPosi")) {
                initItem.put("issuDate", resItem.get("issuDate"));
            }
        }
        initItem.put("certPosi", TagUtils.getTagNameByCode("offiDutyTag", initItem.get("certPosi")));
    }
}else if (regCate == '2' && major == '3') {
    var initMap1 = {}
    initMap2 = {}
    initMap3 = {}
    initMap4 = {}
    initMap5 = {}
    initMap6 = {};
    initMap1.put("certPosi", 'N11/N21');
    initMap1.put("issuDate", '--');
    initRes.add(initMap1);
    initMap2.put("certPosi", 'N12/N22');
    initMap2.put("issuDate", '--');
    initRes.add(initMap2);
    initMap3.put("certPosi", 'N13/N23');
    initMap3.put("issuDate", '--');
    initRes.add(initMap3);
    initMap4.put("certPosi", 'N14/N24');
    initMap4.put("issuDate", '--');
    initRes.add(initMap4);
    initMap5.put("certPosi", 'N15/N25');
    initMap5.put("issuDate", '--');
    initRes.add(initMap5);
    for (initItem in initRes) {
        var certPosi = String.valueOf(initItem.get("certPosi"));
        initItem.put("certPosi", TagUtils.getTagNameByCode("offiDutyTag", certPosi.split("/")[0]) + "/" +
            TagUtils.getTagNameByCode("offiDutyTag", certPosi.split("/")[1]));
    }
    initMap6.put("certPosi", '注册');
    initMap6.put("issuDate", initIssueDate);
    initRes.add(initMap6);
}
import response;
import log;
var list = [];
for (initItem in initRes) {
    list.add(initItem);
}
import "java.text.SimpleDateFormat";;
var index = 0;
for (initItem in list) {
    if (initItem.get("issuDate") != '' && initItem.get("issuDate") != null && initItem.get("issuDate") != '--') {
        if (index + 1 <= list.size() - 1) {
            var listIndex = list.get(index + 1);
            if (listIndex.get("issuDate") != '' && listIndex.get("issuDate") != null && listIndex.get("issuDate") != '--') {
                var endTime = String.valueOf(initItem.get("issuDate"));
                endTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(endTime.substring(0, endTime.length() - 2)).getTime();
                var startTime = String.valueOf(listIndex.get("issuDate"));
                startTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(startTime.substring(0, startTime.length() - 2)).getTime();
                var upToNow = String.valueOf((endTime - startTime) / 1000 / 60 / 60 / 24);
                if (Integer.parseInt(upToNow) <= 0) {
                    upToNow = String.valueOf(Integer.parseInt(upToNow) * -1);
                }
                // initItem.put("upToNow", upToNow + "天");
                listIndex.put("upToNow", upToNow + "天");
                var year = Integer.parseInt(upToNow) / 365;
                var month = Integer.parseInt(upToNow) % 365 / 30;
                var day = Integer.parseInt(upToNow) % 365 % 30;
                // initItem.put("upToNowByYear", year + "年" + month + "月" + day + "天");
                listIndex.put("upToNowByYear", year + "年" + month + "月" + day + "天");
            }
        }
    }
    index++;
}


return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: initRes
})