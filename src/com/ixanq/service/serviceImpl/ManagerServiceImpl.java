package com.ixanq.service.serviceImpl;

import com.ixanq.dao.ManagerDao;
import com.ixanq.entity.*;
import com.ixanq.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("managerService")
public class ManagerServiceImpl implements ManagerService {
    @Autowired
    private ManagerDao managerDao;
    @Override
    public Manager findAdminByName(String byName) {
        return managerDao.findAdminByName(byName);
    }

    @Override
    public Manager findAdminByNameAndPassword(Manager manager) {
        return managerDao.findAdminByNameAndPassword(manager);
    }

    @Override
    public void addDepartment(Department department) {
        managerDao.addDepartment(department);
    }

    @Override
    public void deleteDepartment(Integer byID) {
        managerDao.deleteDepartment(byID);
    }

    @Override
    public void updateDepartment(Department department) {

    }

    @Override
    public Department findDepartmentbyId(Integer byId) {
        return managerDao.findDepartmentbyId(byId);
    }

    @Override
    public List<Department> findAllDepartment() {
        return managerDao.findAllDepartment();
    }

    @Override
    public void addWorkPosition(WorkPosition workPosition) {

    }

    @Override
    public void deleteWorkPosition(Integer byID) {

    }

    @Override
    public void updateWorkPosition(WorkPosition workPosition) {

    }

    @Override
    public WorkPosition findWorkPositionById(Integer byId) {
        return managerDao.findWorkPositionById(byId);
    }

    @Override
    public List<WorkPosition> findAllWorkPosition() {
        return managerDao.findAllWorkPosition();
    }

    @Override
    public void addEmployee(Employee employee) {

    }

    @Override
    public void deleteEmployee(Integer byID) {

    }

    @Override
    public void updateEmployee(Employee employee) {

    }

    @Override
    public Employee findEmployeeById(Integer byId) {
        return null;
    }

    @Override
    public List<Employee> findAllEmployee() {
        return null;
    }

    @Override
    public void addSalary(Salary salary) {

    }

    @Override
    public void deleteSalary(Integer byID) {

    }

    @Override
    public void updateSalary(Salary salary) {

    }

    @Override
    public Salary findSalaryById(Integer byId) {
        return null;
    }

    @Override
    public List<Salary> findAllSalary() {
        return managerDao.findAllSalary();
    }

    @Override
    public void addCheckWorkAttendance(CheckWorkAttendance checkWorkAttendance) {

    }

    @Override
    public void deleteCheckWorkAttendance(Integer byID) {

    }

    @Override
    public void updateCheckWorkAttendance(CheckWorkAttendance checkWorkAttendance) {

    }

    @Override
    public CheckWorkAttendance findCheckWorkAttendanceByID(Integer byId) {
        return null;
    }

    @Override
    public List<CheckWorkAttendance> findAllCheckWorkAttendance() {
        return null;
    }

    @Override
    public void addTrain(Train train) {

    }

    @Override
    public void deleteTrain(Integer byID) {

    }

    @Override
    public void updateTrain(Train train) {

    }

    @Override
    public Train findTrainById(Integer byId) {
        return null;
    }

    @Override
    public List<Train> findAllTrain() {
        return null;
    }

    @Override
    public void addReward(Reward reward) {

    }

    @Override
    public void deleteReward(Integer byID) {

    }

    @Override
    public void updateReward(Reward reward) {

    }

    @Override
    public Reward findRewardById(Integer byId) {
        return null;
    }

    @Override
    public List<Reward> findAllReward() {
        return null;
    }

    @Override
    public List<WorkPosition> findWorkPositionByDepartmentId(Integer id) {
        return managerDao.findWorkPositionByDepartmentId(id);
    }

    @Override
    public List<ResumeForManager> findResumeByStatus(String status) {
        return managerDao.findResumeByStatus(status);
    }

    @Override
    public List<ResumeForManager> findAllResumeForManager() {
        return managerDao.findAllResumeForManager();
    }

    @Override
    public ResumeForManager findResumeById(Integer newId) {
        return managerDao.findResumeById(newId);
    }

    @Override
    public void updateResumeStatusForManager(ResumeForManager resumeById) {
        managerDao.updateResumeStatusForManager(resumeById);
    }

    @Override
    public void deleteResumeForManagerById(Integer id) {
        managerDao.deleteResumeForManagerById(id);
    }
}