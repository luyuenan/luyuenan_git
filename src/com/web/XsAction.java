package com.web;

import java.util.List;

import com.dao.XsDao;
import com.entity.Xs;
import com.opensymphony.xwork2.ActionContext;




public class XsAction{

	private Xs xs;
	private int res;
		
	//添加学员
	public String addxs(){
		//调用DAO层的方法来执行添加
		if(new XsDao().addxs(xs)){res=1;}else{res=2;}
		return "toAddXs";
	}
	//查询学员信息
	public String StuListXs(){
		//从DAO层拿取一个getXsList方法
		List xsList = new XsDao().getXsList();
		ActionContext.getContext().put("xsList",xsList);
		return "xsList";
	}

	
	
	//查询学员信息进行修改
	public String StuListX(){
		//从DAO层拿取一个getXsList方法
		List xssList = new XsDao().getXsList();
		ActionContext.getContext().put("xssList",xssList);
		return "xssList";
	}
	//查询学员信息进行删除
		public String StuList(){
			//从DAO层拿取一个getXsList方法
			List xsssList = new XsDao().getXsList();
			ActionContext.getContext().put("xsssList",xsssList);
			return "xsssList";
		}
	
		//去到修改页面
	public String toUpdateStu(){
			//根据ID查询出到修改的对象
			xs=new XsDao().getXsById(xs.getXsno());
			return "updateStu";
	}
		
	
	
	//修改学员信息
	public String updateStu(){
		if(new XsDao().updateXs(xs)){
				res=3;
			}else{
				res=2;
			}
		return "toStuList";
}
	
	
	//删除学生
		public String deleteStu(){
			//调用Dao方法执行删除
			if(new XsDao().deleteStu(xs)){
				res=1;
			}else{
				res=2;
			}
			return "toStuList";
		}
	
	
	
	public Xs getXs() {
		return xs;
	}

	public void setXs(Xs xs) {
		this.xs = xs;
	}

	public int getRes() {
		return res;
	}

	public void setRes(int res) {
		this.res = res;
	}









	
	
}
