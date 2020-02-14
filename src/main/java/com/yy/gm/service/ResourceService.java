package com.yy.gm.service;


import com.yy.gm.entity.Node;
import com.yy.gm.entity.Pagination;
import com.yy.gm.entity.Resource;

import java.util.List;

public interface ResourceService
{
	public Pagination<Resource> getResources(Pagination<Resource> page);

	public Resource getResource(String uuid);
	
	public List<Node> getResourcesByParentId(String parentId);

	public int insertResource(Resource resource);

	public int updateResource(Resource resource);

	public int removeResource(String id);

	
}
