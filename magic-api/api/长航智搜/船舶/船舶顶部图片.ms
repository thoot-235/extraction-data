{
  "properties" : { },
  "id" : "31633aaa031b44deb843f8bae52a1413",
  "script" : null,
  "groupId" : "6436edcda6ac42f98d2495e8f34240da",
  "name" : "船舶顶部图片",
  "createTime" : null,
  "updateTime" : 1745806223511,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getShipPhotoTop",
  "method" : "GET",
  "parameters" : [ {
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
shipInspectNo=(shipInspectNo==null?"":shipInspectNo).replace("<em>","").replace("</em>","");

var  sql = """
select  SHIP_INS_REG_NO,
                   EQUIPMENT_ORDER,
                   PHOTO_FILE_NAME_DES,
                   PHOTO_TYPE,
                   CERT_REMARK,
                   PHOTO_FILE_IMAGE as filename ,
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
                 where 1=1 and a.delete_flag='0' and b.delete_flag='0' 
                  ?{shipRegNo,  and  a.SHIP_REG_NO=#{shipRegNo}}    
                 and b.equipment_order in ('1', '2', '3')
                 order by equipment_order
             )
             where rowno=1






""";
//var statusK = """#{status}"""
var photoPO = db.base_data.camel().selectOne(sql);
            
             Byte image = null;
            if(photoPO!=null){              
                if(photoPO.get("shipInsRegNo")==null || "".equals(photoPO.get("shipInsRegNo").trim())){
                     //ClassPathResource classPathResource =  new ClassPathResource("/magic-api/image/ship.png");
                     //InputStream is = classPathResource.getInputStream();
                     //BufferedImage image= ImageIO.read(is)
                     //ByteArrayOutputStream os = new ByteArrayOutputStream();
                     //ImageIO.write(image, "png", os);                       
                     //return response.image(os.toByteArray(),'image/png'); 
                    return response.image(null,'image/png')
                }else{                  
                   image = photoPO.get("filename");//photoPO.getPhotoFileImage();
                   return response.image(image,'image/png');               
                }

            }else{
                     //ClassPathResource classPathResource =  new ClassPathResource("/magic-api/image/ship.png");
                     //InputStream is = classPathResource.getInputStream();
                     //BufferedImage image= ImageIO.read(is)
                     //ByteArrayOutputStream os = new ByteArrayOutputStream();
                     //ImageIO.write(image, "png", os);                       
                     //return response.image(os.toByteArray(),'image/png'); 
                      return response.image(null,'image/png')
            }

