{
  "properties" : { },
  "id" : "a5b1905294184182a385a1a8df084a4e",
  "script" : null,
  "groupId" : "39ce103c23184972a79a5498216c3525",
  "name" : "获取航标打点坐标",
  "createTime" : null,
  "updateTime" : 1721630630346,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/getHbList",
  "method" : "GET",
  "parameters" : [ {
    "name" : "hbmc",
    "value" : "东溪口",
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
  "responseBody" : "{\n    \"msg\": \"扫描发现跨站点脚本编制漏洞，已过滤GET请求[/smartcockpit/fullview/navigation/gethblocationlist?hbmc=东溪口]中特殊字符[location]！\",\n    \"code\": 500,\n    \"data\": null\n}",
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
    "defaultValue" : null,
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ {
      "name" : "msg",
      "value" : "扫描发现跨站点脚本编制漏洞，已过滤GET请求[/smartcockpit/fullview/navigation/gethblocationlist?hbmc=东溪口]中特殊字符[location]！",
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
      "name" : "code",
      "value" : "500",
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
      "name" : "data",
      "value" : "null",
      "description" : "",
      "required" : false,
      "dataType" : "Object",
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
import 'org.ssssssss.magic.exception.ResultPO' as ResultPO;
import response;
import java.lang.Math;
var  sql="""
select id,hbmc,jdzbjd longitude, jdzbwd latitude ,hbtb_id,
--HB_HBDL,--航标大类
--HB_HBXL,--航标小类
--(select sdmc from HD_HDJCXX where SCBJ='0' and SSHD_ID=id) SSHD,--所属水道
SSHD_ID,
case when HB_BTLX='1' then '浮标'
     when HB_BTLX='2' then '岸标'
     else '其他' end HB_BTLX,--标体类型
case when ZSBZ='1' then '专设'
when  ZSBZ='0' then '非专设'
  else '其他' end ZSBZ,--专设标志
case when HB_HBXZ='1' then '锥形'
  when HB_HBXZ='2' then '柱形'
  when HB_HBXZ='3' then '杆形'
  when HB_HBXZ='4' then '塔形'
  when HB_HBXZ='5' then '罐形'
  when HB_HBXZ='6' then '截锥形'  
  when HB_HBXZ='7' then '正方形' 
  when HB_HBXZ='8' then '圆形' 
  when HB_HBXZ='9' then '菱型'  
  when HB_HBXZ='10' then '灯船' 
 when HB_HBXZ='11' then '浮舟' end   HB_HBXZ--航标形状 
from  postgis.hb_hbjcxx    
  where  SCBJ='0' and hb_sbzt in ('2','4')
  ?{hbmc,and hbmc like  '%'||#{hbmc}||'%'}
""";
var sql2="""
select sdmc from ods_hs_share.HD_HDJCXX where SCBJ='0' and id=#{code}
"""

//现场数据源为ais 模式为postgis
var list=db.ais.camel().select(sql);
if(hbmc!=null && hbmc!=''){
  var earthRadius = 6371000;
  for(item in list){
      var sshd=db.ods_data.camel().selectOne(sql2,{"code":item.get("sshdId")});
  
      if(sshd!=null){
          sshd=sshd.get("sdmc");
          item.put("sshd",sshd);
      }

    //4326大地坐标系转墨卡托投影坐标
    var x;
    var y;
    var lat = item.get("latitude") :: double;//维度
    var lon = item.get("longitude") :: double;//经度
    
    x = earthRadius * Math.toRadians(lon) :: double;
    y = (earthRadius * Math.log(Math.tan(Math.PI / 4 + Math.toRadians(lat) / 2))) :: double;
    item.put("x",x);
    item.put("y",y);
      
  }
}


return response.json({
    code: 200,
    success: "查询成功",
    data: list 

});