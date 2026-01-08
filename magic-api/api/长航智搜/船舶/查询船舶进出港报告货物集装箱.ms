{
  "properties" : { },
  "id" : "d2972536e9e84041aba17af4f48f1ecc",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "查询船舶进出港报告货物集装箱",
  "createTime" : null,
  "updateTime" : 1693552389889,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/queryReportDetail",
  "method" : "GET",
  "parameters" : [ {
    "name" : "reportId",
    "value" : "ada234bf-c16d-463c-8cef-c1348d856de1",
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
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1679988980367,\n    \"executeTime\": 25\n}",
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
      "name" : "code",
      "value" : "-1",
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
      "name" : "message",
      "value" : "系统内部出现错误",
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
      "name" : "data",
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
    }, {
      "name" : "timestamp",
      "value" : "1679988980367",
      "description" : "",
      "required" : false,
      "dataType" : "Long",
      "type" : null,
      "defaultValue" : null,
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "executeTime",
      "value" : "25",
      "description" : "",
      "required" : false,
      "dataType" : "Integer",
      "type" : null,
      "defaultValue" : null,
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

var goodsListSql = """
select GOODS_ID,REPORT_ID,SEQ_NO,lpad(TYPE_CODE, 4, 0) TYPE_CODE,
trim(',' from GOODS_CODE)  GOODS_CODE,
trim(',' from SPECIFIC_NAME) SPECIFIC_NAME,ACTUAL_CARRYING_CAPACITY,PORT_CARGO,
            IS_DANGEROUS_GOODS,CREATING_TIME,SYS_CREATED_BY,SYS_ORG,SYS_DEPT,LAST_MODIFY_DT,LAST_MODIFY_PERSON,SOURCE_CODE,
            DATA_ORG_CODE,CREATE_DATE,CREATOR,LAST_UPDATE_DATE,UPDATE_BY,DELETE_FLAG,PROCESS_STATUS,IMPORT_TIME
             from  RPT_CARGO_DECLARE_REC where report_id=#{reportId} order by goods_id asc
        """;

//集装箱
var contsListSql="""
   select CONTAINER_ID,REPORT_ID,SEQ_NO,CONTAINER_TYPE_CODE,EMPTY_CONTAINERS_NUMBER,HEAVY_CONTAINERS_NUMBER,
   (case when CONTAINER_TYPE_CODE='001' then 0.5*EMPTY_CONTAINERS_NUMBER
        when CONTAINER_TYPE_CODE='002' then 1*EMPTY_CONTAINERS_NUMBER
        when CONTAINER_TYPE_CODE='003' then 1.75*EMPTY_CONTAINERS_NUMBER
        when CONTAINER_TYPE_CODE='004' then 2*EMPTY_CONTAINERS_NUMBER
        when CONTAINER_TYPE_CODE='005' then 2.25*EMPTY_CONTAINERS_NUMBER
        else 0 end)sumEmpt,
     (case when CONTAINER_TYPE_CODE='001' then 0.5*HEAVY_CONTAINERS_NUMBER
        when CONTAINER_TYPE_CODE='002' then 1*HEAVY_CONTAINERS_NUMBER
        when CONTAINER_TYPE_CODE='003' then 1.75*HEAVY_CONTAINERS_NUMBER
        when CONTAINER_TYPE_CODE='004' then 2*HEAVY_CONTAINERS_NUMBER
        when CONTAINER_TYPE_CODE='005' then 2.25*HEAVY_CONTAINERS_NUMBER
        else 0 end) sumHeavy  

            from  RPT_CONTAINER_DECLARE_REC where report_id=#{reportId} order by container_id asc
"""        

var goodsList=db.biz_data.camel().select(goodsListSql);
var actualCarryingCapacity=0;//实再货物量
var portCargo=0;--
var emptyContainersNumber=0;//空箱 单位teu；
var heavyContainersNumber=0;//重箱 单位teu

var contsList=db.biz_data.camel().select(contsListSql);
        for(item in goodsList){
             actualCarryingCapacity+=item.get("actualCarryingCapacity");
             portCargo+=item.get("portCargo");
             item.put("typeCode",TagUtils.getTagNameByCode("goodsTypeTag",item.get("typeCode")))
             item.put("isDangerousGoods",TagUtils.getTagNameByCode("isOwnTag",item.get("isDangerousGoods")))   
        }  

         for(item in contsList){
             item.put("containerTypeCode",TagUtils.getTagNameByCode("contsTypeTag",item.get("containerTypeCode")))
               emptyContainersNumber+=item.get("sumempt");
               heavyContainersNumber+= item.get("sumheavy") ;   
        }

if(goodsList==null){
   goodsList=[];
   
}
if(contsList==null){
   contsList=[];
   
}
        var data={
            "goodsList":goodsList,
            "contsList":contsList,
             "sumGoodsList":{
                        "actualCarryingCapacity":actualCarryingCapacity,//实际载货量汇总
                        "portCargo":portCargo//本港口装、卸载货量汇总
             },
             "sumContsList":{
                "emptyContainersNumber":emptyContainersNumber,//空箱数量汇总 单位teu
               "heavyContainersNumber":heavyContainersNumber//重箱载货量汇总  单位teu
             }
        }
        return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            data: data 
      });