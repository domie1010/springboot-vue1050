package com.dao;

import com.entity.DiscussqiuzhizixunEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussqiuzhizixunVO;
import com.entity.view.DiscussqiuzhizixunView;


/**
 * 求职资讯评论表
 * 
 * @author 
 * @email 
 * @date 2023-03-17 17:34:52
 */
public interface DiscussqiuzhizixunDao extends BaseMapper<DiscussqiuzhizixunEntity> {
	
	List<DiscussqiuzhizixunVO> selectListVO(@Param("ew") Wrapper<DiscussqiuzhizixunEntity> wrapper);
	
	DiscussqiuzhizixunVO selectVO(@Param("ew") Wrapper<DiscussqiuzhizixunEntity> wrapper);
	
	List<DiscussqiuzhizixunView> selectListView(@Param("ew") Wrapper<DiscussqiuzhizixunEntity> wrapper);

	List<DiscussqiuzhizixunView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussqiuzhizixunEntity> wrapper);
	
	DiscussqiuzhizixunView selectView(@Param("ew") Wrapper<DiscussqiuzhizixunEntity> wrapper);
	

}
