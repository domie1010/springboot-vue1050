package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussqiuzhizixunEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussqiuzhizixunVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussqiuzhizixunView;


/**
 * 求职资讯评论表
 *
 * @author 
 * @email 
 * @date 2023-03-17 17:34:52
 */
public interface DiscussqiuzhizixunService extends IService<DiscussqiuzhizixunEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussqiuzhizixunVO> selectListVO(Wrapper<DiscussqiuzhizixunEntity> wrapper);
   	
   	DiscussqiuzhizixunVO selectVO(@Param("ew") Wrapper<DiscussqiuzhizixunEntity> wrapper);
   	
   	List<DiscussqiuzhizixunView> selectListView(Wrapper<DiscussqiuzhizixunEntity> wrapper);
   	
   	DiscussqiuzhizixunView selectView(@Param("ew") Wrapper<DiscussqiuzhizixunEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussqiuzhizixunEntity> wrapper);
   	

}

