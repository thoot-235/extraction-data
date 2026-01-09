{
  "properties" : { },
  "id" : "b6c6b71158774c8eb63bfa8bdee748e1",
  "script" : null,
  "groupId" : "aa8226c9fc5e4bde94aeddac777ebce2",
  "name" : "补能站地图打点",
  "createTime" : null,
  "updateTime" : 1739168401631,
  "lock" : "",
  "createBy" : "",
  "updateBy" : "admin",
  "path" : "/fillingStationList",
  "method" : "GET",
  "parameters" : [ {
    "name" : "stationName",
    "value" : "",
    "description" : "加注站名称",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  }, {
    "name" : "stationStatus",
    "value" : { },
    "description" : "运营/在建/规划",
    "required" : false,
    "dataType" : "String",
    "type" : "",
    "defaultValue" : "运营",
    "validateType" : "",
    "error" : "",
    "expression" : "",
    "children" : [ ]
  } ],
  "options" : [ ],
  "requestBody" : "",
  "headers" : [ ],
  "paths" : [ ],
  "responseBody" : "{\n    \"resultCode\": 200,\n    \"resultMsg\": \"查询成功\",\n    \"data\": [{\n        \"stationName\": \"黄石港阳新港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"115.39989084\",\n        \"latitude\": \"29.93795741\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"黄州港新港港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"114.893116667\",\n        \"latitude\": \"30.421983333\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"黄冈武穴港换电站\",\n        \"stationType\": \"电池换电站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"115.38602471\",\n        \"latitude\": \"2997146086\",\n        \"operatorName\": \"华电湖北发电有限公司\",\n        \"contactPerson\": \"高明杰\",\n        \"contactInfo\": \"17702776486\",\n        \"techParams\": \"规划8个充电工位（一期充电功率4×1050kW）\"\n    }, {\n        \"stationName\": \"黄冈小池港换电站\",\n        \"stationType\": \"电池换电站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"116.023824\",\n        \"latitude\": \"29.759141\",\n        \"operatorName\": \"华电湖北发电有限公司\",\n        \"contactPerson\": \"高明杰\",\n        \"contactInfo\": \"17702776486\",\n        \"techParams\": \"规划8个充电工位（一期充电功率4×1050kW）\"\n    }, {\n        \"stationName\": \"马鞍山港郑蒲港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"118.38635\",\n        \"latitude\": \"31.64895\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"马鞍山港乌江港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"118.48707741\",\n        \"latitude\": \"31.83021987\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"镇江港扬中港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"119.93201815\",\n        \"latitude\": \"32.0404334\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"铜陵港枞阳港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"117.32647011\",\n        \"latitude\": \"30.69239843\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"重庆鸡冠石综合加能站\",\n        \"stationType\": \"甲醇加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"\",\n        \"latitude\": \"\",\n        \"operatorName\": \"中长燃重庆分公司\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"重庆港石柱港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"108.22272867\",\n        \"latitude\": \"30.42099247\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"重庆港涪陵港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"107.48137314\",\n        \"latitude\": \"29.82758619\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"重庆港江津港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"106.26534781\",\n        \"latitude\": \"29.24876864\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"重庆港巫山港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"109.87791787\",\n        \"latitude\": \"31.07133077\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"重庆港万州港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"108.38789321\",\n        \"latitude\": \"30.68709717\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"重庆巫山港换电站\",\n        \"stationType\": \"电池换电站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"109.886173\",\n        \"latitude\": \"31.074124\",\n        \"operatorName\": \"华电湖北发电有限公司\",\n        \"contactPerson\": \"高明杰\",\n        \"contactInfo\": \"17702776486\",\n        \"techParams\": \"规划8个充电工位（一期充电功率4×1050kW）\"\n    }, {\n        \"stationName\": \"重庆奉节港换电站\",\n        \"stationType\": \"电池换电站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"109.545534\",\n        \"latitude\": \"31.043326\",\n        \"operatorName\": \"华电湖北发电有限公司\",\n        \"contactPerson\": \"高明杰\",\n        \"contactInfo\": \"17702776486\",\n        \"techParams\": \"规划8个充电工位（一期充电功率4×1050kW）\"\n    }, {\n        \"stationName\": \"重庆大磨综合加能站\",\n        \"stationType\": \"甲醇加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"\",\n        \"latitude\": \"\",\n        \"operatorName\": \"中长燃重庆分公司\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"荆州监利港换电站\",\n        \"stationType\": \"电池换电站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"112.94261833\",\n        \"latitude\": \"29.72486187\",\n        \"operatorName\": \"华电湖北发电有限公司\",\n        \"contactPerson\": \"高明杰\",\n        \"contactInfo\": \"17702776486\",\n        \"techParams\": \"规划8个充电工位（一期充电功率4×1050kW）\"\n    }, {\n        \"stationName\": \"荆州港观音寺港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"112.2885\",\n        \"latitude\": \"30.242016667\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"荆州港绣林港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"112.399566667\",\n        \"latitude\": \"29.735816667\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"荆州港新堤港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"113.535683333\",\n        \"latitude\": \"29.8407\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"荆州江陵港换电站\",\n        \"stationType\": \"电池换电站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"112.31838226\",\n        \"latitude\": \"30.08985298\",\n        \"operatorName\": \"华电湖北发电有限公司\",\n        \"contactPerson\": \"高明杰\",\n        \"contactInfo\": \"17702776486\",\n        \"techParams\": \"规划8个充电工位（一期充电功率4×1050kW）\"\n    }, {\n        \"stationName\": \"苏州港张家港港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"120.84729193\",\n        \"latitude\": \"31.82647632\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"苏州港常熟港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"121.0903\",\n        \"latitude\": \"31.7259\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"芜湖港滨江港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"118.349533333\",\n        \"latitude\": \"31.3451\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"泸州港龙江港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"105.2507423\",\n        \"latitude\": \"28.73994269\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"泰州港靖江港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"120.41175\",\n        \"latitude\": \"32.045333333\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"泰州港泰兴港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"119.915383333\",\n        \"latitude\": \"32.13615\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"池州港大渡口港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"117.043666667\",\n        \"latitude\": \"30.493616667\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"池州港乌沙港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"117.32448568\",\n        \"latitude\": \"30.67951385\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"江阴宏博综合加能站\",\n        \"stationType\": \"甲醇加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"\",\n        \"latitude\": \"\",\n        \"operatorName\": \"中长燃江苏分公司\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"武穴港田镇港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"115.39627318\",\n        \"latitude\": \"29.95773094\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"武汉白浒山综合加能站\",\n        \"stationType\": \"甲醇加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"\",\n        \"latitude\": \"\",\n        \"operatorName\": \"中长燃武汉分公司\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"武汉港白浒山港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"114.56382548\",\n        \"latitude\": \"30.6083043\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"武汉港汉南港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"114.02099029\",\n        \"latitude\": \"30.25872096\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"枝江罗家河综合加能站\",\n        \"stationType\": \"甲醇LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"\",\n        \"latitude\": \"\",\n        \"operatorName\": \"中长燃宜昌分公司\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"无锡（江阴）港石利港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"120.01877726\",\n        \"latitude\": \"31.96470636\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"扬州港江都港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"119.73580398\",\n        \"latitude\": \"32.32606191\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"岳阳莲花塘综合加能站\",\n        \"stationType\": \"甲醇加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"\",\n        \"latitude\": \"\",\n        \"operatorName\": \"中长燃宜昌分公司\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"岳阳港君山港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"112.91231061\",\n        \"latitude\": \"29.58141896\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"宜昌茅坪综合加能站\",\n        \"stationType\": \"甲醇加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"\",\n        \"latitude\": \"\",\n        \"operatorName\": \"中长燃宜昌分公司\",\n        \"contactPerson\": \"吴鹏\",\n        \"contactInfo\": \"027-51277931/7987\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"宜昌秭归港换电站\",\n        \"stationType\": \"电池换电站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"110.95717192\",\n        \"latitude\": \"30.86068823\",\n        \"operatorName\": \"华电湖北发电有限公司\",\n        \"contactPerson\": \"高明杰\",\n        \"contactInfo\": \"17702776486\",\n        \"techParams\": \"规划8个充电工位（一期充电功率4×1050kW）\"\n    }, {\n        \"stationName\": \"宜昌港葛洲坝坝下LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"111.372366667\",\n        \"latitude\": \"30.609366667\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"宜昌港宜都港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"111.54534411\",\n        \"latitude\": \"30.26359496\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"宜昌枝江港换电站\",\n        \"stationType\": \"电池换电站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"111.9081974\",\n        \"latitude\": \"30.40200979\",\n        \"operatorName\": \"华电湖北发电有限公司\",\n        \"contactPerson\": \"高明杰\",\n        \"contactInfo\": \"17702776486\",\n        \"techParams\": \"规划8个充电工位（一期充电功率4×1050kW）\"\n    }, {\n        \"stationName\": \"宜昌宜都港换电站\",\n        \"stationType\": \"电池换电站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"111.409276\",\n        \"latitude\": \"30.519681\",\n        \"operatorName\": \"华电湖北发电有限公司\",\n        \"contactPerson\": \"高明杰\",\n        \"contactInfo\": \"17702776486\",\n        \"techParams\": \"规划8个充电工位（一期充电功率4×1050kW）\"\n    }, {\n        \"stationName\": \"宜宾港翠柏港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"104.767\",\n        \"latitude\": \"28.791467\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"安庆谭家沟综合加能站\",\n        \"stationType\": \"甲醇加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"\",\n        \"latitude\": \"\",\n        \"operatorName\": \"中长燃芜湖分公司\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"安庆港宿松港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"116.49768737\",\n        \"latitude\": \"29.90848646\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"安庆港中心港区LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"117.24180776\",\n        \"latitude\": \"30.58545215\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"咸宁嘉鱼港换电站\",\n        \"stationType\": \"电池换电站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"113.82887363\",\n        \"latitude\": \"29.91004497\",\n        \"operatorName\": \"华电湖北发电有限公司\",\n        \"contactPerson\": \"高明杰\",\n        \"contactInfo\": \"17702776486\",\n        \"techParams\": \"规划8个充电工位（一期充电功率4×1050kW）\"\n    }, {\n        \"stationName\": \"南通港LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"120.81815\",\n        \"latitude\": \"32.00558333\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"南京龙潭港充换电站二期\",\n        \"stationType\": \"充换电站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"119.073415\",\n        \"latitude\": \"32.207515\",\n        \"operatorName\": \"绿水新航科技有限公司\",\n        \"contactPerson\": \"张冬生\",\n        \"contactInfo\": \"13478162002\",\n        \"techParams\": \"充电站容量：500KVA充电机数量：1充机功率：480kw充电箱位：3\"\n    }, {\n        \"stationName\": \"南京港梅子洲LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"118.694416667\",\n        \"latitude\": \"32.045166667\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"南京兴隆洲综合加能站\",\n        \"stationType\": \"甲醇加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"\",\n        \"latitude\": \"\",\n        \"operatorName\": \"中长燃南京分公司\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"南京684油库综合加能站\",\n        \"stationType\": \"甲醇加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"\",\n        \"latitude\": \"\",\n        \"operatorName\": \"中长燃南京分公司\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"九江蛤蟆石综合加能站\",\n        \"stationType\": \"甲醇加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"\",\n        \"latitude\": \"\",\n        \"operatorName\": \"中长燃武汉分公司\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }, {\n        \"stationName\": \"上海港LNG加注站\",\n        \"stationType\": \"LNG加注站\",\n        \"stationStatus\": \"规划\",\n        \"longitude\": \"121.5950833\",\n        \"latitude\": \"31.367\",\n        \"operatorName\": \"\",\n        \"contactPerson\": \"\",\n        \"contactInfo\": \"\",\n        \"techParams\": \"\"\n    }]\n}",
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
      "type" : null,
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
      "dataType" : "Array",
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
          "name" : "stationName",
          "value" : "黄石港阳新港区LNG加注站",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : null,
          "defaultValue" : "",
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "stationType",
          "value" : "LNG加注站",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : null,
          "defaultValue" : "",
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "stationStatus",
          "value" : "规划",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : null,
          "defaultValue" : "",
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "longitude",
          "value" : "115.39989084",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : null,
          "defaultValue" : "",
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "latitude",
          "value" : "29.93795741",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : null,
          "defaultValue" : "",
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "operatorName",
          "value" : "",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : null,
          "defaultValue" : "",
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "contactPerson",
          "value" : "",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : null,
          "defaultValue" : "",
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "contactInfo",
          "value" : "",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : null,
          "defaultValue" : "",
          "validateType" : "",
          "error" : "",
          "expression" : "",
          "children" : [ ]
        }, {
          "name" : "techParams",
          "value" : "",
          "description" : "",
          "required" : false,
          "dataType" : "String",
          "type" : null,
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

//加注站名称、加注站类型（电池换电站/充电站/LNG加注站/氢气加注站/甲醇加注站）、状态（运营/在建/规划）、经度、纬度、经营/管理主体、联系人、联系方式、技术参数
var sql = """
  select station_name,
           station_type,
           station_status,
           longitude,
           latitude,
           operator_name,
           contact_person,
           contact_info,
           tech_params
      from filling_station_info
    where 1=1
    ?{stationName ,and station_name like '%'||#{stationName}||'%'}
    ?{stationStatus ,and station_status like '%'||#{stationStatus}||'%'}
  order by station_name desc
"""

var list = db.ods_data.camel().select(sql);
import response;
return response.json({
          resultCode: 200,
          resultMsg: "查询成功",
          data: list
  });