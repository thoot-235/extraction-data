{
  "properties" : { },
  "id" : "567e6e07a41b4579a7ea4469296f1a0f",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "根据状态查询船舶证书",
  "createTime" : null,
  "updateTime" : 1693552390126,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/listShipCertificates",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipId",
    "value" : "CN20112935868",
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
    "name" : "certStatus",
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
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": []\n}",
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
      "name" : "result",
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
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;

//
var cbSql = """
    select t.CERT_NAME certName,
        t.CERT_ID certPrintNo,
        
        replace(to_char(t.CERT_DUEDATE, 'yyyy-MM-dd'),'1900-01-01','--') expireDate,
        replace(to_char(t.CERT_ISSUEDDATE, 'yyyy-MM-dd'),'1900-01-01','--') effectiveDate,
        (case
        when CERT_DUEDATE <= sysdate then
        '3'
        else
        '1'
        end) statusFlag
        from SHP_SUVERY_CERT_ISSUE t
        where  t.ship_id = #{ship_id}
        and t.CERT_NAME in ('国际防止大气污染证书',
        '海上船舶危险品适装证书',
        '国际防止大气污染证书',
        '货船无线电安全证书',
        '海上船舶防止生活污水污染证书',
        '谷物装载证书',
        '内河船舶适航证书',
        '内河船舶防止油污证书',
        '内河船舶防止生活污水污染证书',
        '国际防止空气污染证书',
        '高速船营运许可证书',
        '国际能效证书',
        '防止油污证书',
        '海上货船适航证书',
        '海上船舶散装运输危险化学品适装证书',
        '货船无线电安全证书设备记录簿（五星旗）',
        '防止生活污水污染证书',
        '国际散装运输液化气体适装证书',
        '危险货物适装证明',
        '海上船舶防止油污证书',
        '海上高速船安全证书',
        '川江及三峡库区船舶航行证书',
        '海上船舶防止散装运输有毒物质污染证书',
        '散装货物适装证书',
        '海上船舶散装运输液化气体适装证书',
        '游艇适航证书',
        '内河船舶防止垃圾污染证书',
        '海上客船适航证书',
        '海上适拖证书',
        '国际散装化学品船适装证书',
        '散装运输液化气体适装证书',
        '内河船舶散装运输液化气体适装证书',
        '海上船舶防止空气污染证书',
        '散装化学品船适装证书',
        '海上船舶防止生活污水证书',
        '国际防止大气污染证书设备记录簿（五星旗）' ,
        '国际防止油污证书',
        '国际防止生活污水污染证书',
        '国际防止油污证书设备记录簿（非油船）',
        '海上船舶危险货物适装证书')
                     and delete_flag = '0'
                     """

if (shipId != null && shipId == 1) {
    cbSql = cbSql + """ and (t.CERT_DUEDATE >sysdate or t.CERT_DUEDATE is null )""";
} else if (shipId != null && shipId == 0) {
    cbSql = cbSql + """  and t.CERT_DUEDATE <= sysdate""";
}

//高速船证书
var shipSafeCertSql = """
    select certName,certPrintNo,expireDate,effectiveDate,statusFlag,status
    from (select '高速船登记证书' certName,
    r.CERT_PRINT_NO certPrintNo,
    replace(to_char(r.EXPIRE_DATE, 'yyyy-MM-dd'),'1900-01-01','--') expireDate,
    replace(to_char(r.CREATE_DATE, 'yyyy-MM-dd'),'1900-01-01','--') effectiveDate,
    (case
    when (r.EXPIRE_DATE <= sysdate and
    to_char(r.EXPIRE_DATE, 'yyyy-MM-dd') != '1900-01-01') then
    '无效'
    else
    '有效'
    end) statusFlag,
    (case
    when (r.EXPIRE_DATE <= sysdate and
    to_char(r.EXPIRE_DATE, 'yyyy-MM-dd') != '1900-01-01') then
    '0'
    else
    '1'
    end) status
    from SHP_CERT_HSPS r, SHP_BASIC_DATA d
    where r.ship_reg_no = d.ship_reg_no
    and d.ship_id = #{shipId}
     and r.delete_flag = '0'
           and d.delete_flag = '0'
    )
    ?{certStatus,   where status=#{certStatus}} 
    
""";

//废钢船登记证书
var shipScrapCertSql = """
     select certName,certPrintNo,expireDate,effectiveDate,statusFlag,status
        from (select '废钢船登记证书' certName,
        r.CERT_PRINT_NO certPrintNo,
        replace(to_char(r.EXPIRE_DATE, 'yyyy-MM-dd'),'1900-01-01','--') expireDate,
        replace(to_char(r.CREATE_DATE, 'yyyy-MM-dd'),'1900-01-01','--') effectiveDate,
        (case
        when (r.EXPIRE_DATE <= sysdate and
        to_char(r.EXPIRE_DATE, 'yyyy-MM-dd') != '1900-01-01') then
        '无效'
        else
        '有效'
        end) statusFlag,
        (case
        when (r.EXPIRE_DATE <= sysdate and
        to_char(r.EXPIRE_DATE, 'yyyy-MM-dd') != '1900-01-01') then
        '0'
        else
        '1'
        end) status
        from SHP_CERT_HSPS r, SHP_BASIC_DATA d
        where r.ship_reg_no = d.ship_reg_no
        and d.ship_id = #{shipId}
        )
    ?{certStatus,   where status=#{certStatus}} 
    
""";

var data = db.base_data.camel().select(cbSql);
var shipSafeCert = db.base_data.camel().select(shipSafeCertSql);
var shipScrapCert = db.base_data.camel().select(shipScrapCertSql);


var list;
for (item in data) {
    item.put("statusflag",
        TagUtils.getTagNameByCode("statusFlag", item.get("statusflag")));
}

for (item in shipSafeCert) {
    data.add(item);
}

for (item in shipScrapCert) {
    data.add(item);
}

return response.json({
    resultCode: 200,
    resultMsg: "查询成功",

    result: data
});