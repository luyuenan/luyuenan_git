package com.dao;

import java.util.List;

import com.entity.Xs;
import com.dao.BaseDao;
import com.dao.XsDao;


public class XsDao {

	//����ѧԱ������DAO��
	
	
	//���ѧԱ
	public boolean addxs(Xs xs){
		return BaseDao.addObject(xs);
	}
	
	//��ѯѧԱ��Ϣ
	public List getXsList(){
		return BaseDao.getObjectList("from Xs ORDER BY xsno ASC");
	}
	
	//�޸�ѧԱ��Ϣ
	public boolean updateXs(Xs xs){
		return BaseDao.updateObject(xs);
	}
	//��ѯѧԱ�޸���Ϣ
		public Xs getXsById(int id){
			return (Xs)BaseDao.getObjectById(Xs.class, id);
	}
		
		//ɾ��ѧ��
		public boolean deleteStu(Xs xs){
			return BaseDao.deleteObject(xs);
		}	
}
