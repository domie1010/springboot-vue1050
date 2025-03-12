package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.JiuyezixunDao;
import com.entity.JiuyezixunEntity;
import com.service.JiuyezixunService;
import com.entity.vo.JiuyezixunVO;
import com.entity.view.JiuyezixunView;

@Service("jiuyezixunService")
public class JiuyezixunServiceImpl extends ServiceImpl<JiuyezixunDao, JiuyezixunEntity> implements JiuyezixunService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JiuyezixunEntity> page = this.selectPage(
                new Query<JiuyezixunEntity>(params).getPage(),
                new EntityWrapper<JiuyezixunEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JiuyezixunEntity> wrapper) {
		  Page<JiuyezixunView> page =new Query<JiuyezixunView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JiuyezixunVO> selectListVO(Wrapper<JiuyezixunEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JiuyezixunVO selectVO(Wrapper<JiuyezixunEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JiuyezixunView> selectListView(Wrapper<JiuyezixunEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JiuyezixunView selectView(Wrapper<JiuyezixunEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
