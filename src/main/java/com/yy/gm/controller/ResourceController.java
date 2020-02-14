package com.yy.gm.controller;


import com.yy.gm.entity.Node;
import com.yy.gm.entity.Pagination;
import com.yy.gm.entity.Resource;
import com.yy.gm.service.ResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/res")
public class ResourceController {
	@Autowired
	private ResourceService resourceService;

	@RequestMapping(value = "/getResources")
	public Pagination<Resource> getResources(@ModelAttribute Pagination<Resource> page) {
		return resourceService.getResources(page);
	}

	@RequestMapping(value = "/getResource")
	public Resource getResource(@RequestParam String uuid) {
		return resourceService.getResource(uuid);
	}

	@RequestMapping(value = "/getResourcesByParentId")
	public Node getResourcesByParentId(@RequestParam String parentId) {
		List<Node> orgs = resourceService.getResourcesByParentId(parentId);
		return new Node("root", "Root", null, true, orgs);
	}

	@RequestMapping(value = "/insert")
	public int insertResource(@ModelAttribute Resource Resource) {
		return resourceService.insertResource(Resource);
	}

	@RequestMapping(value = "/update")
	public int updateResource(@ModelAttribute Resource Resource) {
		return resourceService.updateResource(Resource);
	}

	@RequestMapping(value = "/remove")
	public int removeResource(@RequestParam String id) {
		return resourceService.removeResource(id);
	}
}
