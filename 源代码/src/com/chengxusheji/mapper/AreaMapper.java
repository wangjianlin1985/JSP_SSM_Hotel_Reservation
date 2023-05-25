package com.chengxusheji.mapper;

import java.util.ArrayList;
import org.apache.ibatis.annotations.Param;
import com.chengxusheji.po.Area;

public interface AreaMapper {
	/*添加旅游类别信息*/
	public void addArea(Area area) throws Exception;

	/*按照查询条件分页查询旅游类别记录*/
	public ArrayList<Area> queryArea(@Param("where") String where,@Param("startIndex") int startIndex,@Param("pageSize") int pageSize) throws Exception;

	/*按照查询条件查询所有旅游类别记录*/
	public ArrayList<Area> queryAreaList(@Param("where") String where) throws Exception;

	/*按照查询条件的旅游类别记录数*/
	public int queryAreaCount(@Param("where") String where) throws Exception; 

	/*根据主键查询某条旅游类别记录*/
	public Area getArea(int areaId) throws Exception;

	/*更新旅游类别记录*/
	public void updateArea(Area area) throws Exception;

	/*删除旅游类别记录*/
	public void deleteArea(int areaId) throws Exception;

}
