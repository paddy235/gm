package com.yy.gm.service.impl;

import com.yy.gm.entity.Node;
import com.yy.gm.entity.Organization;
import com.yy.gm.entity.Pagination;
import com.yy.gm.mapper.OrganizationMapper;
import com.yy.gm.service.OrganizationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrganizationServiceImpl implements OrganizationService
{
	@Autowired
	private OrganizationMapper organizationMapper;

	@Override
	public Pagination<Organization> getOrganizations(Pagination<Organization> page)
	{

		int total = organizationMapper.getCount();

		List<Organization> organizations = organizationMapper.getOrganizations((page.getPageNumber() - 1) * page.getPageSize(),
				page.getPageSize());

		page.setRows(organizations);
		page.setTotal(total);
		return page;

	}

	@Override
	public Organization getOrganization(String uuid)
	{
		return organizationMapper.getOrganization(uuid);
	}

	@Override
	public List<Node> getOrganizationsByParentUUID(String parentUUID)
	{
		List<Node> orgs = organizationMapper.getOrganizationsByParentUUID(parentUUID);
		for (Node org : orgs) {
			List<Node> children = getOrganizationsByParentUUID(org.getId());
			if (children.size() > 0)
				org.setChildren(children);
			else
				org.setHasChildren(false);
		}
		return orgs;
	}

	@Override
	public int insertOrganization(Organization organization)
	{
		return organizationMapper.insertOrganization(organization);
	}

	@Override
	public int updateOrganization(Organization organization)
	{
		return organizationMapper.updateOrganization(organization);
	}

	@Override
	public int removeOrganization(String id)
	{
		return organizationMapper.removeOrganization(id);
	}

}
