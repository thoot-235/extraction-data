{
  "properties" : { },
  "id" : "8e091d0acdf540d1808a2019cb836a94",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "获取船舶证书接口",
  "createTime" : null,
  "updateTime" : 1749208543892,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getShipCertMess",
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
    "name" : "type",
    "value" : "6",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": \"\"\n}",
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
      "dataType" : "Object",
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
import log;
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import 'org.springblade.common.utils.DesensitizationUtil' as DesensitizationUtil;
import log;
import response;


//光船租赁登记_光船租赁登记信息
var sql1 = """
select * from (
  select  
        r.SHIP_REG_NO,
        r.BAREBOAT_CHARTER_REG_NO,
        r.SHIP_LENDER_CN,
        r.SHIP_LENDER_ADDR,
        r.SHIP_CHARTERER_CN,
        r.SHIP_CHARTERER_ADDR,
        r.REG_DELETION_NO,
        r.org_code,
        r.sublease_flag,
        r.CHARTER_RATE_CN,
        r.CHARTER_PERIOD_CN,
        r.CHARTER_CONTRACT_NO,
        r.CERT_PRINT_NO,(case
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
                   end) rowstatus,
                   d.ship_id
from  bds_base_data.SHP_CERT_BC_REG r
left join bds_base_data.SC_SHIP_BASIC_DATA d  on r.ship_reg_no = d.ship_reg_no
where d.ship_id = #{shipId} and   r.delete_flag='0') order by rowstatus desc
"""

//船舶_船舶注销证明登记信息
var sql2 ="""select * from (
    select    DELETION_REG_NO,
              SHIP_REG_NO,
              DELETION_CONTENT_CN,
              DELETION_CONTENT_EN,
              DELETION_REASON,
              DEBT_DISPUTE,
              CERT_PRINT_NO,
              ownership_del_flag,
              nation_del_flag,
              mortgage_del_flag,
              bareboat_charter_del_flag,
              creditor_agree_flag,
              next_reg_org,
              mortgage_flag,
              org_code,(case
                     when r.CHECK_FLAG = '1' then
                      '有效'
                     else
                      '无效'
                   end) statusFlag,
                   (case
                     when r.CHECK_FLAG = '1' then
                      '1'
                     else
                      '0'
                   end) rowstatus
            from SHP_CERT_DELETION  r where exists (select ship_id
                      from SC_SHIP_BASIC_DATA d
                     where r.ship_reg_no = d.ship_reg_no
                         and  d.ship_id = #{shipId}) and delete_flag='0'
                                  order by rowstatus desc  
                                  )  where rownum=1    
"""
//船舶抵押权登记_船舶抵押权登记信息
var sql3 ="""
     select * from (select  
       MORTGAGE_REG_NO,
      SHIP_REG_NO,
      SHIP_MORTGAGEE_CN,
      SHIP_MORTGAGEE_ADDR,
      SHIP_MORTGAGOR_CN,
      DEBT_AMOUNT,
      MAXIMUM_CLAIM_FLAG,
      MORTGAGE_AMOUNT,
      INTEREST_RATE_CN,
      PAYOFF_BEGIN_DATE,
      PAYOFF_END_DATE,
      ORIG_MORTGAGE_SITUATION,
      CERT_PRINT_NO,
      SHIP_MORTGAGOR_ADDR,
      REG_DELETION_NO,
      claim_currency_code,
      mortgage_currency_code,
      org_code,(case
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
from  bds_base_data.SHP_CERT_MORTGAGE r  where exists (select ship_id
                      from SC_SHIP_BASIC_DATA d
                     where r.ship_reg_no = d.ship_reg_no
                        and  d.ship_id = #{shipId} ) and delete_flag='0'
                                  order by rowstatus desc  
                                  )  where rownum=1  
             
    """
//（临时）船舶国籍证书签发_船舶国籍证书签发信息
var sql4 ="""
    select * from (select   
    org_code,
    SHIP_REG_NO,
    NATION_VERSION,
    EFFECTIVE_DATE,
    EXPIRE_DATE,
    CERT_OBTAIN_DATE,
    CERT_PRINT_NO,
    REG_DELETION_NO,
    temp_nation_flag,
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
from  bds_base_data.SHP_CERT_NATIONAL r
where exists (select ship_id
                      from SC_SHIP_BASIC_DATA d
                     where r.ship_reg_no = d.ship_reg_no
                        and   d.ship_id = #{shipId}) and delete_flag='0'
                                  order by rowstatus desc  
                                  )  where rownum=1 
    """

//船舶所有权登记_船舶所有权登记信息
var sql5 ="""
     select * from (select   
        r.SHIP_REG_NO,
        SHIP_OWNER_CN,
        SHIP_OWNER_ADDR_CN,
        OWNER_LEGAL_PERSON,
        OWNER_CONTACT_PHONE,
        CERT_OBTAIN_DATE,
        SHIP_SHARE_SITUATION,
        r.CERT_PRINT_NO,
        REG_DELETION_NO,
        ship_obtain_way_code,
        ( case when r.STATUS_FLAG='3' then to_char(b.create_time ,'yyyy-mm-dd')
                                     when r.STATUS_FLAG = '1' then  '长期有效' 
                                     end)  expireDate ,
                                     
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
from  bds_base_data.SHP_CERT_OWNERSHIP r left join  SHP_CERT_DELETION b on 
                                 r.REG_DELETION_NO=b.deletion_reg_no      where exists ( select ship_id from SC_SHIP_BASIC_DATA d 
                                           where r.ship_reg_no = d.ship_reg_no  
                                            and  
                                            d.ship_id = #{shipId}
                                           ) and r.delete_flag='0' and b.delete_flag='0'
                                  order by rowstatus desc  
                                  )  where rownum=1
    """
//船舶审核与发证_船舶安全管理证书审核发证信息
var sql6=""" select * from (
select  smcid,
    row_number() over(partition by ship_id order by last_update_date desc) rn, SHIP_ID,
    SHIP_NAME_CN,
    INTER_DOC_NO,
    SHIP_GROSSTON,
    PASSENGER_QUOTA,
    SHIP_REG_NO,
    SHIP_SAFETY_MANAGE_CERT_NO,
    AUDIT_END_DATE,
    ISSU_DATE,
    EXPIRY_DATE,
    ORG_NAME,
    issuing_authority,
    to_char(if_temp)if_temp
  from CMP_SP_AUDIT_ISSUE a
where a.ship_id = #{shipId}
) where rn = 1
"""



var res ="";

if(type=='1'){//光船租赁登记_光船租赁登记信息
    res=db.base_data.camel().selectOne(sql1);
    if(res !=null){
    res.put("orgName",TagUtils.getTagNameByCode("issuOrgTag",res.get("orgCode")));
    res.put("subleaseFlagDesc",TagUtils.getTagNameByCode("isNoTag",res.get("subleaseFlag")));
    }
}else if(type=='2'){ //船舶_船舶注销证明登记信息
    res=db.base_data.camel().selectOne(sql2);
    if(res !=null){
    res.put("ownershipDelFlagName",TagUtils.getTagNameByCode("isNoTag",res.get("ownershipDelFlag")));
    res.put("nationDelFlagName",TagUtils.getTagNameByCode("isNoTag",res.get("nationDelFlag")));
    res.put("mortgageDelFlagName",TagUtils.getTagNameByCode("isNoTag",res.get("mortgageDelFlag")));
    res.put("bareboatCharterDelFlagName",TagUtils.getTagNameByCode("isNoTag",res.get("bareboatCharterDelFlag")));
    res.put("creditorAgreeFlagName",TagUtils.getTagNameByCode("isNoTag",res.get("creditorAgreeFlag")));
    res.put("nextRegOrgName",TagUtils.getTagNameByCode("issuOrgTag",res.get("nextRegOrg")));
    res.put("mortgageFlagName",TagUtils.getTagNameByCode("mortgageFlag",res.get("mortgageFlag")));
    res.put("orgName",TagUtils.getTagNameByCode("issuOrgTag",res.get("orgCode")));
    }
}else if(type=='3'){ //船舶抵押权登记_船舶抵押权登记信息
    res=db.base_data.camel().selectOne(sql3);
    if(res !=null){
    res.put("orgName",TagUtils.getTagNameByCode("issuOrgTag",res.get("orgCode")));
    res.put("claimCurrencyName",TagUtils.getTagNameByCode("currencyTypeTag",res.get("claimCurrencyCode")));
    res.put("mortgageCurrencyName",TagUtils.getTagNameByCode("currencyTypeTag",res.get("mortgageCurrencyCode")));
    }
}else if(type=='4'){ //（临时）船舶国籍证书签发_船舶国籍证书签发信息
    res=db.base_data.camel().selectOne(sql4);
    if(res !=null){
    res.put("orgName",TagUtils.getTagNameByCode("issuOrgTag",res.get("orgCode")));
    res.put("tempNationFlagName",TagUtils.getTagNameByCode("tempMarkTag",res.get("tempNationFlag")));
    }
}else if(type=='5'){ //船舶所有权登记_船舶所有权登记信息
    res=db.base_data.camel().selectOne(sql5);
    if(res !=null){
    res.put("shipObtainWayName",TagUtils.getTagNameByCode("obtainWayTag",res.get("shipObtainWayCode")));
    }
 }else if(type=='6'){ //船舶审核与发证_船舶安全管理证书审核发证信息
    res=db.base_data.camel().selectOne(sql6);
    if(res !=null){
    res.put("issuingAuthorityName",TagUtils.getTagNameByCode("issuOrgTag",res.get("issuingAuthority")));
    res.put("ifTempName",TagUtils.getTagNameByCode("tempMarkTag",res.get("ifTemp")));
    }
}


return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    result: res
});