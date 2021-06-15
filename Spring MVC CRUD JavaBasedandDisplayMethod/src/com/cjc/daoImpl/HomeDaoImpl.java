package com.cjc.daoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cjc.dao.HomeDao;
import com.cjc.model.Employee;

@Repository
public class HomeDaoImpl implements HomeDao {
	
	@Autowired
	SessionFactory sf;

	@Override
	public int saveData(Employee e) {
		Session session=sf.openSession();
		Employee emp=session.get(Employee.class, e.getId());
		if(emp==null)
		{
			int id=(int) session.save(e);
			session.beginTransaction().commit();
			return id;
		}
		else
		{
			return 0;
		}
		
	}
	
	public List<Employee> displayAll()
	{
		Session session=sf.openSession();
		Query<Employee> query=session.createQuery("From Employee",Employee.class);
		List<Employee>list=query.getResultList();
		return list;
	}

	@Override
	public List<Employee> loginCheck(String uname, String pwd) {
		Session session=sf.openSession();
		if(uname.equals("admin") && pwd.equals("admin"))
		{
			/*
			 * Query<Employee> query=session.createQuery("From Employee",Employee.class);
			 * List<Employee>list=query.getResultList(); return list;
			 */
			
			return displayAll();
		}
		else
		{
			Query<Employee>query=session.createQuery("From Employee where uname=:uname and pwd=:pwd",Employee.class);
			query.setParameter("uname", uname);
			query.setParameter("pwd", pwd);
			List<Employee>list=query.getResultList();
			return list;
		}
		
	}

	@Override
	public Employee editRecord(int id) {
		Session session=sf.openSession();
		Employee emp=session.get(Employee.class, id);
		return emp;
	}

	@Override
	public List<Employee> updateRecord(Employee e) {
		Session session=sf.openSession();
		session.update(e);
		session.beginTransaction().commit();
		
		/*
		 * Query<Employee>query=session.createQuery("From Employee",Employee.class);
		 * List<Employee>list=query.getResultList(); return list;
		 */
		
	
		return displayAll();
	}

	@Override
	public List<Employee> deleteRecord(int id) {
		Session session=sf.openSession();
		Employee emp=session.get(Employee.class, id);
		session.delete(emp);
		session.beginTransaction().commit();
		
		/*
		 * Query<Employee>query=session.createQuery("From Employee",Employee.class);
		 * List<Employee>list=query.getResultList(); return list;
		 */
		
		
		return displayAll();
	}

}
