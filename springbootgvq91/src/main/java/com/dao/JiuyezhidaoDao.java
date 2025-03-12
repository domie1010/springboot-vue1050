package com.dao;

import com.entity.JiuyezhidaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JiuyezhidaoVO;
import com.entity.view.JiuyezhidaoView;


/**
 * 就业指导
 * 
 * @author 
 * @email 
 * @date 2023-03-17 17:34:52
 */
public interface JiuyezhidaoDao extends BaseMapper<JiuyezhidaoEntity> {
	
	List<JiuyezhidaoVO> selectListVO(@Param("ew") Wrapper<JiuyezhidaoEntity> wrapper);
	
	JiuyezhidaoVO selectVO(@Param("ew") Wrapper<JiuyezhidaoEntity> wrapper);
	
	List<JiuyezhidaoView> selectListView(@Param("ew") Wrapper<JiuyezhidaoEntity> wrapper);

	List<JiuyezhidaoView> selectListView(Pagination page,@Param("ew") Wrapper<JiuyezhidaoEntity> wrapper);
	
	JiuyezhidaoView selectView(@Param("ew") Wrapper<JiuyezhidaoEntity> wrapper);
	

}
