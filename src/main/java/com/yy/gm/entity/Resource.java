package com.yy.gm.entity;


public class Resource
{
	private String res_uuid;
	private String res_url;
	/* 菜单目录id（树型结构层级编码） */
	private String menu_id;
	/* 菜单目录编号 */
	private String dir_code;
	/* 菜单目录名称 */
	private String dir_name;
	/* 菜单目录级数 */
	private String dir_level_number;
	/* 父目录id */
	private String parent_id;

	private Resource parent;
	/* 明细否：0 非明细；1 明细 */
	private String isitem;
	/* 菜单目录顺序号 */
	private Integer dir_order;
	private String status = "1";
	private String flag = "1";
	private String locale = "zh_CN";

	public String getRes_uuid()
	{
		return res_uuid;
	}

	public void setRes_uuid(String res_uuid)
	{
		this.res_uuid = res_uuid;
	}

	public String getRes_url()
	{
		return res_url;
	}

	public void setRes_url(String res_url)
	{
		this.res_url = res_url;
	}

	public String getMenu_id()
	{
		return menu_id;
	}

	public void setMenu_id(String menu_id)
	{
		this.menu_id = menu_id;
	}

	public String getDir_code()
	{
		return dir_code;
	}

	public void setDir_code(String dir_code)
	{
		this.dir_code = dir_code;
	}

	public String getDir_name()
	{
		return dir_name;
	}

	public void setDir_name(String dir_name)
	{
		this.dir_name = dir_name;
	}

	public String getDir_level_number()
	{
		return dir_level_number;
	}

	public void setDir_level_number(String dir_level_number)
	{
		this.dir_level_number = dir_level_number;
	}

	public String getParent_id()
	{
		return parent_id;
	}

	public void setParent_id(String parent_id)
	{
		this.parent_id = parent_id;
	}

	public Resource getParent()
	{
		return parent;
	}

	public void setParent(Resource parent)
	{
		this.parent = parent;
	}

	public String getIsitem()
	{
		return isitem;
	}

	public void setIsitem(String isitem)
	{
		this.isitem = isitem;
	}

	public Integer getDir_order()
	{
		return dir_order;
	}

	public void setDir_order(Integer dir_order)
	{
		this.dir_order = dir_order;
	}

	public String getStatus()
	{
		return status;
	}

	public void setStatus(String status)
	{
		this.status = status;
	}

	public String getFlag()
	{
		return flag;
	}

	public void setFlag(String flag)
	{
		this.flag = flag;
	}

	public String getLocale()
	{
		return locale;
	}

	public void setLocale(String locale)
	{
		this.locale = locale;
	}

}
