package com.ixanq.entity;

import java.util.Date;

//职位
public class WorkPosition {
	private Integer id;
	private String name;//职位名称
	private Integer departmentId;
	private Date createTime;

	public WorkPosition() {
	}

	public WorkPosition(Integer id, String name, Integer departmentId, Date createTime) {
		this.id = id;
		this.name = name;
		this.departmentId = departmentId;
		this.createTime = createTime;
	}

	public Integer getId() {

		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(Integer departmentId) {
		this.departmentId = departmentId;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	@Override
	public String toString() {
		return "WorkPosition{" +
				"id=" + id +
				", name='" + name + '\'' +
				", departmentId=" + departmentId +
				", createTime=" + createTime +
				'}';
	}
}
