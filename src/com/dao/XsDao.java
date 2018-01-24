package com.dao;

import java.util.List;

import com.entity.Xs;
import com.dao.BaseDao;
import com.dao.XsDao;


public class XsDao {

	//处理学员操作的DAO类
	
	
	//添加学员
	public boolean addxs(Xs xs){
		return BaseDao.addObject(xs);
	}
	
	//查询学员信息
	public List getXsList(){
		return BaseDao.getObjectList("from Xs ORDER BY xsno ASC");
	}
	
	//修改学员信息
	public boolean updateXs(Xs xs){
		return BaseDao.updateObject(xs);
	}
	//查询学员修改信息
		public Xs getXsById(int id){
			return (Xs)BaseDao.getObjectById(Xs.class, id);
	}
		
		//删除学生
		public boolean deleteStu(Xs xs){
			return BaseDao.deleteObject(xs);
		}	
}
