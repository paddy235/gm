package com.yy.gm.mapper;

import com.yy.gm.entity.Node;
import com.yy.gm.entity.Organization;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface OrganizationMapper
{
	public int getCount();

	public List<Organization> getOrganizations(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize);
	
	public Organization getOrganization(String uuid);

	public List<Organization> getRootOrganizations();

	public List<Node> getOrganizationsByParentUUID(String parentUUID);

	public int insertOrganization(Organization organization);
	
	public int updateOrganization(Organization organization);

	public int removeOrganization(String id);

	

}
