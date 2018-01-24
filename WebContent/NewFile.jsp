<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="./js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="./js/jquery-ui-1.8.20.custom.min.js"></script>
<script src="./layui/layui.all.js"></script>
<link rel="stylesheet" href="./layui/css/layui.css">
<link rel="stylesheet" href="./layui/layui.js">
<link type="text/css" href="./css/jquery-ui-1.8.20.custom.css" rel="stylesheet" />
<link href="./css/bootstrap.min.css" rel="stylesheet">
<script src="./css/bootstrap-theme.min.css"></script>
<script src="./js/jquery-3.2.1.min.js"></script>
<script src="./js/bootstrap.min.js"></script>  
<style type="text/css">
	.div1{width:250px;height:32px;}
	
	
	input[type="radio"]{
    content: "\a0"; /*不换行空格*/
    display: inline-block;
    vertical-align: middle;
    font-size: 18px;
    width: 1em;
    height: 1em;
    margin-right: .4em;
    border-radius: 50%;
    border: 1px solid #01cd78;
    text-indent: .15em;
    line-height: 1; 
}
	
	
	input[type="radio"]{
    background-color: #01cd78;
    background-clip: content-box;
    padding: .2em;
}
</style>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">layui 后台布局</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
          贤心
        </a>
        <dl class="layui-nav-child">
          <dd><a href="">基本资料</a></dd>
          <dd><a href="">安全设置</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a href="">退了</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">学员选择项</a>
          <dl class="layui-nav-child">
            <dd><a href="NewFile.jsp">首页</a></dd>
            <dd><a href="addxs.jsp">添加学员</a></dd>
            <dd><a href="xsAction_StuListXs">修改&nbsp;|&nbsp;删除</a></dd>
            <dd><a href="xsAction_StuListX">学员信息</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">老师选择项</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;"></a></dd>
            <dd><a href="javascript:;">列表二</a></dd>
            <dd><a href="">超链接</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item"><a href="">云市场</a></li>
        <li class="layui-nav-item"><a href="">发布商品</a></li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    
    <div id="myCarousel" class="carousel slide">
	<!-- 轮播（Carousel）指标 -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>   
	<!-- 轮播（Carousel）项目 -->
	<div class="carousel-inner">
		<div class="item active">
			<img src="./imgs/1.jpg" alt="First slide" style="width:100%;height:828px;"> 
		</div>
		<div class="item">
			<img src="./imgs/2.jpg" alt="Second slide" style="width:100%;height:828px;">
		</div>
		<div class="item">
			<img src="./imgs/3.jpg" alt="Third slide" style="width:100%;height:828px;">
		</div>
	</div>
	<!-- 轮播（Carousel）导航 -->
	<a class="carousel-control left" href="#myCarousel" 
	   data-slide="prev">&lsaquo;</a>
	<a class="carousel-control right" href="#myCarousel" 
	   data-slide="next">&rsaquo;</a>
</div> 
    </div>
  
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
   		<p style="margin-left:800px;">鹿月开发---学生管理系统</p>
  </div>
  
</div>
<script src="./layui/layui.js"></script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
</script>


 
    
   
</body>

</html>