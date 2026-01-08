{
  "properties" : { },
  "id" : "d96d47bd3ce4427faae662203ed52b0f",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "船舶基本信息",
  "createTime" : null,
  "updateTime" : 1703731907052,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/queryShipInfo",
  "method" : "POST",
  "parameters" : [ ],
  "options" : [ ],
  "requestBody" : "{\r\n    \"shipImo\":\"\",\r\n    \"shipRegNo\":\"3232\",\r\n    \"shipId\":\"\"\r\n\r\n}",
  "headers" : [ {
    "name" : "Authorization",
    "value" : "bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZXN0IjoidGVzdCIsInVzZXJfbmFtZSI6ImFkbWluIiwic2NvcGUiOlsiYWxsIl0sImV4cCI6MTU1MzE2MTA5NSwiYXV0aG9yaXRpZXMiOlsiUk9MRV9VU0VSIl0sImp0aSI6IjE0YmMyYjAyLTgxY2UtNDFiNC04ZTI3LTA5YWE0ZmU4ZWMwYyIsImNsaWVudF9pZCI6ImJsYWRlIn0.jTmioQDq-fSNNn7YCwl3wP0JE-etSWtzLDe545mDbP4",
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
  "paths" : [ ],
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1672906835683,\n    \"executeTime\": 55\n}",
  "description" : "",
  "requestBodyDefinition" : {
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
      "name" : "shipImo",
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
      "name" : "shipRegNo",
      "value" : "3232",
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
      "name" : "code",
      "value" : "-1",
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
      "name" : "message",
      "value" : "系统内部出现错误",
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
      "dataType" : "Object",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "timestamp",
      "value" : "1672906835683",
      "description" : "",
      "required" : false,
      "dataType" : "Long",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "executeTime",
      "value" : "55",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
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
import 'com.success.data.tag.TagUtils' as TagUtils;
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;

var shipImo = body.shipImo;
var shipId=body.shipId;
var shipRegNo=body.shipRegNo;

var cbSql;
if(shipImo!=null and shipImo!=""){//如果是外国籍船
 
  cbSql = """
     select ship_id as ship_no,SHIP_ID,SHIP_FLAG_CODE,SHIP_TYPE_CODE,SHIP_CLASS_SOCIETY_CODE,SHIP_COMP_CODE,SHIP_COMP_ID,SHIP_IMO,
                    SHIP_NAME_CN,SHIP_NAME,SHIP_CALLSIGN,SHIP_MMSI,SHIP_GROSSTON,SHIP_DEADWEIGHT,
                    to_char(to_date            (SHIP_DATE_KEEL_LAID,'yyyy-MM-dd'),'yyyy-MM-dd') SHIP_DATE_KEEL_LAID,
                    SHIP_LENGTH,SHIP_REMARKS,SHIP_CLASS_SOCIETY_NAME,SHIP_LAST_MODIFY_DATE,SHIP_NAME_OF_SHIP_MASTER,
                    LAST_UPDATE_DATE from SHP_BASIC_DATA_PSC
                    where ?{body.shipImo,   SHIP_IMO=#{body.shipImo}}  and delete_flag='0'
""";
}else{//中国籍船
cbSql = """
     select 'A'||t.SHIP_FIRSTREG_NO as ship_no,substr(t.ship_type_code,0,2)as ship_type_code_name,
                    t.SHIP_REG_NO,t.SHIP_ID,t.SHIP_NAME_CN,t.SHIP_NAME_EN,t.ORIG_SHIP_NAME_CN,t.SHIP_FIRSTREG_NO,t.SHIP_IMO,
                    m.mmsi  ,
                    t.REGPORT_CODE,t.SHIP_ROUTE_CODE,t.SHIP_TYPE_CODE,t.SHIP_VALUE,t.SHIP_SUMMER_DRAFT,
                    t.SHIP_WIND_LEVEL,t.             SHIP_MINIMUM_FREEBOARD,
                    t.SHIP_CONTAINER_NUM,t.SHIP_PARKING_NUM,t.SHIP_PASSENGER_NUM,t.IC_CARD_NO,
                    t.MORTGAGE_FLAG,t.BAREBOAT_FLAG,t.ALTER_FLAG,t.STATUS_FLAG,
                    t.HANDOUT_CARD_FLAG,t.FINANCIAL_LEASE_FLAG,t.HIBERNATE_FLAG,t.TRIAL_SHIP_FLAG,
                    t.REMARK,t.SHIP_INSPECT_NO,t.SHIP_CALLSIGN,t.SAILINGAREA_CODE,
                    t.SHIP_HULL_MATERIAL_CODE,to_char(t.SHIP_BUILT_DATE, 'yyyy-mm-dd') SHIP_BUILT_DATE,
                    t.SHIPYARD_CN,t.SHIPYARD_EN,t.SHIP_BUILT_ADDR_CN,t.SHIP_BUILT_ADDR_EN,t.SHIP_LENGTH,t.SHIP_BREADTH,
                    t.SHIP_DEPTH,t.SHIP_GROSSTON,t.SHIP_NETTON,t.SHIP_DWT,t.SHIP_ENGINE_TYPE_CODE,
                    t.SHIP_ENGINE_POWER,t.SHIP_ENGINE_NUM,t.SHIP_PROPELLER_NUM,
                    t.SHIP_PROPELLER_KIND_CODE,t.ORIG_REGPORT_NAME,
                    t.SHIP_ID_FLAG,t.ORIG_SHIP_NAME_EN,t.ORIG_SHIP_REG_NO,t.SHIP_REGION_TYPE,
                    to_char(t.SHIP_REBUILT_DATE, 'yyyy-mm-dd') SHIP_REBUILT_DATE,
                    t.SHIP_REBUILT_ADDR_CN,t.SHIP_REBUILT_ADDR_EN,to_char(t.ORIG_DELETION_DATE, 'yyyy-mm-dd') ORIG_DELETION_DATE
                    ,t.PERMANENT_SEAL_REMARK,t.DETENTION_FLAG,t.SHIPID_SEAL_FLAG,
                    t.ORG_CODE 
                    
                    from SHP_BASIC_DATA t left join SHP_MMSI m on t.ship_reg_no=m.ship_reg_no where  1=1 and t.delete_flag='0' and m.delete_flag='0'
                   
""";
}

if(shipId!=null and shipRegNo!=null and shipId!='' and shipRegNo!=''){
    cbSql=cbSql+"""
                      and  (?{body.shipRegNo,     t.ship_reg_no=#{body.shipRegNo} } 
                        ?{body.shipId, or  t.ship_id=#{body.shipId}})
    """;
    }
else if(shipId!=null and shipId!='' ){
    cbSql=cbSql+"""
    ?{body.shipId,  and  t.ship_id=#{body.shipId}}
    """;
    
} else if(shipRegNo!=null and shipRegNo!=''){
    cbSql=cbSql+"""
     ?{body.shipRegNo,  and   t.ship_reg_no=#{body.shipRegNo} } 
    """;
    }

var basic = db.base_data.camel().selectOne(cbSql);
if(basic!=null){
    basic.put("mortgageFlag",
        TagUtils.getTagNameByCode("mortgageFlag",basic.get("mortgageFlag")));
    basic.put("bareboatFlag",
        TagUtils.getTagNameByCode("bareboatFlag",basic.get("bareboatFlag")));		
    basic.put("alterFlag",
        TagUtils.getTagNameByCode("applHkAndMacaoSignTag",basic.get("alterFlag")));     
    basic.put("statusFlag",
        TagUtils.getTagNameByCode("statusFlag",basic.get("statusFlag")));  
    basic.put("handoutCardFlag",
        TagUtils.getTagNameByCode("handoutCardFlag",basic.get("handoutCardFlag")));  		
    basic.put("financialLeaseFlag",
        TagUtils.getTagNameByCode("financialLeaseFlag",basic.get("financialLeaseFlag")));  	
    basic.put("hibernateFlag",
        TagUtils.getTagNameByCode("hibernateFlag",basic.get("hibernateFlag"))); 
    basic.put("trialShipFlag",
        TagUtils.getTagNameByCode("tailShipFlag",basic.get("trialShipFlag"))); 

    basic.put("detentionFlag",
        TagUtils.getTagNameByCode("deletionFlag",basic.get("detentionFlag"))); 
        basic.put("shipidSealFlag",
        TagUtils.getTagNameByCode("shipIdSealFlag",basic.get("shipidSealFlag"))); 
    basic.put("regportCode",
        TagUtils.getTagNameByCode("shipRegportTag",basic.get("regportCode"))); 
    basic.put("shipRouteCode",
        TagUtils.getTagNameByCode("shipRouteLineTag",basic.get("shipRouteCode"))); 		
    basic.put("shipTypeCode",
        TagUtils.getTagNameByCode("shipClassTag",basic.get("shipTypeCode")));            
    basic.put("sailingareaCode",
        TagUtils.getTagNameByCode("shipClassTag",basic.get("sailingareaCode")));  
    basic.put("shipEngineTypeCode",
        TagUtils.getTagNameByCode("shipEngineTag",basic.get("shipEngineTypeCode")));  		
    basic.put("shipRegionType",
        TagUtils.getTagNameByCode("shipRegionTypeTag",basic.get("shipRegionType"))); 
        basic.put("orgCode",
        TagUtils.getTagNameByCode("issuOrgTag",basic.get("orgCode")));
        basic.put("sailingareaCode",
        TagUtils.getTagNameByCode("shipRouteAreaTag",basic.get("sailingareaCode")));

         basic.put("shipHullMaterialCode",
        TagUtils.getTagNameByCode("shipHullTag",basic.get("shipHullMaterialCode")));

         basic.put("shipPropellerKindCode",
        TagUtils.getTagNameByCode("shipPropllerTag",basic.get("shipPropellerKindCode")));
        
}

var entities;
var recEntities;
if(shipId!=null and shipId!=""){//
  //船舶基础资料_船舶改建信息
  var  cbGjSql = """
      select SHIP_SURVEY_NO,SHIP_SURVEY_ITEM_NAME,INSPECTION_ORG_NAME,INSPECTION_ORG_CODE,SHIP_INS_REG_NO,
      SHIP_ID,SHIP_NAME_CN,SHIP_CLASS_NAME,
                   SHIP_CLASS_CODE,SHIPYARD_CN,SHIP_GROSSTON,SHIP_ENGINE_POWER,SHIP_LENGTH,SHIP_BREADTH,
                   SHIP_DEPTH,AUDIT_DRAWING_APPROVAL_NO,DRAWING_APPROVAL_UNIT,
                    SHIP_DESIGN_ORG,to_char(CONVERSION_DATE,'yyyy-mm-dd' ) CONVERSION_DATE ,
                    to_char(LAUNCHING_DATE,'yyyy-mm-dd') LAUNCHING_DATE ,to_char(CONS_COMP_DATE,'yyyy-mm-dd') 
                    CONS_COMP_DATE ,to_char(SHIP_SURVEY_COMPLET_DATE,'yyyy-mm-dd') SHIP_SURVEY_COMPLET_DATE ,
                    SHIP_OWNER,SHIP_OPERATOR,SHIP_REGION_NAME,REFERENCE_LOAD,
                    SURVEYOR,MARITIME_ORG_CODE,MARITIME_ORG_FULL_NAME,SHIP_SURVEY_ORG,SURVEY_NO,ORGAN_NAME_ABB,
                    ORGAN_CODE,PROVINCE||LOCATION as seat,GROUP_NAME,
                    ISSUED_DATE_FIRST,SOURCE_CODE,DATA_ORG_CODE,CREATE_DATE,CREATOR,LAST_UPDATE_DATE,UPDATE_BY,
                    DELETE_FLAG,PROCESS_STATUS from SHP_REBUILT_INFO where  1=1 and delete_flag='0' and   ?{body.shipId,   ship_id=#{body.shipId}} 
      """;
      entities = db.base_data.camel().selectOne(cbGjSql);
  //进出港报告 
  var jcgSql="""
    select REPORT_ID,REG_SHIP_ID,SHIP_ID,SHIP_REG_NO,SHIP_FIRSTREG_NO,SHIP_INSPECT_NO,SHIP_NAME_CN,SHIP_NAME_EN,SHIP_IMO,MMSI, 
            SHIP_CALLSIGN,REGPORT_CODE,FLAG_STATE_CODE,SHIP_REGION_TYPE,SHIP_TYPE_CODE,SHIP_GROSSTON,SHIP_NETTON,
            SHIP_DWT,MAINENGINE_POWER, 
            SHIP_PASSENGER_NUM,SHIP_LENGTH,SHIP_BREADTH,SHIP_DEPTH,LINE_CODE,AREA_CODE,CONSTRUCTION_DATE,
            SHIP_OWNER,OWNER_ADDRESS,OWNER_CONTACT_PHONE, 
            OWNER_CORPORATION,SHIP_OPERATOR,OPERATOR_ADDRESS,OPERATOR_TELEPHONE,OPERATOR_CORPORATION,
            BUSINESS_CODE,REPORT_NO,ORG_CODE,REPORT_PORT_NAME, 
            REPORT_PORT_CODE,ARRIVAL_OR_LEAVE,ARRIVAL_REPORT_ID,NEXT_PORT_NAME,NEXT_PORT_CODE,REPORT_TIME,
            BID_NAME,MOBILE_PHONE,EXPECT_TIME,IF_ANCHORED, 
            DRAFT_FORWARD,AFT_DRAFT,BERTH_CODE,BERTH_NAME,OTHER_QUANTITY,ACTUAL_CARRYING_CAPACITY,PORT_CARGO,
            REAL_DANGER_CARGO,PORT_DANGER_CARGO,ACTUAL_CAPACITY, 
            PORT_PASSENGER,REAL_VEHICLE,PORT_VEHICLE,NUM_OF_BARGE,PORT_BARGE,REAL_CONTAINER_QAY,PORT_CONTAINER_QAY,
            LONGITUDE,LATITUDE,IF_REVOKE,VOYAGE_REPORT, 
            FREQUENCY,NAVIGATION_SECTION,PRE_PORT_NAME,PRE_PORT_CODE 
			     
             from  RPT_SHIP_EEP_REPORT_REC 
             where  ?{body.shipId,   ship_id=#{body.shipId}}   and delete_flag='0' order by report_time desc
  """;
  recEntities= db.biz_data.camel().selectOne(jcgSql);
   if(recEntities!=null){
          
             recEntities.put("ifAnchored",TagUtils.getTagNameByCode("ifAnchored",recEntities.get("ifAnchored")::string))
             recEntities.put("ifRevoke",TagUtils.getTagNameByCode("ifRevoke",recEntities.get("ifRevoke")::string))   

             recEntities.put("arrivalOrLeave",TagUtils.getTagNameByCode("arrivalOrLeave",recEntities.get("arrivalOrLeave")::string))      
             recEntities.put("orgCode",TagUtils.getTagNameByCode("issuOrgTag",recEntities.get("orgCode"))) 
             recEntities.put("offiSources",TagUtils.getTagNameByCode("isOwnTag",recEntities.get("offiSources")))               
              
             
        } 
}else{
 entities="";
 recEntities="";
}
var issueDa;//航运公司_安全管理证书
var titleCertificate;//查询船舶所有权
var nationality;//船舶国籍证书信息
var sfShips;//船舶信息
var  dtos;//船舶公司


if(shipRegNo!=null and shipRegNo!=""){//
  //查询船舶所有权
  var cbsyqSql="""
    SELECT 
          SHIP_REG_NO,SHIP_OWNER_CN,SHIP_OWNER_ADDR_CN,SHIP_OWNER_EN,SHIP_OWNER_ADDR_EN,
          OWNER_LEGAL_PERSON,              OWNER_CONTACT_PHONE,
          OWNER_POSTALCODE,to_char(CERT_OBTAIN_DATE,'yyyy-mm-dd') as  CERT_OBTAIN_DATE,SHIP_OBTAIN_WAY_CODE,SHIP_SHARE_SITUATION,STATUS_FLAG,PRINT_FLAG,
          SEAL_FLAG,CHECK_FLAG,
          ISSUE_FLAG,ORG_CODE,CERT_PRINT_NO,REG_DELETION_NO,REMARK,CREATOR_CODE,CREATE_TIME,OPERATOR_CODE
          ,OPERATE_TIME,OPERATE_FLAG,
          SOURCE_CODE,DATA_ORG_CODE,CREATE_DATE,CREATOR,LAST_UPDATE_DATE,UPDATE_BY,DELETE_FLAG,PROCESS_STATUS
          FROM SHP_CERT_OWNERSHIP WHERE 1=1   and delete_flag='0' 
          and   ?{body.shipRegNo,   SHIP_REG_NO=#{body.shipRegNo}} 
  """;
  titleCertificate= db.base_data.camel().selectOne(cbsyqSql);
    //查询船舶国籍证书信息
    var cbgjzhSql="""
     SELECT SHIP_REG_NO, NATION_VERSION, TEMP_NATION_FLAG, LANGUAGE_TYPE, SHIP_OPERATOR_CN, 
     SHIP_OPERATOR_ADDR_CN, OPERATOR_LEGAL_PERSON, OPERATOR_CONTACT_PHONE, OPERATOR_POSTALCODE,
      SHIP_MANAGER_CN, SHIP_MANAGER_ADDR_CN, MANAGER_LEGAL_PERSON, MANAGER_CONTACT_PHONE, MANAGER_POSTALCODE,
       SHIP_OWNER_CN, SHIP_OWNER_ADDR_CN, SHIP_OPERATOR_EN, SHIP_OPERATOR_ADDR_EN, SHIP_OWNER_EN, 
       SHIP_OWNER_ADDR_EN, EFFECTIVE_DATE, EXPIRE_DATE, CERT_OBTAIN_DATE, STATUS_FLAG, PRINT_FLAG, 
       SEAL_FLAG, CHECK_FLAG, ISSUE_FLAG, ORG_CODE,
        CERT_PRINT_NO, REG_DELETION_NO, REMARK, CREATOR_CODE, CREATE_TIME, OPERATOR_CODE, OPERATE_TIME, 
        OPERATE_FLAG, SOURCE_CODE, DATA_ORG_CODE, CREATE_DATE, CREATOR, LAST_UPDATE_DATE, UPDATE_BY, 
        DELETE_FLAG, PROCESS_STATUS  FROM SHP_CERT_NATIONAL  where status_flag = '1'   and delete_flag='0' 
      and       ?{body.shipRegNo,   SHIP_REG_NO=#{body.shipRegNo}}     
    """;
    nationality= db.base_data.camel().selectOne(cbgjzhSql);

      //管理船舶信息
      var glcbsQL="""
      SELECT SHIP_PRIMARY_KEY,AUDIT_SHIP_TYPE,MANAGE_FORMS,COMPANYID, to_char(MANAGE_BEGIN_DATE,'yyyy-mm-dd') MANAGE_BEGIN_DATE,NUM_IN_SYSTEM,
       (case when IFSYSTEM='1' then '是'  else '否' end) 
        IFSYSTEM,IFSYSTEM ifsystem_Name,AUDIT_ORG_CODE,JOIN_DATE,IN_LAND_SPC_NO,SOURCE_CODE,DATA_ORG_CODE,
      CREATE_DATE,CREATOR,LAST_UPDATE_DATE,UPDATE_BY,DELETE_FLAG,PROCESS_STATUS FROM CMP_MNG_SP_INFO where 1=1  and delete_flag='0' 
      ?{body.shipRegNo,   and SHIP_PRIMARY_KEY=#{body.shipRegNo}}    
      """;
      sfShips=db.base_data.camel().selectOne(glcbsQL);
     
      //查询船舶公司
     if(sfShips != null){
          var companyId=sfShips.get("companyid");
          if(companyId!=null){
            companyId="'"+companyId+"'";
             var cbSqLxxx="""
             select companyid,organization_code,to_char( reg_date, 'yyyy-mm-dd') reg_date,legal_representative,
             company_name,abbreviation_cn,
                   company_name_en,abbreviation_en, flag_state_code,province,city,address,address_en,business_no,
                  license_no,manage_no, if_obtain,obtain_date, port_license_no,supervisor_unit,inter_cert_no, contact_person,
                  mobile_phone, office_telephone, mailing_address, fax,zip_code, web_site, we_chat,category_code,
                  nature_code,classify_codes,embranchment, inter_license_code, inter_ship_license_code,
                  pcompanyid,  uscc,  remark   from CMP_SHIPPING_COMPANY where
                   1=1  and delete_flag='0'  and companyId = """+companyId+"""
                   
             """;
             dtos=db.base_data.camel().selectOne(cbSqLxxx);
             if(dtos!=null){
                    if(dtos.get("province")!=null){
                          dtos.put("province",
                                   TagUtils.getTagNameByCode("provinceTag",dtos.get("province")::string)); 
                    }
                     
                    dtos.put("city",
                    TagUtils.getTagNameByCode("cityTag",dtos.get("city"))); 
                    dtos.put("natureCode",
                    TagUtils.getTagNameByCode("natureEnterpriseTag",dtos.get("natureCode"))); 
                    if(dtos.get("ifObtain")!=null){
                         dtos.put("ifObtain",
                              TagUtils.getTagNameByCode("releaseMark",dtos.get("ifObtain")::string)); 
                    }  
             }
          }

   
      }
      //航运公司_安全管理证书
     
      var HygsSql="""
      select SHIP_ID,SHIP_NAME_CN,SHIP_TYPE_CODE,REGPORT_CODE,INTER_DOC_NO,SHIP_GROSSTON,PASSENGER_QUOTA,SHIP_REG_NO,
             SHIP_OWNER,SHIP_SAFETY_MANAGE_CERT_NO,IF_TEMP,DOMESTIC_INTL_CERT_MARK,AUDIT_END_DATE,
             APPROVAL_PEOPLE,
             to_char( ISSU_DATE, 'yyyy-mm-dd') ISSU_DATE, to_char( EXPIRY_DATE, 'yyyy-mm-dd') EXPIRY_DATE,
             ISSUING_AUTHORITY,ENDORSER,ENDORSE_DATE,ENDORSE_SITE,ATTACH_DATE,ATTACHER,ATTACH_SITE,
             IS_CANCEL,to_char( CANCEL_DATE, 'yyyy-mm-dd') CANCEL_DATE,CANCEL_REASON,CANCELLATION_PERSON,IF_ROLL,
             to_char( ROLL_EXPIRY_DATE, 'yyyy-mm-dd') ROLL_EXPIRY_DATE,to_char( ROLL_DATE, 'yyyy-mm-dd') 
             ROLL_DATE,ROLLER,ATTACH_SITE2,
             ATTACH_SITE3,ATTACH_DATE2,ATTACH_DATE3,ATTACHER2,ATTACHER3,to_char( BEGIN_DATE, 'yyyy-mm-dd') 
              BEGIN_DATE,SYS_CREATED_BY,CREATING_TIME,
             LAST_MODIFY_PERSON,LAST_MODIFY_DT,SMCID,COMPANYID,SYS_DEPT,SYS_ORG,ISSUE_SITE,SHIP_INSPECT_NO,SHIP_PRIMARY_KEY,
             CHANGE_OR_REISSUE,COMPANY_NAME,BUSINESS_ID,ORG_NAME,REMARK,LAST_UPDATE_DATE from 
             CMP_SP_AUDIT_ISSUE
            where 1=1  and delete_flag='0' 
              ?{body.shipRegNo,   and SHIP_REG_NO =#{body.shipRegNo}} 
             and IS_CANCEL=0
      """;
     issueDa=db.base_data.camel().selectOne(HygsSql); 
     //dtos=db.base_data.camel().select(cbSqLxxx);
}


var data={
    "basic":basic,
    "entities":entities,
    "recEntities":recEntities,
    "titleCertificate":titleCertificate,
    "nationality":nationality,
    "sfShips":sfShips,    
    "dtos": dtos,
    "issueData":issueDa
    
}

import response;
	return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: data
	});