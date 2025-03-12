package com.dao;

import com.entity.JiuyezixunEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JiuyezixunVO;
import com.entity.view.JiuyezixunView;


/**
 * 就业资讯
 * 
 * @author 
 * @email 
 * @date 2023-03-17 17:34:52
 */
public interface JiuyezixunDao extends BaseMapper<JiuyezixunEntity> {
	
	List<JiuyezixunVO> selectListVO(@Param("ew") Wrapper<JiuyezixunEntity> wrapper);
	
	JiuyezixunVO selectVO(@Param("ew") Wrapper<JiuyezixunEntity> wrapper);
	
	List<JiuyezixunView> selectListView(@Param("ew") Wrapper<JiuyezixunEntity> wrapper);

	List<JiuyezixunView> selectListView(Pagination page,@Param("ew") Wrapper<JiuyezixunEntity> wrapper);
	
	JiuyezixunView selectView(@Param("ew") Wrapper<JiuyezixunEntity> wrapper);
	

}
