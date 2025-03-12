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


import com.dao.DiscussjiuyezixunDao;
import com.entity.DiscussjiuyezixunEntity;
import com.service.DiscussjiuyezixunService;
import com.entity.vo.DiscussjiuyezixunVO;
import com.entity.view.DiscussjiuyezixunView;

@Service("discussjiuyezixunService")
public class DiscussjiuyezixunServiceImpl extends ServiceImpl<DiscussjiuyezixunDao, DiscussjiuyezixunEntity> implements DiscussjiuyezixunService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussjiuyezixunEntity> page = this.selectPage(
                new Query<DiscussjiuyezixunEntity>(params).getPage(),
                new EntityWrapper<DiscussjiuyezixunEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussjiuyezixunEntity> wrapper) {
		  Page<DiscussjiuyezixunView> page =new Query<DiscussjiuyezixunView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussjiuyezixunVO> selectListVO(Wrapper<DiscussjiuyezixunEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussjiuyezixunVO selectVO(Wrapper<DiscussjiuyezixunEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussjiuyezixunView> selectListView(Wrapper<DiscussjiuyezixunEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussjiuyezixunView selectView(Wrapper<DiscussjiuyezixunEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
