package com.web;

import java.util.List;

import com.dao.XsDao;
import com.entity.Xs;
import com.opensymphony.xwork2.ActionContext;




public class XsAction{

	private Xs xs;
	private int res;
		
	//���ѧԱ
	public String addxs(){
		//����DAO��ķ�����ִ�����
		if(new XsDao().addxs(xs)){res=1;}else{res=2;}
		return "toAddXs";
	}
	//��ѯѧԱ��Ϣ
	public String StuListXs(){
		//��DAO����ȡһ��getXsList����
		List xsList = new XsDao().getXsList();
		ActionContext.getContext().put("xsList",xsList);
		return "xsList";
	}

	
	
	//��ѯѧԱ��Ϣ�����޸�
	public String StuListX(){
		//��DAO����ȡһ��getXsList����
		List xssList = new XsDao().getXsList();
		ActionContext.getContext().put("xssList",xssList);
		return "xssList";
	}
	//��ѯѧԱ��Ϣ����ɾ��
		public String StuList(){
			//��DAO����ȡһ��getXsList����
			List xsssList = new XsDao().getXsList();
			ActionContext.getContext().put("xsssList",xsssList);
			return "xsssList";
		}
	
		//ȥ���޸�ҳ��
	public String toUpdateStu(){
			//����ID��ѯ�����޸ĵĶ���
			xs=new XsDao().getXsById(xs.getXsno());
			return "updateStu";
	}
		
	
	
	//�޸�ѧԱ��Ϣ
	public String updateStu(){
		if(new XsDao().updateXs(xs)){
				res=3;
			}else{
				res=2;
			}
		return "toStuList";
}
	
	
	//ɾ��ѧ��
		public String deleteStu(){
			//����Dao����ִ��ɾ��
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
