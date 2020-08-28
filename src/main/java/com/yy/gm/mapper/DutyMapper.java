package com.yy.gm.mapper;


import com.yy.gm.entity.Duty;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Mapper
public interface DutyMapper {
	public int getCount();

	public List<Duty> getDuties(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize);

	public List<Duty> getDutyByOrganId(String organId);

	public Duty getDuty(String uuid);

	public int insertDuty(Duty Duty);

	public int updateDuty(Duty Duty);

	public int removeDuty(String id);
}
