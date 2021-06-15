package com.cjc.dao;

import java.util.List;

import com.cjc.model.Employee;

public interface HomeDao {
	
	public int saveData(Employee e);
	public List<Employee> loginCheck(String uname,String pwd);
	public Employee editRecord(int id);
	public List<Employee>updateRecord(Employee e);
	public List<Employee>deleteRecord(int id);

}
