{
  "properties" : { },
  "id" : "2e47564a729d4e1aa6a827d411749b3d",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "获取列表页船舶照片",
  "createTime" : null,
  "updateTime" : 1699257989332,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getShipListPhoto",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipRegNo",
    "value" : "270315000512",
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
      "children" : [ ]
    } ]
  }
}
================================
  import response;
  
  var sql="""
         select  SHIP_INS_REG_NO,
                   EQUIPMENT_ORDER,
                   PHOTO_FILE_NAME_DES,
                   PHOTO_TYPE,
                   CERT_REMARK,
                   PHOTO_FILE_IMAGE,
                   PHOTO_PRINT_MARK,
                   FILE_NAME,
                   STATUS,
                    rowno
                    from (
             select b.SHIP_INS_REG_NO,
                   b.EQUIPMENT_ORDER,
                   b.PHOTO_FILE_NAME_DES,
                   b.PHOTO_TYPE,
                   b.CERT_REMARK,
                   b.PHOTO_FILE_IMAGE,
                   b.PHOTO_PRINT_MARK,
                   b.FILE_NAME,
                   b.STATUS,
                   ROWNUM AS rowno
              from bds_base_data.SHP_BASIC_DATA a
              left join bds_base_data.SHP_TECH_PHOTO b
                on a.SHIP_INSPECT_NO = b.SHIP_INS_REG_NO
                 where 1=1
                 ?{shipRegNo,  and  a.SHIP_REG_NO=#{shipRegNo}} 
                 and b.status='1' 
                 and b.equipment_order in ('1', '2', '3')
                 and a.delete_flag='0' 
                 and b.delete_flag='0'
                 order by equipment_order
             )
             where rowno=1
  """
  var photoPO = db.base_data.camel().select(sql);
return response.json({
resultCode: 200,
            resultMsg: "查询成功",
            data: photoPO
})