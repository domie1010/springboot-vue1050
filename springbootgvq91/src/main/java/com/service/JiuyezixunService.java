package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JiuyezixunEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JiuyezixunVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JiuyezixunView;


/**
 * 就业资讯
 *
 * @author 
 * @email 
 * @date 2023-03-17 17:34:52
 */
public interface JiuyezixunService extends IService<JiuyezixunEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JiuyezixunVO> selectListVO(Wrapper<JiuyezixunEntity> wrapper);
   	
   	JiuyezixunVO selectVO(@Param("ew") Wrapper<JiuyezixunEntity> wrapper);
   	
   	List<JiuyezixunView> selectListView(Wrapper<JiuyezixunEntity> wrapper);
   	
   	JiuyezixunView selectView(@Param("ew") Wrapper<JiuyezixunEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JiuyezixunEntity> wrapper);
   	

}

