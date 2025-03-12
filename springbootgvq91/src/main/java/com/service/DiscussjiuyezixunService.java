package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussjiuyezixunEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussjiuyezixunVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussjiuyezixunView;


/**
 * 就业资讯评论表
 *
 * @author 
 * @email 
 * @date 2023-03-17 17:34:52
 */
public interface DiscussjiuyezixunService extends IService<DiscussjiuyezixunEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussjiuyezixunVO> selectListVO(Wrapper<DiscussjiuyezixunEntity> wrapper);
   	
   	DiscussjiuyezixunVO selectVO(@Param("ew") Wrapper<DiscussjiuyezixunEntity> wrapper);
   	
   	List<DiscussjiuyezixunView> selectListView(Wrapper<DiscussjiuyezixunEntity> wrapper);
   	
   	DiscussjiuyezixunView selectView(@Param("ew") Wrapper<DiscussjiuyezixunEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussjiuyezixunEntity> wrapper);
   	

}

