{
  "properties" : { },
  "id" : "7cf67e6d328d4b80966d780b930d1927",
  "script" : null,
  "groupId" : "c02d793d72c844c4b8d76db461f1ddf0",
  "name" : "查看任务详情",
  "createTime" : null,
  "updateTime" : 1756885503734,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getTaskDetail",
  "method" : "GET",
  "parameters" : [ {
    "name" : "applyId",
    "value" : "6000054122",
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
    "name" : "page",
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
  }, {
    "name" : "size",
    "value" : "10",
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
    "name" : "applyType",
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
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"result\": {\n        \"upd\": {\n            \"list\": [],\n            \"total\": 0\n        },\n        \"add\": {\n            \"list\": [],\n            \"total\": 0\n        },\n        \"file\": [],\n        \"phone\": \"\",\n        \"auditComments\": \"\",\n        \"auditSatus\": \"待审核\",\n        \"auditDate\": \"\",\n        \"auditOrg\": \"江苏局\",\n        \"auditName\": \"\",\n        \"auditAccount\": \"\",\n        \"dataId\": \"\",\n        \"refData\": {}\n    }\n}",
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
      "name" : "result",
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
        "name" : "upd",
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
          "name" : "list",
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
        }, {
          "name" : "total",
          "value" : "0",
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
      }, {
        "name" : "add",
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
          "name" : "list",
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
        }, {
          "name" : "total",
          "value" : "0",
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
      }, {
        "name" : "file",
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
      }, {
        "name" : "phone",
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
        "name" : "auditComments",
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
        "name" : "auditSatus",
        "value" : "待审核",
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
        "name" : "auditDate",
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
        "name" : "auditOrg",
        "value" : "江苏局",
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
        "name" : "auditName",
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
        "name" : "auditAccount",
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
        "name" : "dataId",
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
        "name" : "refData",
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
      } ]
    } ]
  }
}
================================
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;//返回结果
import 'com.success.data.tag.TagUtils' as TagUtils;//导入标签配置类
import 'org.ssssssss.magic.utils.TreeUtil' as TreeUtil;
import 'org.ssssssss.magic.entity.TreeModel' as TreeModel;
import 'com.alibaba.fastjson.JSON' as JSONA
import 'org.springblade.core.secure.utils.AuthUtil' as AuthUtil
import 'org.springblade.core.secure.BladeUser' as  BladeUser
import 'org.springframework.data.redis.core.StringRedisTemplate' as StringRedisTemplate
import com.alibaba.fastjson.JSONArray
import com.alibaba.fastjson.JSONObject
import 'com.success.data.tag.TagUtils' as TagUtils;
import response;
import log;
import 'org.springblade.common.utils.FishermanUtil' as FishermanUtil;//正式放开
 
//审核意见
 var  sqlComment="""select AUDIT_ORG,AUDIT_NAME,AUDIT_ACCOUNT,AUDIT_COMMENTS,apply_user_Id,apply_type ,data_id,
 (case AUDIT_STATUS when '0' then '待审核' when '1' then '已审核' when '2' then '无需审核' else '' end ) 
 AUDIT_STATUS,to_char(audit_date,'yyyy-mm-dd hh24:mi:ss')audit_date from SC_INFORMATION_APPLY_FORM WHERE ID =#{applyId}"""
var sqlCommentres=db.base_data.camel().selectOne(sqlComment);


//维护信息
 var  sqlUpd="""
       select *
        from (select rownum rowno, b.*
              from (
                     select a.*,b.update_unit,b.update_date from ( 

                       select a.id,a.TABLE_NAME_CN,a.TABLE_NAME_EN,a.COLUMN_CN,a.COLUMN_EN,a.TRANSLATE_COLUMN_EN,a.DATAS,a.UPDATE_DATA,
              count(*) over() total_count,(case when a.audit_status ='0' then '未通过' when  a.audit_status ='1' then '通过' 
              when a.audit_status = '2' then '待审核' when a.audit_status = '3' then '无需审核' else ''  end)  audit_status,a.audit_status as audit_status_code,
               a.audit_comments,a.not_audity_flag,b.AUDIT_REFERENCE_UNIT,a.PK_PRIMARY_VALUE,a.PK_PRIMARY,b.AUDIT_REFERENCE_UNIT_CODE,b.dict,b.colum_type,
               (case when a.AUDIT_UPDATE_TRANSLATE is null or a.AUDIT_UPDATE_TRANSLATE =''  then a.AUDIT_UPDATE else a.AUDIT_UPDATE_TRANSLATE end) AUDIT_UPDATE_cn
              from SC_INFORMATION_COLUMNS a left join sc_table_fields 
              b on a.table_name_en=b.table_name_en and a.column_en=b.column_en WHERE a.pk_primary_value IS not NULL  
              ?{applyId,and a.apply_Id  = #{applyId}} and a.INSERT_FLAG='0'
              order by a.CREATE_DATE desc
              
              ) a left join (
  

                select pk_col_value,upper(update_col_name_en) update_col_name_en ,update_unit,update_user,update_date from (
                select row_number() over(partition by log.pk_col_value,upper(log.update_col_name_en) order by log.update_date desc) as rn ,log.*
                from bds_base_data.sc_information_update_log  log
                 where ?{applyId, serial_no  = #{applyId}}
                ) where rn=1
                ) b on a.PK_PRIMARY_VALUE=b.pk_col_value and a.COLUMN_EN=b.update_col_name_en

     ) b
        where rownum <= (#{page}*#{size}))
        a where a.rowno >((#{page}-1)*#{size})
"""
var sqlUpdRes=db.base_data.camel().select(sqlUpd);

//查询数据初始化权威数据来源


var updCount=0;
var fieldsPowerSql;
var tableNameEn;
var columnEn;
var dataSqlOld;
for(item in sqlUpdRes){
     updCount = item.get("totalCount");
     tableNameEn=item.tableNameEn;//表名
     columnEn=item.columnEn;//表字段
     fieldsPowerSql=""" select * from bds_base_data.sc_table_fields where table_name_en='"""+tableNameEn+"""'""";
     
     if(item.pkPrimary!=null&&item.pkPrimary!=""&&item.pkPrimaryValue!=null&&item.pkPrimaryValue!=""){
        dataSqlOld=""" select * from """+tableNameEn+""" where """+item.pkPrimary+"""='"""+item.pkPrimaryValue+"""'""";
     }

     //如果dict不为空，代表存在参数字典，根据参数字典取值
     if(item.get("dict")!=null&&item.get("dict")!=''){
             item.put("datas",TagUtils.getTagNameByCode(item.get("dict"),item.get("datas")));
             item.put("updateData",TagUtils.getTagNameByCode(item.get("dict"),item.get("updateData")));
             if(item.get("dict").toString().equals("placeBirthTag")){//省市
                var dd=StringRedisTemplate.opsForValue().get("commonTree");
              
                if(dd!=null&&dd!=""){
                        item.put("dict_select",JSONArray.parseArray(dd));
                        continue;
                }
                var  sql="""SELECT code as id ,ITEM_NAME_CN  as name,parent_item_code as parent_id  FROM DICT_DATA.D_COMM_AD_DIVISION 
                """
                var division=db.ods_data.camel().select(sql);//出生地

                var data=TreeUtil.getTreeList("",JSONA.parseArray(JSONA.toJSONString(division),TreeModel.class))
                item.put("dict_select",data);
                StringRedisTemplate.opsForValue().set("commonTree",JSONA.toJSONString(data) );
             }else if(item.get("dict").toString().equals("companyTypeTag")){
                var  sql="""SELECT code as id ,name  as name, parent_id  FROM DICT_DATA.dict_company_type
                        """
                var division=db.ods_data.camel().select(sql);//出生地

                var data=TreeUtil.getTreeList("",JSONA.parseArray(JSONA.toJSONString(division),TreeModel.class))
                item.put("dict_select",data);
             }else {
                 var list=TagUtils.getTag(item.get("dict").toString(),item.get("dict").toString())
                item.put("dict_select",list);
             }
                
     }
}  
//判断如果更新日志里没有更新单位，取配置表的字段值
if(fieldsPowerSql!=null&&fieldsPowerSql!=''){
        var fieldsPower=db.base_data.select(fieldsPowerSql);//字段权限控制
        for(item in sqlUpdRes){
              for(itChild in fieldsPower){
                    if(item.columnEn.equals(itChild.COLUMN_EN)){
                          if(item.updateUnit==null||item.updateUnit==""){//如果更新单位为空
                                item.updateUnit=itChild.UPDATE_UNIT;
                          }
                    }
              }
        }
}

//判断如果更新日志里没有更新时间，取原表的更新时间
if(dataSqlOld!=null&&dataSqlOld!=''){
        var fieldsPower=db.base_data.select(dataSqlOld);//字段权限控制
        for(item in sqlUpdRes){
              for(itChild in fieldsPower){
                    if(item.updateDate==null||item.updateDate==""){//如果更新单位为空
                       item.updateDate=itChild.LAST_UPDATE_DATE;
                    }                   
              }
        }
}


var sqlUpdResBack={
                "list":sqlUpdRes,
                "total":Integer.parseInt(updCount::string) 
        }

//新增信息
 var  sqlAdd="""
  select *
        from (select rownum rowno, b.*
              from (
                      select a.*,b.update_unit,b.update_date from (

                         select a.apply_Id,a.id,a.TABLE_NAME_CN,a.TABLE_NAME_EN,a.COLUMN_CN,a.COLUMN_EN,a.TRANSLATE_COLUMN_EN,a.DATAS,a.UPDATE_DATA,
                        count(*) over() total_count,(case when a.audit_status ='0' then '未通过' when 
                         a.audit_status ='1' then '通过'
                          when a.audit_status = '2' then '待审核' when a.audit_status = '3' then '无需审核'  else ''  end)  audit_status,
                        a.audit_status as audit_status_code, a.audit_comments ,a.not_audity_flag,
                        a.PK_PRIMARY_VALUE,b.AUDIT_REFERENCE_UNIT,a.PK_PRIMARY,b.AUDIT_REFERENCE_UNIT_CODE,b.dict,b.colum_type,
                        (case when a.AUDIT_UPDATE_TRANSLATE is null or a.AUDIT_UPDATE_TRANSLATE =''  then a.AUDIT_UPDATE else a.AUDIT_UPDATE_TRANSLATE end) AUDIT_UPDATE_cn

                from SC_INFORMATION_COLUMNS a left join sc_table_fields 
                  b on a.table_name_en=b.table_name_en and a.column_en=b.column_en WHERE a.pk_primary_value IS not  NULL   and a.INSERT_FLAG='1'
                ?{applyId,and a.apply_Id  = #{applyId}}


                ) a left join (
  

                select pk_col_value,upper(update_col_name_en) update_col_name_en ,update_unit,update_user,update_date from (
                select row_number() over(partition by log.pk_col_value,upper(log.update_col_name_en) order by log.update_date desc) as rn ,log.*
                from bds_base_data.sc_information_update_log  log  where ?{applyId, serial_no  = #{applyId}}
                ) where rn=1
                ) b on a.PK_PRIMARY_VALUE=b.pk_col_value and a.COLUMN_EN=b.update_col_name_en

     ) b
        where rownum <= (#{page}*#{size}))
        a where a.rowno >((#{page}-1)*#{size})
"""
var sqlAddRes=db.base_data.camel().select(sqlAdd);

var addCount=0;
fieldsPowerSql="";
dataSqlOld="";
 for(item in sqlAddRes){
            addCount = item.get("totalCount");
            tableNameEn=item.tableNameEn;//表名
           columnEn=item.columnEn;//表字段
           fieldsPowerSql=""" select * from bds_base_data.sc_table_fields where table_name_en='"""+tableNameEn+"""'""";
           if(item.pkPrimary!=null&&item.pkPrimary!=""&&item.pkPrimaryValue!=null&&item.pkPrimaryValue!=""){
                dataSqlOld=""" select * from """+tableNameEn+""" where """+item.pkPrimary+"""='"""+item.pkPrimaryValue+"""'""";
           }
            //如果dict不为空，代表存在参数字典，根据参数字典取值
     if(item.get("dict")!=null&&item.get("dict")!=''){
             item.put("datas",TagUtils.getTagNameByCode(item.get("dict"),item.get("datas")));
             item.put("updateData",TagUtils.getTagNameByCode(item.get("dict"),item.get("updateData")));
             if(item.get("dict").toString().equals("placeBirthTag")){//省市
                var dd=StringRedisTemplate.opsForValue().get("commonTree")
                if(dd!=null&&dd!=""){
                        item.put("dict_select",JSONArray.parseArray(dd));
                        continue;
                }
                var  sql="""SELECT code as id ,ITEM_NAME_CN  as name,parent_item_code as parent_id  FROM DICT_DATA.D_COMM_AD_DIVISION 
                """
                var division=db.ods_data.camel().select(sql);//出生地

                var data=TreeUtil.getTreeList("",JSONA.parseArray(JSONA.toJSONString(division),TreeModel.class))
                item.put("dict_select",data);
                StringRedisTemplate.opsForValue().set("commonTree",JSONA.toJSONString(data) );
             }else if(item.get("dict").toString().equals("companyTypeTag")){
                var  sql="""SELECT code as id ,name  as name, parent_id  FROM DICT_DATA.dict_company_type
                        """
                var division=db.ods_data.camel().select(sql);//出生地

                var data=TreeUtil.getTreeList("",JSONA.parseArray(JSONA.toJSONString(division),TreeModel.class))
                item.put("dict_select",data);
             }else {
                    
                     var list=TagUtils.getTag(item.get("dict").toString(),item.get("dict").toString())
                item.put("dict_select",list);
             }

     }
           
}   

//判断如果更新日志里没有更新单位，取配置表的字段值
if(fieldsPowerSql!=null&&fieldsPowerSql!=''){
        var fieldsPower=db.base_data.select(fieldsPowerSql);//字段权限控制
        for(item in sqlAddRes){
              for(itChild in fieldsPower){
        
                    if(item.columnEn.equals(itChild.COLUMN_EN)){
                          if(item.updateUnit==null||item.updateUnit==""){//如果更新单位为空
                                item.updateUnit=itChild.UPDATE_UNIT;
                          }
                    }
              }
        }
}

//判断如果更新日志里没有更新时间，取原表的最后更新时间
if(dataSqlOld!=null&&dataSqlOld!=''){
        var fieldsPower=db.base_data.select(dataSqlOld);//字段权限控制
        for(item in sqlAddRes){
              for(itChild in fieldsPower){
                    if(item.updateDate==null||item.updateDate==""){//如果更新单位为空
                       item.updateDate=itChild.LAST_UPDATE_DATE;
                    }                   
              }
        }
}
var sqlAddResBack={
                "list":sqlAddRes,
                "total":Integer.parseInt(addCount::string) 
        }

//附件信息
//附件类型（（1营业执照、2船舶营运证、3船员身份证正面、4船员身份证反面、5其他、

 var  sqlFile="""
        select  (case ANNEX_TYPE when '1' then '营业执照' 
        when '2' then '船舶营运证'
         when '3' then '船员身份证正面' 
          when '4' then '船员身份证反面'
           when '5' then '其他'
            when '6' then '内河适任证'
             when '7' then '船检证书或内河船舶安全与环保证书'
              when '8' then '公司符合证明证书'
               when '9' then '船舶所有权证书'
                when '11' then '船舶安全管理证书'
                 when '12' then 'MMSI证书'
                  when '13' then '工商信息'
                   when '14' then '船舶国籍证书'
                    when '15' then '适装证书'
                     when '16' then '护照'
                      when '17' then '适航证书（附图）'
                       when '18' then '户口本'
                        when '19' then '水路运输许可证'
                         when '20' then '标准化安全等级证书'
                          when '21' then '光船租赁证书'
                           when '22' then '国内船舶管理业务经营许可证'
                         
                              
        else '' end)ANNEX_TYPE,annex_name,annex_id as id
  from SC_INFORMATION_ANNEXS WHERE  1=1  
  ?{applyId,and apply_Id  = #{applyId}}
    order by CREATE_DATE desc
    --order by decode(annex_type,'1',1,'2',2,'3',3,'4',4,'6',5,'7',6,'8',7,'9',8,'5',100,'10',9,'11',10)
"""
var sqlFileRes=db.base_data.camel().select(sqlFile);


var res={};

res.put("upd",sqlUpdResBack);
res.put("add",sqlAddResBack);
res.put("file",sqlFileRes);
var refData={};
if(sqlCommentres!=null){
        //根据申请人id，查询申请人电话号码
        var phoneSql=""" select phone from blade_user where id='"""+sqlCommentres.get("applyUserId")+"""'""";
        var phoneData=db.bladex.camel().select(phoneSql);
        if(phoneData!=null){
             res.put("phone",FishermanUtil.dncSm4  //正式环境放开
             (sqlCommentres.get("phone")));
        }
        res.put("auditComments",sqlCommentres.get("auditComments"));
        res.put("auditSatus",sqlCommentres.get("auditStatus"));
        res.put("auditDate",sqlCommentres.get("auditDate"));
        res.put("auditOrg",sqlCommentres.get("auditOrg"));
        res.put("auditName",sqlCommentres.get("auditName"));
        res.put("auditAccount",sqlCommentres.get("auditAccount"));
        res.put("dataId",sqlCommentres.get("dataId"));
        //1船公司信息维护、2船舶信息维护、3船员信息维护
        if(sqlCommentres.get("dataId")!=null&&sqlCommentres.get("dataId")!=''){
            if(sqlCommentres.get("applyType")=='1'){
                        var sqlBasic=""" select uscc,a.organization_code as 
                        company_id,a.company_name from bds_base_data.company_info_all          
                              a  where uscc=#{sqlCommentres.dataId}""";
                        var basicData=db.base_data.camel().selectOne(sqlBasic);
                          res.put("basicData",basicData);     
                  }else if(sqlCommentres.get("applyType")=='2'){
                         var sqlBasic=""" select data_source,ship_imo,ship_reg_no,ship_id,ship_no,
                                          ship_Inspect_No,status_flag from 
                                          bds_base_data.sc_ship_basic_data where ship_no=#{sqlCommentres.dataId}""";
                        var basicData=db.base_data.camel().selectOne(sqlBasic);
                          res.put("basicData",basicData);  

                  }else if(sqlCommentres.get("applyType")=='3'){
                        var basicData={
                              "idCardNo":sqlCommentres.get("dataId")
                        }
                         res.put("basicData",basicData); 
                  }
        }
       
        
       //if(sqlCommentres.get("applyType")=='20'){

       var Sql="""select a.id, (case
                           when card_type = '1' then
                            '自然人'
                           when card_type = '2' then
                            '船公司'
                           when card_type = '3' then
                            '其他社会组'
                           when card_type = '4' then
                            '个体工商户'
                             when card_type = '5' then
                            '公司'
                           else
                            ''
                         end) card_type,
                         (case
                           when type = '1' then
                            '船舶所有人'
                           when type = '2' then
                            '船舶经营人'
                           when type = '3' then
                            '船舶管理人'
                           when type = '4' then
                            '船舶承租人'
                           else
                            ''
                         end) type,
                         (case
                           when card_type_big = '1' then
                            '统一社会信用代码'
                           when card_type_big = '2' then
                            '身份证号码'
                           else
                            ''
                         end) card_type_big,
                         card_no,
                         card_name,
                         (case
                           when apply_status = '0' then
                            '待审核'
                           when apply_status = '1' then
                            '审核通过'
                           when apply_status = '2' then
                            '审核不通过'
                           else
                            ''
                         end) apply_status,
                         (case
                           when a.status_flag = 'add' then
                            '绑定'
                           when a.status_flag = 'del' then
                            '解绑'
                           else
                            ''
                         end) bind_flag,
                         b.ship_name_cn,
                         count(*) OVER() total_count,
                         (case
                           when a.status_flag = 'add' then
                            '新增'
                           when a.status_flag = 'del' then
                            '删除'
                           else
                            ''
                         end) status_flag
                    from bds_base_data.CHANGE_REF_SHIP_prod a
                    left join bds_base_data.sc_ship_basic_data b
                      on a.ship_reg_no = b.ship_reg_no
                   where 1 = 1 ?{applyId,and  a.serial_no =#{applyId}}
                   and a.status_flag is not null 
                  order by a.import_time desc"""      
      
      
       /**var Sql = """
                  select a.*,b.ship_name_cn,count(*) OVER() total_count from bds_base_data.company_ref_ship_prod a left join bds_base_data.sc_ship_basic_data
                  b on a.ship_reg_no=b.ship_reg_no  where 1=1 
                  ?{applyId,and  a.serial_no =#{applyId}}
                  order by a.import_time desc
                              """;**/
        refData=db.base_data.camel().select(Sql).group(it => it.type); 
        
      // }
       res.put("refData",refData)
}



return response.json({
        resultCode: 200,
        resultMsg: "查询成功",
        result: res
	});