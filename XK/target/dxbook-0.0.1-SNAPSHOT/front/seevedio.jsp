<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="core" prefix="c"%>
<!DOCTYPE html>
<head>
	<meta charset="utf-8" />
<style>
*{
	margin:0px;
    padding:0px;
	font-family:微软雅黑;
	color:#000;
	margin:0px auto;
	font-size:12px;
}
.banner{
	height:100px;
	width:100%;
	background-color:#5e5e5e;
	
}
.content{
	width:960px;
}
.top-link{
	width:960px;
	height:18px;
	line-height:18px;
	color:#848383;
}
.title{
	width:960px;
	height:50px;
	line-height:50px;
	color:#1692ac;
	font-size:24px;
}
.caozuo{
	width:960px;
	height:20px;
}
</style>
</head>
<body>
	<div class="banner">
    </div>
    <div class="content">
    	<div style="width:960px;height:20px;"></div>
        <div class="title">${vedio.vName} 
        </div>
        <script type="text/javascript" src="images/swfobject.js"></script>
        <div class="vedio" id="CuPlayer">
        	<script type="text/javascript">
				var so = new SWFObject("CuPlayerMiniV4.swf","CuPlayerV4","960","500","9","#000000");
				so.addParam("allowfullscreen","true");
				so.addParam("allowscriptaccess","always");
				so.addParam("wmode","opaque");
				so.addParam("quality","high");
				so.addParam("salign","lt");
				so.addVariable("CuPlayerSetFile","CuPlayerSetFile.xml"); //播放器配置文件地址
				so.addVariable("CuPlayerFile","../fileupload/${vedio.vPath}"); //视频文件地址
				so.addVariable("CuPlayerImage","images/start.jpg");//视频略缩图
				so.addVariable("CuPlayerWidth","960"); //视频宽度
				so.addVariable("CuPlayerHeight","500"); //视频高度
				so.addVariable("CuPlayerAutoPlay","yes"); //是否自动播放
				so.write("CuPlayer");
			</script>
        </div>
        <div class="caozuo">
        </div>
    </div>
</body>
</html>