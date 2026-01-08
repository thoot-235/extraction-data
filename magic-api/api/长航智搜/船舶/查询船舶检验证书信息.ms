{
  "properties" : { },
  "id" : "e6c3372e83bb4309bd5a5cca5b00ae7b",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "查询船舶检验证书信息",
  "createTime" : null,
  "updateTime" : 1749459305234,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/listNineShipCertificates",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipId",
    "value" : "CN20099436517",
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
    "name" : "status",
    "value" : "",
    "description" : "status为1是有效，0是无效",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"total\": 5,\n    \"result\": [{\n        \"certname\": \"船舶配员证书\",\n        \"identifier\": \"\",\n        \"effectivedate\": \"2022-03-02\",\n        \"expiredate\": \"2027-01-09\",\n        \"certprintno\": \"\",\n        \"statusflag\": \"有效\",\n        \"rowstatus\": \"1\"\n    }, {\n        \"certname\": \"船舶国籍证书\",\n        \"identifier\": \"350321000122&&01\",\n        \"effectivedate\": \"2022-01-10\",\n        \"expiredate\": \"2027-01-09\",\n        \"certprintno\": \"17*******89\",\n        \"statusflag\": \"有效\",\n        \"rowstatus\": \"1\"\n    }, {\n        \"certname\": \"内河船舶安全与环保证书\",\n        \"identifier\": \"202133600509&&内河船舶安全与环保证书\",\n        \"effectivedate\": \"2021-06-01\",\n        \"expiredate\": \"2027-10-27\",\n        \"certprintno\": \"20********09\",\n        \"statusflag\": \"有效\",\n        \"rowstatus\": \"1\"\n    }, {\n        \"certname\": \"船舶注销登记证明书\",\n        \"identifier\": \"ZX3503210110\",\n        \"effectivedate\": \"2021-05-08\",\n        \"expiredate\": \"长期有效\",\n        \"certprintno\": \"17*******91\",\n        \"statusflag\": \"有效\",\n        \"rowstatus\": \"0\"\n    }, {\n        \"certname\": \"船舶所有权证书\",\n        \"identifier\": \"350315000046\",\n        \"effectivedate\": \"2014-11-25\",\n        \"expiredate\": \"2021-05-08\",\n        \"certprintno\": \"11******54\",\n        \"statusflag\": \"无效\",\n        \"rowstatus\": \"0\"\n    }]\n}",
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
      "name" : "total",
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
      "name" : "result",
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
          "name" : "certname",
          "value" : "船舶配员证书",
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
          "name" : "identifier",
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
          "name" : "effectivedate",
          "value" : "2022-03-02",
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
          "name" : "expiredate",
          "value" : "2027-01-09",
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
          "name" : "certprintno",
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
          "name" : "statusflag",
          "value" : "有效",
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
          "name" : "rowstatus",
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
        } ]
      } ]
    } ]
  }
}
================================
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
shipId=(shipId==null?"":shipId).replace("<em>","").replace("</em>","");

import response;
var statusFlag;
if (status == '1') {
    statusFlag = '有效'
} else if (status == '0') {
    statusFlag = '无效'
} else {

}
var cbSql = """
     
     select certName,pk_primary AS identifier,replace(effectiveDate,'1900-01-01','--') effectiveDate ,replace(expireDate,'1900-01-01','--')  expireDate ,certPrintNo,statusFlag,rowstatus from(
       
       select certName,pk_primary,effectiveDate,expireDate,certPrintNo,statusFlag,rowstatus from (
            select '船舶所有权证书' certName,r.SHIP_REG_NO as pk_primary,
                                     to_char(r.CERT_OBTAIN_DATE,'yyyy-MM-dd')  effectiveDate,
                                    
                                    ( case when r.STATUS_FLAG='3' then to_char(b.create_time ,'yyyy-mm-dd')
                                     when r.STATUS_FLAG = '1' then  '长期有效' 
                                     end)  expireDate ,
                                      r.CERT_PRINT_NO certPrintNo,
                                      (case
                                        when r.STATUS_FLAG = '1' then
                                         '有效'
                                        when r.STATUS_FLAG = '3' then
                                         '无效'
                                     end) statusFlag,
                                       (case
                                        when r.STATUS_FLAG = '1' then
                                         '1'
                                        when r.STATUS_FLAG = '3' then
                                         '0'
                                      end)  rowstatus
                                 from  SHP_CERT_OWNERSHIP r left join  SHP_CERT_DELETION b on 
                                 r.REG_DELETION_NO=b.deletion_reg_no      where exists ( select ship_id from SHP_BASIC_DATA d 
                                           where r.ship_reg_no = d.ship_reg_no  
                                            and  
                                            d.ship_id = #{shipId}
                                           ) and r.delete_flag='0' and b.delete_flag='0'
                                
                                 -- union all  (select '船舶所有权证书' certName,'-' effectiveDate ,'-'expireDate,'-'certPrintNo ,
                                 -- '-'statusFlag,'-'rowstatus from dual  )  
                                  order by rowstatus desc  
                                  )  where rownum=1    
            
            union all
            (
            select certName,pk_primary,effectiveDate,expireDate,certPrintNo,statusFlag,rowstatus from (
            
            select '船舶国籍证书' certName,r.SHIP_REG_NO||'&&'||r.NATION_VERSION as pk_primary,
                   to_char(r.EFFECTIVE_DATE, 'yyyy-MM-dd') effectiveDate,
                   to_char(r.EXPIRE_DATE, 'yyyy-MM-dd') expireDate,
                   r.CERT_PRINT_NO certPrintNo,
                   (case
                     when (r.EXPIRE_DATE <= sysdate and
                          to_char(r.EXPIRE_DATE, 'yyyy-MM-dd') <> '1900-01-01') then
                      '无效'
                     else
                      '有效'
                   end) statusFlag,
                   (case
                     when (r.EXPIRE_DATE <= sysdate and
                          to_char(r.EXPIRE_DATE, 'yyyy-MM-dd') <> '1900-01-01') then
                      '0'
                     else
                      '1'
                   end) rowstatus
              from SHP_CERT_NATIONAL r
             where exists (select ship_id
                      from SHP_BASIC_DATA d
                     where r.ship_reg_no = d.ship_reg_no
                        and   d.ship_id = #{shipId}) and delete_flag='0'
            --  union all  (select '船舶国籍证书' certName,'-' effectiveDate ,'-'expireDate,'-'certPrintNo ,
                       --           '-'statusFlag,'-'rowstatus from dual  )  
                                  order by rowstatus desc  
                                  )  where rownum=1 
            )
            
            union all(
            
            select certName,pk_primary,effectiveDate,expireDate,certPrintNo,statusFlag,rowstatus from (
            select '船舶光租证书' certName,r.BAREBOAT_CHARTER_REG_NO as pk_primary,
                   replace(to_char(r.EFFECTIVE_DATE, 'yyyy-MM-dd'),'1900-01-01','-') effectiveDate,
                   replace(to_char(r.EXPIRE_DATE, 'yyyy-MM-dd'),'1900-01-01','-') expireDate,
                   r.CERT_PRINT_NO certPrintNo,
                   (case
                     when (r.EXPIRE_DATE <= sysdate and
                          to_char(r.EXPIRE_DATE, 'yyyy-MM-dd') <> '1900-01-01') then
                      '无效'
                     else
                      '有效'
                   end) statusFlag,
                   (case
                     when (r.EXPIRE_DATE <= sysdate and
                          to_char(r.EXPIRE_DATE, 'yyyy-MM-dd') <> '1900-01-01') then
                      '0'
                     else
                      '1'
                   end) rowstatus
              from SHP_CERT_BC_REG r
             where exists (select ship_id
                      from SHP_BASIC_DATA d
                     where r.ship_reg_no = d.ship_reg_no
                       and  d.ship_id = #{shipId} ) and delete_flag='0'
               --union all  (select '船舶光租证书' certName,'-' effectiveDate ,'-'expireDate,'-'certPrintNo ,
                --                  '-'statusFlag,'-'rowstatus from dual  )  
                                  order by rowstatus desc  
                                  )  where rownum=1 
                                  
            )
            union all(
            select certName,pk_primary,effectiveDate,expireDate,certPrintNo,statusFlag,rowstatus from (
            select '船舶抵押权登记证书' certName,r.MORTGAGE_REG_NO as pk_primary,
                   to_char(r.PAYOFF_BEGIN_DATE, 'yyyy-MM-dd') effectiveDate,
                   to_char(r.PAYOFF_END_DATE, 'yyyy-MM-dd') expireDate,
                   r.CERT_PRINT_NO certPrintNo,
                   (case
                     when (r.PAYOFF_END_DATE <= sysdate and
                          to_char(r.PAYOFF_END_DATE, 'yyyy-MM-dd') <> '1900-01-01') then
                      '无效'
                     else
                      '有效'
                   end) statusFlag,
                   (case
                     when (r.PAYOFF_END_DATE <= sysdate and
                          to_char(r.PAYOFF_END_DATE, 'yyyy-MM-dd') <> '1900-01-01') then
                      '0'
                     else
                      '1'
                   end) rowstatus
              from SHP_CERT_MORTGAGE r
             where exists (select ship_id
                      from SHP_BASIC_DATA d
                     where r.ship_reg_no = d.ship_reg_no
                        and  d.ship_id = #{shipId} ) and delete_flag='0'
             --union all  (select '船舶抵押权登记证书' certName,'-' effectiveDate ,'-'expireDate,'-'certPrintNo ,
               --                   '-'statusFlag,'-'rowstatus from dual  )  
                                  order by rowstatus desc  
                                  )  where rownum=1 
            
            )
            union all(
            select certName,pk_primary,effectiveDate,expireDate,certPrintNo,statusFlag,rowstatus from (
            select '船舶配员证书' certName,'' pk_primary,
                   to_char(r.EXPDATE_START, 'yyyy-MM-dd') effectiveDate,
                   to_char(r.EXPDATE_END, 'yyyy-MM-dd') expireDate,
                   r.CERT_PRINT_NO certPrintNo,
                   (case
                     when (r.EXPDATE_END <= sysdate and
                          to_char(r.EXPDATE_END, 'yyyy-MM-dd') <> '1900-01-01') then
                      '无效'
                     else
                      '有效'
                   end) statusFlag,
                   (case
                     when (r.EXPDATE_END <= sysdate and
                          to_char(r.EXPDATE_END, 'yyyy-MM-dd') <> '1900-01-01') then
                      '0'
                     else
                      '1'
                   end) rowstatus
              from SHP_MANNING_CERT r
             where exists (select ship_id
                      from SHP_BASIC_DATA d
                     where r.ship_reg_no = d.ship_reg_no
                       and  d.ship_id = #{shipId} ) and delete_flag='0'
             -- union all  (select '船舶配员证书' certName,'-' effectiveDate ,'-'expireDate,'-'certPrintNo ,
                      --            '-'statusFlag,'-'rowstatus from dual  )  
                                  order by rowstatus desc  
                                  )  where rownum=1 
            
            )
           
            union all(
            select certName,pk_primary,effectiveDate,expireDate,certPrintNo,statusFlag,rowstatus from (
            select CERT_NAME certName,
                  r.SHIP_SURVEY_NO||'&&'||r.CERT_NAME as pk_primary,
                   to_char(r.CERT_ISSUEDDATE, 'yyyy-MM-dd') effectiveDate,
                   to_char(r.CERT_DUEDATE, 'yyyy-MM-dd') expireDate,
                   r.CERT_ID certPrintNo,
                   (case
                     when (r.CERT_DUEDATE <= sysdate and
                          to_char(r.CERT_DUEDATE, 'yyyy-MM-dd') <> '1900-01-01') then
                      '无效'
                     else
                      '有效'
                   end) statusFlag,
                   (case
                     when (r.CERT_DUEDATE <= sysdate and
                          to_char(r.CERT_DUEDATE, 'yyyy-MM-dd') <> '1900-01-01') then
                      '0'
                     else
                      '1'
                   end) rowstatus
              from SHP_SUVERY_CERT_ISSUE r
             where 
              r.ship_id = #{shipId} and delete_flag='0'
               and instr(r.CERT_NAME, '船舶安全与环保证书') > 0
            -- union all  (select '船舶安全与环保证书' certName,'-' effectiveDate ,'-'expireDate,'-'certPrintNo ,
                --                  '-'statusFlag,'-'rowstatus from dual  )  
                                  order by rowstatus desc  
                                  )  where rownum=1
            
            )
            union all(
            select certName,pk_primary,effectiveDate,expireDate,certPrintNo,statusFlag,rowstatus from (
            select CERT_NAME certName,
                   r.SHIP_SURVEY_NO||'&&'||r.CERT_NAME as pk_primary,
                   to_char(r.CERT_ISSUEDDATE, 'yyyy-MM-dd') effectiveDate,
                   to_char(r.CERT_DUEDATE, 'yyyy-MM-dd') expireDate,
                   r.CERT_ID certPrintNo,
                   (case
                     when (r.CERT_DUEDATE <= sysdate and
                          to_char(r.CERT_DUEDATE, 'yyyy-MM-dd') <> '1900-01-01') then
                      '无效'
                     else
                      '有效'
                   end) statusFlag,
                   (case
                     when (r.CERT_DUEDATE <= sysdate and
                          to_char(r.CERT_DUEDATE, 'yyyy-MM-dd') <> '1900-01-01') then
                      '0'
                     else
                      '1'
                   end) rowstatus
              from SHP_SUVERY_CERT_ISSUE r
             where 
             r.ship_id = #{shipId} and delete_flag='0'
               and instr(r.CERT_NAME, '船舶安全管理证书') > 0
            -- union all  (select '船舶安全管理证书' certName,'-' effectiveDate ,'-'expireDate,'-'certPrintNo ,
              --                    '-'statusFlag,'-'rowstatus from dual  )  
                                  order by rowstatus desc  
                                  )  where rownum=1
            )
            union all(
            select certName,pk_primary,effectiveDate,expireDate,certPrintNo,statusFlag,rowstatus from (
            select '船舶注销登记证明书' certName,r.DELETION_REG_NO as pk_primary,
                   to_char(r.create_date, 'yyyy-MM-dd') effectiveDate,
                   '长期有效' expireDate,
                   r.CERT_PRINT_NO certPrintNo,
                   --(case when r.CHECK_FLAG = '1' then '有效' else '无效' end)
                    '有效' as statusFlag,
                   (case
                     when r.CHECK_FLAG = '1' then
                      '1'
                     else
                      '0'
                   end) rowstatus
              from SHP_CERT_DELETION r
             where exists (select ship_id
                      from SHP_BASIC_DATA d
                     where r.ship_reg_no = d.ship_reg_no
                         and  d.ship_id = #{shipId}) and delete_flag='0'
           -- union all  (select '船舶注销登记证明书' certName,'-' effectiveDate ,'-'expireDate,'-'certPrintNo ,
                     --             '-'statusFlag,'-'rowstatus from dual  )  
                                  order by rowstatus desc  
                                  )  where rownum=1
                                  )union all
                                  (

select certName,pk_primary,
       effectiveDate,
       expireDate,
       certPrintNo,
       statusFlag,
       rowstatus
  from (select '船舶安全管理证书' certName,r.SMCID as pk_primary,
               to_char(r.issu_date, 'yyyy-MM-dd') effectiveDate,
               to_char(r.expiry_date, 'yyyy-MM-dd')  as expireDate,
               r.ship_safety_manage_cert_no certPrintNo,
               (case
                 when r.is_cancel = '0' then
                  '有效'
                 else
                  '无效'
               end) statusFlag,
               (case
                 when r.is_cancel = '1' then
                  '1'
                 else
                  '0'
               end) rowstatus
          from CMP_SP_AUDIT_ISSUE r
         where exists (select ship_id
                  from SHP_BASIC_DATA d
                 where r.ship_reg_no = d.ship_reg_no and  d.ship_id = #{shipId}
                   )
           and delete_flag = '0'
         order by rowstatus desc)
 where rownum = 1)
                                  
            )where  1=1 
                     
                     """

if (statusFlag != null && statusFlag != '') {
    cbSql = cbSql + " and statusFlag = '" + statusFlag + "'"
}
 cbSql= cbSql+"order by effectiveDate desc";
var data = db.base_data.camel().select(cbSql);
var size = 0;
if (data == null) {
    data = [];

} else {
    size = data.size()
    for (item in data) {
            //      数据脱敏
            item.put("certprintno", DesensitizationUtil.certNo(item.get("certprintno")::string))
        }
}

return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    total: size,
    result: data
});