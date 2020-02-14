package com.yy.gm.mapper;


import com.yy.gm.entity.Node;
import com.yy.gm.entity.Resource;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ResourceMapper
{
	public int getCount();

	public List<Resource> getResources(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize);

	public Resource getResource(String uuid);
	
	public List<Node> getResourcesByParentId(String parentId);

	public int insertResource(Resource resource);

	public int insertMenu(Resource resource);

	public int updateResource(Resource resource);

	public int updateMenu(Resource resource);

	public int removeResource(String id);

	public int removeMenu(String id);
}
