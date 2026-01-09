{
  "properties" : { },
  "id" : "113b25b512914f3ba4946f63207623d0",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "应急资源_救助基地照片",
  "createTime" : null,
  "updateTime" : 1755681314854,
  "lock" : "",
  "createBy" : "admin",
  "updateBy" : "admin",
  "path" : "/getEmergencyJzjdImage",
  "method" : "GET",
  "parameters" : [ {
    "name" : "name",
    "value" : "江阴海事监管基地",
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
  "responseBodyDefinition" : {
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
import response;

var sql = """
select belong_org,t_image,image_name from JZJD_IMAGE where 1=1 and belong_org=#{name}
"""
var imagePo = db.ods_data.camel().select(sql);
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: imagePo
})