package com.dao;

import com.entity.DiscussjiuyezixunEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussjiuyezixunVO;
import com.entity.view.DiscussjiuyezixunView;


/**
 * 就业资讯评论表
 * 
 * @author 
 * @email 
 * @date 2023-03-17 17:34:52
 */
public interface DiscussjiuyezixunDao extends BaseMapper<DiscussjiuyezixunEntity> {
	
	List<DiscussjiuyezixunVO> selectListVO(@Param("ew") Wrapper<DiscussjiuyezixunEntity> wrapper);
	
	DiscussjiuyezixunVO selectVO(@Param("ew") Wrapper<DiscussjiuyezixunEntity> wrapper);
	
	List<DiscussjiuyezixunView> selectListView(@Param("ew") Wrapper<DiscussjiuyezixunEntity> wrapper);

	List<DiscussjiuyezixunView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussjiuyezixunEntity> wrapper);
	
	DiscussjiuyezixunView selectView(@Param("ew") Wrapper<DiscussjiuyezixunEntity> wrapper);
	

}
