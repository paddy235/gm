package com.yy.gm.service;


import com.yy.gm.entity.Duty;
import com.yy.gm.entity.Pagination;

import java.util.List;

public interface DutyService
{

	public Pagination<Duty> getDuties(Pagination<Duty> page);
	
	public List<Duty> getDutyByOrganId(String organId);

	public Duty getDuty(String uuid);

	public int insertDuty(Duty duty);

	public int updateDuty(Duty duty);

	public int removeDuty(String id);

}
