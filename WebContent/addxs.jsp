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
    <!-- 内容主体区域 -->
   
   <! ------------------------------------------------------------->
      <h1 style="margin-left: 365px;padding-top:70px;">添加学员 </h1><br/><br/>
      
	<form method="post" action="xsAction_addxs" id="form" style="margin-left: 250px;">
		<font size="5">学员名字</font>&nbsp;<input type="text" name="xs.xsname" class="text ui-widget-content ui-corner-all div1" /><br/><br/>
		<font size="5">学员年龄</font>&nbsp;<input type="text" name="xs.xsage" class="text ui-widget-content ui-corner-all div1"/><br/><br/>
		<font size="5">学员性别</font>&nbsp;<input type="radio" name="xs.xssex" value="男"><font size="5">男</font>
		<input type="radio" name="xs.xssex" value="女" style="margin-left:30px;"><font size="5">女<br/></font><br/>
        <font size="5">学员兴趣</font>&nbsp;<input type="text" name="xs.xsshobby" class="text ui-widget-content ui-corner-all div1"/><br/><br/>
		<font size="5">入学时间</font>&nbsp;<input type="text" id="testTwo" name="xs.xssintime" class="text ui-widget-content ui-corner-all div1"/><br/><br/>		
		<font size="5">学员照片</font>&nbsp;<input type="file" id="img" onchange="picture(this)" accept="image/*" name="xs.xsimg" class="div1"/><br/><br/><br/>
			<input type="submit" value="注册" style="margin-left:40px;font-size:20px;width:100px;"/>
			 <a href="index.jsp"><input type="button" value="返回" style="font-size:20px;width:100px;"></a>
			<br/>
			<img id="imgs" width="300px" height="300px" style="margin-left:400px;margin-top:-435px;"/><br/>
			
	</form> 
    <script type="text/javascript">            
        

            //选择图片，马上预览
            function picture(obj) {
                var file = obj.files[0];
                console.log(obj);console.log(file);
                var reader = new FileReader();
                //读取文件
                 reader.onload = function (e) {
                    console.log("成功读取....");
                    var img = document.getElementById("imgs");
                    img.src = e.target.result;
                }
                reader.readAsDataURL(file)
            }
            //--------------------------------------------
            $("input[type=submit],input[type=button]").button();
			$("button:eq(0)").button({
				icons: {
         			  primary: "ui-icon-cart",
          			  secondary: "ui-icon-triangle-1-s"
        			   }
					});
			$("button:not(:eq(0))").button({
				icons: {
          			  primary: "ui-icon-gear",
           			  secondary: "ui-icon-triangle-1-s"
       				  }
					});
			//---------------------------------------------
			
        </script>
    
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