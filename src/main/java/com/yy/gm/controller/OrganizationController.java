package com.yy.gm.controller;


import com.yy.gm.entity.Node;
import com.yy.gm.entity.Organization;
import com.yy.gm.entity.Pagination;
import com.yy.gm.service.OrganizationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/org")
public class OrganizationController
{

	@Autowired
	private OrganizationService organizationService;

	@RequestMapping(value = "/getOrgs")
	public Pagination<Organization> getOrganizations(@ModelAttribute Pagination<Organization> page)
	{
		return organizationService.getOrganizations(page);
	}

	@RequestMapping(value = "/getOrg")
	public Organization getOrganization(@RequestParam String uuid)
	{
		return organizationService.getOrganization(uuid);
	}

	@RequestMapping(value = "/getOrgsByParentId")
	public Node getOrganizationsByParentUUID(@RequestParam String parentUUID)
	{
		List<Node> orgs = organizationService.getOrganizationsByParentUUID(parentUUID);
		return new Node("-1", "国电集团", null, true, orgs);
	}

	@RequestMapping(value = "/getOutRootByParentId")
	public Node getOutRootByParentUUID(@RequestParam String parentUUID)
	{
		List<Node> orgs = organizationService.getOrganizationsByParentUUID(parentUUID);
		return new Node("outroot", "外部组织", null, true, orgs);
	}

	@RequestMapping(value = "/insert")
	public int insertOrganization(@ModelAttribute Organization organization)
	{
		return organizationService.insertOrganization(organization);
	}

	@RequestMapping(value = "/update")
	public int updateOrganization(@ModelAttribute Organization organization)
	{
		return organizationService.updateOrganization(organization);
	}

	@RequestMapping(value = "/remove")
	public int removeOrganization(@RequestParam String id)
	{
		return organizationService.removeOrganization(id);
	}
}
