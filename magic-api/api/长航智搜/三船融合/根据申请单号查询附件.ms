{
  "properties" : { },
  "id" : "b59fc895b8e449d58af6cfc2b3c7abbb",
  "script" : null,
  "groupId" : "c02d793d72c844c4b8d76db461f1ddf0",
  "name" : "根据申请单号查询附件",
  "createTime" : null,
  "updateTime" : 1725532534803,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getScPhoto",
  "method" : "GET",
  "parameters" : [ {
    "name" : "applyId",
    "value" : "6000037565",
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
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;//返回结果
import 'com.success.data.tag.TagUtils' as TagUtils;//导入标签配置类
import 'org.ssssssss.magic.utils.TreeUtil' as TreeUtil;
import 'org.ssssssss.magic.entity.TreeModel' as TreeModel;
import 'com.alibaba.fastjson.JSON' as JSONA
import 'org.springblade.core.secure.utils.AuthUtil' as AuthUtil
import 'org.springblade.core.secure.BladeUser' as  BladeUser
import 'org.springframework.data.redis.core.StringRedisTemplate' as StringRedisTemplate
import response;

 var sql=""" select ID,ANNEX_ID,ANNEX_NAME,
              (case ANNEX_TYPE when '1' then '营业执照' 
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
                         when '20' then '标准化安全等级证书' else '' end) ANNEX_TYPE
                            when '21' then '光船租赁证书'
                             when '22' then '国内船舶管理业务经营许可证'

                    
              
              from bds_base_data.SC_INFORMATION_ANNEXS where APPLY_ID=#{applyId}  
              order by CREATE_DATE desc
              --order by decode(annex_type,'1',1,'2',2,'3',3,'4',4,'6',5,'7',6,'8',7,'9',8,'5',100,'10',9,'11',10)  
              """;

 var crewData=db.base_data.select(sql);//船员基本信息表

 
 return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
   
    result: crewData
   
    
});