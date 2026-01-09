{
  "properties" : { },
  "id" : "cc5e7e9bf529487db0617bf5fc195ccc",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "进出口查验货物集装箱",
  "createTime" : null,
  "updateTime" : 1693552390650,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getInAndOutDetail",
  "method" : "GET",
  "parameters" : [ {
    "name" : "inspetId",
    "value" : "20170101102917415010009",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": {\n        \"goodsList\": [{\n            \"inspType\": \"IMP\",\n            \"inspTypeName\": \"船舶进口查验\",\n            \"goodsTypeCode\": \"0300\",\n            \"typeCode\": \"金属矿石\",\n            \"isDangerousGoods\": \"否\",\n            \"actualCarryingCapacity\": \"3000\"\n        }, {\n            \"inspType\": \"IMP\",\n            \"inspTypeName\": \"船舶进口查验\",\n            \"goodsTypeCode\": \"1800\",\n            \"typeCode\": \"集装箱运量(TEU)\",\n            \"isDangerousGoods\": \"否\",\n            \"actualCarryingCapacity\": \"67\"\n        }, {\n            \"inspType\": \"IMP\",\n            \"inspTypeName\": \"船舶进口查验\",\n            \"goodsTypeCode\": \"1900\",\n            \"typeCode\": \"集装箱货运量\",\n            \"isDangerousGoods\": \"否\",\n            \"actualCarryingCapacity\": \"4025\"\n        }],\n        \"contsList\": [{\n            \"inspType\": \"IMP\",\n            \"inspTypeName\": \"船舶进口查验\",\n            \"containerTypeCode\": \"20英尺\",\n            \"emptyContainersNumber\": \"\",\n            \"heavyContainersNumber\": \"145\",\n            \"sumempt\": \"\",\n            \"sumheavy\": \"145\"\n        }, {\n            \"inspType\": \"IMP\",\n            \"inspTypeName\": \"船舶进口查验\",\n            \"containerTypeCode\": \"40英尺\",\n            \"emptyContainersNumber\": \"176\",\n            \"heavyContainersNumber\": \"173\",\n            \"sumempt\": \"352\",\n            \"sumheavy\": \"346\"\n        }],\n        \"sumGoodsList\": {\n            \"actualCarryingCapacity\": \"7092\"\n        },\n        \"sumContsList\": {\n            \"emptyContainersNumber\": \"352\",\n            \"heavyContainersNumber\": \"491\"\n        }\n    }\n}",
  "description" : "",
  "requestBodyDefinition" : {
    "name" : null,
    "value" : null,
    "description" : null,
    "required" : false,
    "dataType" : "String",
    "type" : null,
    "defaultValue" : null,
    "validateType" : null,
    "error" : null,
    "expression" : null,
    "children" : null
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
      "dataType" : "Object",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ {
        "name" : "goodsList",
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
            "name" : "inspType",
            "value" : "IMP",
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
            "name" : "inspTypeName",
            "value" : "船舶进口查验",
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
            "name" : "goodsTypeCode",
            "value" : "0300",
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
            "name" : "typeCode",
            "value" : "金属矿石",
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
            "name" : "isDangerousGoods",
            "value" : "否",
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
            "name" : "actualCarryingCapacity",
            "value" : "3000",
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
      }, {
        "name" : "contsList",
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
            "name" : "inspType",
            "value" : "IMP",
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
            "name" : "inspTypeName",
            "value" : "船舶进口查验",
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
            "name" : "containerTypeCode",
            "value" : "20英尺",
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
            "name" : "emptyContainersNumber",
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
            "name" : "heavyContainersNumber",
            "value" : "145",
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
            "name" : "sumempt",
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
            "name" : "sumheavy",
            "value" : "145",
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
      }, {
        "name" : "sumGoodsList",
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
          "name" : "actualCarryingCapacity",
          "value" : "7092",
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
        "name" : "sumContsList",
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
          "name" : "emptyContainersNumber",
          "value" : "352",
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
          "name" : "heavyContainersNumber",
          "value" : "491",
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
import response;

var goodsListSql = """
select INSP_TYPE,INSP_TYPE_NAME,GOODS_TYPE_CODE ,GOODS_TYPE_NAME type_code,
case when IS_DANGEROUS_GOODS='1' then '是'
  else  '否' end IS_DANGEROUS_GOODS
 ,goods_no actual_Carrying_Capacity
             from  sub_biz_data.SHP_INSP_CARGO where goods_id=#{inspetId} 
             and goods_no>0
             order by goods_id asc
             
        """;

//集装箱
var contsListSql="""
   select  insp_type,insp_type_name,cntr_type_name container_Type_Code,
   EMPTY_CONTAINERS_NUMBER,HEAVY_CONTAINERS_NUMBER,
   (case when CNTR_TYPE_CODE='001' then 0.5*EMPTY_CONTAINERS_NUMBER
        when CNTR_TYPE_CODE='002' then 1*EMPTY_CONTAINERS_NUMBER
        when CNTR_TYPE_CODE='003' then 1.75*EMPTY_CONTAINERS_NUMBER
        when CNTR_TYPE_CODE='004' then 2*EMPTY_CONTAINERS_NUMBER
        when CNTR_TYPE_CODE='005' then 2.25*EMPTY_CONTAINERS_NUMBER
        else 0 end)sumEmpt,
     (case when CNTR_TYPE_CODE='001' then 0.5*HEAVY_CONTAINERS_NUMBER
        when CNTR_TYPE_CODE='002' then 1*HEAVY_CONTAINERS_NUMBER
        when CNTR_TYPE_CODE='003' then 1.75*HEAVY_CONTAINERS_NUMBER
        when CNTR_TYPE_CODE='004' then 2*HEAVY_CONTAINERS_NUMBER
        when CNTR_TYPE_CODE='005' then 2.25*HEAVY_CONTAINERS_NUMBER
        else 0 end) sumHeavy  
   
    from  sub_biz_data.SHP_INSP_CONTAINER
    
    where cntr_id=#{inspetId}
    order by CNTR_ID
"""        

var goodsList=db.biz_data.camel().select(goodsListSql);
var actualCarryingCapacity=0;//实再货物量
var portCargo=0;--
var emptyContainersNumber=0;//空箱 单位teu；
var heavyContainersNumber=0;//重箱 单位teu

var contsList=db.biz_data.camel().select(contsListSql);
if(goodsList!=null&&goodsList.size()>0){
     for(item in goodsList){
             actualCarryingCapacity+=(item.get("actualCarryingCapacity")==null?0:item.get("actualCarryingCapacity"));
           
            
        }  
}
       
if(contsList!=null&&contsList.size()>0){
   for(item in contsList){
               emptyContainersNumber+=(item.get("sumempt")==null?0:item.get("sumempt"));
               heavyContainersNumber+= (item.get("sumheavy")==null?0: item.get("sumheavy"));   
        }
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
                        "actualCarryingCapacity":actualCarryingCapacity//实际载货量汇总
                        
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