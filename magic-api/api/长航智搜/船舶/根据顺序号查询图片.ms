{
  "properties" : { },
  "id" : "347fe5f7db054ffa98b5acd959c55e0b",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "根据顺序号查询图片",
  "createTime" : null,
  "updateTime" : 1745826190265,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getShipPhoteByOrder",
  "method" : "GET",
  "parameters" : [ {
    "name" : "shipInspectNo",
    "value" : "1987D0000153",
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
    "name" : "equipmentOrder",
    "value" : "1",
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
  "responseBody" : null,
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
  "responseBodyDefinition" : null
}
================================
import "java.io.ByteArrayOutputStream" as ByteArrayOutputStream;
import "javax.servlet.ServletOutputStream" as ServletOutputStream;
import 'java.awt.image.BufferedImage' as BufferedImage;
import "java.lang.Byte" as Byte;
import "java.sql.Blob" as Blob;
import 'javax.imageio.ImageIO' as ImageIO;
import "java.awt.image.RenderedImage" as RenderedImage;

import 'org.springframework.core.io.ClassPathResource' as ClassPathResource;
import 'java.io.InputStream' as InputStream;

import response;

var sql = """
select b.SHIP_INS_REG_NO,b.EQUIPMENT_ORDER,b.PHOTO_FILE_NAME_DES,b.PHOTO_TYPE,b.CERT_REMARK,
b.PHOTO_FILE_IMAGE as fileName,b.PHOTO_PRINT_MARK,b.FILE_NAME,b.STATUS
            from  bds_base_data.SHP_BASIC_DATA a
              left join bds_base_data.SHP_TECH_PHOTO b
                on a.SHIP_INSPECT_NO = b.SHIP_INS_REG_NO

             ?{shipRegNo,  and  a.SHIP_REG_NO=#{shipRegNo}} 
           --  and b.status=1 
             and b.equipment_order=#{equipmentOrder} 
             and a.delete_flag='0'
              and b.delete_flag='0'
               order by b.equipment_order  
""";
var statusK = """#{status}"""
var photoPO = db.base_data.camel().selectOne(sql);

Byte image = null;
if (photoPO != null) {
    if (photoPO.get("shipInsRegNo") == null || "".equals(photoPO.get("shipInsRegNo").trim())) {
        //ClassPathResource classPathResource =  new ClassPathResource("/magic-api/image/ship.png");
        //InputStream is = classPathResource.getInputStream();
        //BufferedImage image= ImageIO.read(is)
        //ByteArrayOutputStream os = new ByteArrayOutputStream();
        //ImageIO.write(image, "png", os);                       
        // return response.image(os.toByteArray(),'image/png');
        return response.image(null, 'image/png')
        // return response.json({
        //   resultCode: 200,
        //   resultMsg: "查询成功",
        //   result: data
        // })
    } else {
        image = photoPO.get("filename"); //photoPO.getPhotoFileImage();
        return response.image(image, 'image/png');
    }

} else {
    // ClassPathResource classPathResource =  new ClassPathResource("/magic-api/image/ship.png");
    //InputStream is = classPathResource.getInputStream();
    //BufferedImage image= ImageIO.read(is)
    //ByteArrayOutputStream os = new ByteArrayOutputStream();
    //ImageIO.write(image, "png", os);                       
    //return response.image(os.toByteArray(),'image/png'); 
    return response.image(null, 'image/png')
    //return response.json({
    //  resultCode: 200,
    //  resultMsg: "查询成功",
    //  result: data
    // })
}