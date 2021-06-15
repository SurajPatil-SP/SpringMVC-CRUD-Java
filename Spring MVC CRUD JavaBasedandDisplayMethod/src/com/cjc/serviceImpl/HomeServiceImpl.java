package com.cjc.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjc.dao.HomeDao;
import com.cjc.model.Employee;
import com.cjc.service.HomeService;

@Service
public class HomeServiceImpl implements HomeService {
	
	@Autowired
	HomeDao hd;

	@Override
	public int saveData(Employee e) {
		
		return hd.saveData(e);
	}

	@Override
	public List<Employee> loginCheck(String uname, String pwd) {
		
		return hd.loginCheck(uname, pwd);
	}

	@Override
	public Employee editRecord(int id) {
		
		return hd.editRecord(id);
	}

	@Override
	public List<Employee> updateRecord(Employee e) {
		
		return hd.updateRecord(e);
	}

	@Override
	public List<Employee> deleteRecord(int id) {
		
		return hd.deleteRecord(id);
	}

}
