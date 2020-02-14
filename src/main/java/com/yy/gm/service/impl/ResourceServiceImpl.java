package com.yy.gm.service.impl;


import com.yy.gm.entity.Node;
import com.yy.gm.entity.Pagination;
import com.yy.gm.entity.Resource;
import com.yy.gm.mapper.ResourceMapper;
import com.yy.gm.service.ResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ResourceServiceImpl implements ResourceService {

	@Autowired
	private ResourceMapper resourceMapper;

	@Override
	public Pagination<Resource> getResources(Pagination<Resource> page) {
		int total = resourceMapper.getCount();

		List<Resource> Resources = resourceMapper.getResources((page.getPageNumber() - 1) * page.getPageSize(), page.getPageSize());

		page.setRows(Resources);
		page.setTotal(total);
		return page;
	}

	@Override
	public Resource getResource(String uuid) {
		return resourceMapper.getResource(uuid);
	}

	@Override
	public int insertResource(Resource resource) {
		int a = resourceMapper.insertResource(resource);
		if (a == 1) {
			return resourceMapper.insertMenu(resource);
		}
		return 0;
	}

	@Override
	public List<Node> getResourcesByParentId(String parentId) {
		List<Node> resources = resourceMapper.getResourcesByParentId(parentId);
		for (Node res : resources) {
			List<Node> children = getResourcesByParentId(res.getId());
			if (children.size() > 0)
				res.setChildren(children);
			else
				res.setHasChildren(false);
		}
		return resources;
	}

	@Override
	public int updateResource(Resource resource) {
		int a = resourceMapper.updateResource(resource);
		if (a == 1) {
			return resourceMapper.updateMenu(resource);
		}
		return 0;
	}

	@Override
	public int removeResource(String id) {
		int a = resourceMapper.removeResource(id);
		if (a == 1) {
			return resourceMapper.removeMenu(id);
		}
		return 0;
	}

}
