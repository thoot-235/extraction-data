{
  "properties" : { },
  "id" : "b46c2d3adbf642719214de504f230f4c",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "船舶图片编号集合",
  "createTime" : null,
  "updateTime" : 1745825957924,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getShipPhotoList",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipInspectNo",
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
    "name" : "status",
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
    "name" : "shipRegNo",
    "value" : "270717000221",
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
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"equipmentOrder\": \"1\"\n    }, {\n        \"equipmentOrder\": \"2\"\n    }, {\n        \"equipmentOrder\": \"3\"\n    }]\n}",
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
      "defaultValue" : null,
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
      "children" : [ {
        "name" : "",
        "value" : "",
        "description" : "",
        "required" : false,
        "dataType" : "Object",
        "type" : null,
        "defaultValue" : null,
        "validateType" : "",
        "error" : "",
        "expression" : "",
        "children" : [ {
          "name" : "equipmentOrder",
          "value" : "1",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : null,
          "defaultValue" : null,
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
import "java.io.ByteArrayOutputStream" as ByteArrayOutputStream ;
import "javax.servlet.ServletOutputStream" as ServletOutputStream ;
import 'java.awt.image.BufferedImage' as BufferedImage;
import "java.lang.Byte" as Byte;
import "java.sql.Blob" as Blob;
import 'javax.imageio.ImageIO' as ImageIO;
import "java.awt.image.RenderedImage" as RenderedImage;

import 'org.springframework.core.io.ClassPathResource' as ClassPathResource;
import 'java.io.InputStream' as InputStream;

import response;

var  sql = """
select b.EQUIPMENT_ORDER from 

 bds_base_data.SHP_BASIC_DATA a
              left join bds_base_data.SHP_TECH_PHOTO b
                on a.SHIP_INSPECT_NO = b.SHIP_INS_REG_NO
                 where 1=1 and A.delete_flag='0'  AND  b.delete_flag='0' 
                   and b.equipment_order in ('1', '2', '3')
                  ?{shipRegNo, and  a.SHIP_REG_NO=#{shipRegNo}}                   
                 and b.equipment_order in ('1', '2', '3')
                 order by b.equipment_order
             

             
""";

var photoPO = db.base_data.camel().select(sql);
if(photoPO==null){
    photoPO=[];
   }
 return response.json({
            resultCode: 200,
            resultMsg: "查询成功",
            data: photoPO
            
      });
            
           

