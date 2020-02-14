package com.yy.gm.controller;


import com.yy.gm.entity.Duty;
import com.yy.gm.entity.Pagination;
import com.yy.gm.service.DutyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/duty")
public class DutyController
{
	@Autowired
	private DutyService dutyService;

	@RequestMapping(value = "/getDuties")
	public Pagination<Duty> getDuties(@ModelAttribute Pagination<Duty> page)
	{
		return dutyService.getDuties(page);
	}

	@RequestMapping(value = "/getDutyByOrganId")
	public List<Duty> getDutyByOrganId(String organId)
	{
		return dutyService.getDutyByOrganId(organId);
	}

	@RequestMapping(value = "/getDuty")
	public Duty getDuty(@RequestParam String uuid)
	{
		return dutyService.getDuty(uuid);
	}

	@RequestMapping(value = "/insert")
	public int insertDuty(@ModelAttribute Duty Duty)
	{
		return dutyService.insertDuty(Duty);
	}

	@RequestMapping(value = "/update")
	public int updateDuty(@ModelAttribute Duty Duty)
	{
		return dutyService.updateDuty(Duty);
	}

	@RequestMapping(value = "/remove")
	public int removeDuty(@RequestParam String id)
	{
		return dutyService.removeDuty(id);
	}
}
