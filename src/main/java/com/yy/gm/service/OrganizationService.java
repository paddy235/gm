package com.yy.gm.service;


import com.yy.gm.entity.Node;
import com.yy.gm.entity.Organization;
import com.yy.gm.entity.Pagination;

import java.util.List;

public interface OrganizationService
{
	public Pagination<Organization> getOrganizations(Pagination<Organization> page);

	public Organization getOrganization(String uuid);

	public List<Node> getOrganizationsByParentUUID(String parentUUID);

	public int insertOrganization(Organization organization);

	public int updateOrganization(Organization organization);

	public int removeOrganization(String id);
}
