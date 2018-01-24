package com.util;

import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

/**
 * 自定义一个Hibernate工具类用�?
 * 生产Hibernate会话Session对象
 * @author Administrator
 *
 */
public class HibernateUtil {

	//声明一个静态会话工厂
	private static SessionFactory sessionFactory;
	
	//加载时构建静态会话工厂对象[不同版本，方式不同]
	static{
		final StandardServiceRegistry registry = new StandardServiceRegistryBuilder()
				.configure() 
				.build();
		sessionFactory = new MetadataSources(registry).buildMetadata().buildSessionFactory();
	}
	

	
	//获取一个会话
	//3.0版本sessionFactory.openSession();
	public static Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	public static void main(String[] args) {
		System.out.println(getSession());
	}
}



