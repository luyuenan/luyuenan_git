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

<style>
	.t{text-decoration:none;} 
	td{font-size:1200px;}
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
            <dd><a href="javascript:;">列表一</a></dd>
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
    <!-- 内容主体区域 -->
    <h1 style="margin-left: 600px;padding-top:70px;">学员信息预览</h1><br/><br/><br/>
		<table border="1px" rules="all" style="font-size:50;margin-left: 100px;width:80%;">
			<tr style="font-size:25px;text-align:center;">
				<td>编号</td>
				<td>学员名字</td>
				<td>学员年龄</td>
				<td>学员性别</td>
				<td>学员兴趣</td>
				<td>学员图片</td>
				<td>入学时间</td>
				
			</tr>
			<s:iterator var="xss" value="#request.xssList" status="ids">
				<tr style="font-size:20px;text-align:center;">
					<td>${ids.count}</td>
					<td>${xss.xsname}</td>
					<td>${xss.xsage}</td>
					<td>${xss.xssex}</td>
					<td>${xss.xsshobby}</td>
					<td>${xss.xsimg}</td>				
					<td>${xss.xssintime}</td>
					
				</tr>
			</s:iterator>
		</table>
   </div>
  
   <div class="layui-footer">
    <!-- 底部固定区域 -->
   		<p style="margin-left:800px;">鹿月开发---学生管理系统</p>
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