package com.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import com.util.HibernateUtil;

public class BaseDao {
	

	//添加操作
	public static boolean addObject(Object obj){
		Session session=HibernateUtil.getSession();//开启事务
		session.beginTransaction();//开启Transaction的操作
		session.save(obj);//把数据放入一级缓存
		session.getTransaction().commit();//提交事务
		return true;
	}
	
	//更新操作
	public static boolean updateObject(Object obj){
		Session session=HibernateUtil.getSession();
		session.beginTransaction();
		session.update(obj);
		session.getTransaction().commit();
		return true;
	}
	
	//删除操作
	public static boolean deleteObject(Object obj){
		Session session=HibernateUtil.getSession();
		session.beginTransaction();
		session.delete(obj);
		session.getTransaction().commit();
		return true;
	}
	
	//根据ID查询单个对象的方法
	public static Object getObjectById(Class cls,Serializable id){
		Session session=HibernateUtil.getSession();
		session.beginTransaction();
		Object obj=session.get(cls, id);
		session.getTransaction().commit();
		return obj;
	}
	
	//根据HQL返回一个List集合
	public static List getObjectList(String hql){
		Session session=HibernateUtil.getSession();
		session.beginTransaction();
		Query query=session.createQuery(hql);
		List list=query.list();
		session.getTransaction().commit();
		return list;
	}
	
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	//获取Session的方法
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
}
