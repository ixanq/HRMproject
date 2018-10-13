package com.ixanq.test;

import com.ixanq.dao.ManagerDao;
import com.ixanq.entity.Department;
import com.ixanq.entity.Employee;
import com.ixanq.entity.WorkPosition;
import com.ixanq.service.VisitorService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class ManagerTest {
    @Autowired
    private ManagerDao managerDao;
    @Autowired
    private VisitorService visitorService;

    @Test
    public void addDepartment(){
        Department department=new Department("qqq",12,4,new Date());
        managerDao.addDepartment(department);
    }

    @Test
    public void deleteDepartment(){
       managerDao.deleteDepartment(7);
    }

    @Test
    public void updateDepartment(){
        Department department=new Department(8,"qqq",100,100,new Date());
        managerDao.updateDepartment(department);
    }

    @Test
    public void findDepartmentbyId(){
        Department department = managerDao.findDepartmentbyId(9);
        System.out.println(department);
    }
    @Test
    public void selectAllDepartment(){
        List<Department> allDepartment = managerDao.findAllDepartment();
        System.out.println(allDepartment);
    }

    @Test
    public void findAllWorkPosition(){
        List<WorkPosition> allWorkPosition = managerDao.findAllWorkPosition();
        System.out.println(allWorkPosition);
    }

    @Test
    public void findAllEmployee(){
        List<Employee> allEmployee = managerDao.findAllEmployee();
        System.out.println(allEmployee);
    }



}