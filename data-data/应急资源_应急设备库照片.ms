{
  "properties" : { },
  "id" : "db6b98d11b204fd0b1757c4b244f4bca",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "应急资源_应急设备库照片",
  "createTime" : null,
  "updateTime" : 1750926088216,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getResourceImage",
  "method" : "GET",
  "parameters" : [ {
    "name" : "name",
    "value" : "常州溢油设备库",
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
  "responseBody" : "{\n    \"code\": -1,\n    \"message\": \"系统内部出现错误\",\n    \"data\": {},\n    \"timestamp\": 1750920343595,\n    \"executeTime\": 15\n}",
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
      "name" : "code",
      "value" : "-1",
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
      "name" : "message",
      "value" : "系统内部出现错误",
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
    }, {
      "name" : "timestamp",
      "value" : "1750920343595",
      "description" : "",
      "required" : false,
      "dataType" : "Long",
      "type" : "",
      "defaultValue" : "",
      "validateType" : "",
      "error" : "",
      "expression" : "",
      "children" : [ ]
    }, {
      "name" : "executeTime",
      "value" : "15",
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
select belong_org,t_image,image_name,flag from yjsb_image where flag='1' and belong_org=#{name}
"""
var imagePo = db.ods_data.camel().select(sql);
return response.json({
    resultCode: 200,
    resultMsg: "查询成功",
    data: imagePo
})