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


import com.dao.DiscussqiuzhizixunDao;
import com.entity.DiscussqiuzhizixunEntity;
import com.service.DiscussqiuzhizixunService;
import com.entity.vo.DiscussqiuzhizixunVO;
import com.entity.view.DiscussqiuzhizixunView;

@Service("discussqiuzhizixunService")
public class DiscussqiuzhizixunServiceImpl extends ServiceImpl<DiscussqiuzhizixunDao, DiscussqiuzhizixunEntity> implements DiscussqiuzhizixunService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussqiuzhizixunEntity> page = this.selectPage(
                new Query<DiscussqiuzhizixunEntity>(params).getPage(),
                new EntityWrapper<DiscussqiuzhizixunEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussqiuzhizixunEntity> wrapper) {
		  Page<DiscussqiuzhizixunView> page =new Query<DiscussqiuzhizixunView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussqiuzhizixunVO> selectListVO(Wrapper<DiscussqiuzhizixunEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussqiuzhizixunVO selectVO(Wrapper<DiscussqiuzhizixunEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussqiuzhizixunView> selectListView(Wrapper<DiscussqiuzhizixunEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussqiuzhizixunView selectView(Wrapper<DiscussqiuzhizixunEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
