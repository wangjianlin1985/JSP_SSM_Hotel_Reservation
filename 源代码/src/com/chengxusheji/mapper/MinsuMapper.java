package com.chengxusheji.mapper;

import java.util.ArrayList;
import org.apache.ibatis.annotations.Param;
import com.chengxusheji.po.Minsu;

public interface MinsuMapper {
	/*添加茂名旅游信息*/
	public void addMinsu(Minsu minsu) throws Exception;

	/*按照查询条件分页查询茂名旅游记录*/
	public ArrayList<Minsu> queryMinsu(@Param("where") String where,@Param("startIndex") int startIndex,@Param("pageSize") int pageSize) throws Exception;

	/*按照查询条件查询所有茂名旅游记录*/
	public ArrayList<Minsu> queryMinsuList(@Param("where") String where) throws Exception;

	/*按照查询条件的茂名旅游记录数*/
	public int queryMinsuCount(@Param("where") String where) throws Exception; 

	/*根据主键查询某条茂名旅游记录*/
	public Minsu getMinsu(int minsuId) throws Exception;

	/*更新茂名旅游记录*/
	public void updateMinsu(Minsu minsu) throws Exception;

	/*删除茂名旅游记录*/
	public void deleteMinsu(int minsuId) throws Exception;

}
