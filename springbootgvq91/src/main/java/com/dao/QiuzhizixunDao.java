package com.dao;

import com.entity.QiuzhizixunEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.QiuzhizixunVO;
import com.entity.view.QiuzhizixunView;


/**
 * 求职资讯
 * 
 * @author 
 * @email 
 * @date 2023-03-17 17:34:52
 */
public interface QiuzhizixunDao extends BaseMapper<QiuzhizixunEntity> {
	
	List<QiuzhizixunVO> selectListVO(@Param("ew") Wrapper<QiuzhizixunEntity> wrapper);
	
	QiuzhizixunVO selectVO(@Param("ew") Wrapper<QiuzhizixunEntity> wrapper);
	
	List<QiuzhizixunView> selectListView(@Param("ew") Wrapper<QiuzhizixunEntity> wrapper);

	List<QiuzhizixunView> selectListView(Pagination page,@Param("ew") Wrapper<QiuzhizixunEntity> wrapper);
	
	QiuzhizixunView selectView(@Param("ew") Wrapper<QiuzhizixunEntity> wrapper);
	

}
