package com.yy.gm.service.impl;


import com.yy.gm.entity.Duty;
import com.yy.gm.entity.Pagination;
import com.yy.gm.mapper.DutyMapper;
import com.yy.gm.service.DutyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DutyServiceImpl implements DutyService
{
	@Autowired
	private DutyMapper dutyMapper;

	@Override
	public Pagination<Duty> getDuties(Pagination<Duty> page)
	{
		int total = dutyMapper.getCount();

		List<Duty> dutys = dutyMapper.getDuties((page.getPageNumber() - 1) * page.getPageSize(), page.getPageSize());

		page.setRows(dutys);
		page.setTotal(total);
		return page;
	}
	
	@Override
	public List<Duty> getDutyByOrganId(String organId)
	{
		return dutyMapper.getDutyByOrganId(organId);
	}

	@Override
	public Duty getDuty(String uuid)
	{
		return dutyMapper.getDuty(uuid);
	}

	@Override
	public int insertDuty(Duty Duty)
	{
		return dutyMapper.insertDuty(Duty);
	}

	@Override
	public int updateDuty(Duty Duty)
	{
		return dutyMapper.updateDuty(Duty);
	}

	@Override
	public int removeDuty(String id)
	{
		return dutyMapper.removeDuty(id);
	}
}
