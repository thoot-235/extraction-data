{
  "properties" : { },
  "id" : "5fbc61e8ec43424c816f103bed6d8e67",
  "script" : null,
  "groupId" : "a2f8b128e2c64d9eba631714dd3787a1",
  "name" : "船舶照片",
  "createTime" : null,
  "updateTime" : 1742810663947,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getShipPhoto",
  "method" : "GET",
  "parameters" : [ {
    "name" : "mmsi",
    "value" : "413829322",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": []\n}",
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
    "dataType" : "String",
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
      "children" : [ ]
    } ]
  }
}
================================
import response;


if((mmsi == null || mmsi =="")&&(shipId == null || shipId =="")){
return response.json({
        resultCode: 500,
        resultMsg: "mmsi、shipId不能同时为空"
	});
  
}

var shipRegNoSql = """
  select ship_reg_no from bds_base_data.sc_SHiP_BASIC_DATA where 
  <trim  prefixOverrides="AND |OR ">
      <if test="mmsi != null and mmsi!=''">
             OR mmsi = #{mmsi}
      </if>
      <if test="shipId != null and shipId!=''">
             OR ship_id = #{shipId}
      </if>
      </trim>
      
"""
var shipRegNo = db.base_data.camel().selectOne(shipRegNoSql);
if(shipRegNo!=null){
  shipRegNo = shipRegNo.get("shipRegNo");
}else{
  return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: null
  })
}
var sql="""
    select b.EQUIPMENT_ORDER,
        b.PHOTO_FILE_NAME_DES,
        b.PHOTO_TYPE,
        b.PHOTO_FILE_IMAGE
    from bds_base_data.SC_SHIP_BASIC_DATA a
    left join bds_base_data.SHP_TECH_PHOTO b
        on a.SHIP_INSPECT_NO = b.SHIP_INS_REG_NO
    where 1 = 1
    --and b.status = '1'
    and b.equipment_order in ('1', '2', '3')
    and a.delete_flag = '0'
    and b.delete_flag = '0'
    and a.SHIP_REG_NO=#{shipRegNo}
    order by equipment_order
"""
var photoPO = db.base_data.camel().select(sql);
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: photoPO
})