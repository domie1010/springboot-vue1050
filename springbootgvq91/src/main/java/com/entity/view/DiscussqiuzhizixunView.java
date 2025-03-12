package com.entity.view;

import com.entity.DiscussqiuzhizixunEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 求职资讯评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-03-17 17:34:52
 */
@TableName("discussqiuzhizixun")
public class DiscussqiuzhizixunView  extends DiscussqiuzhizixunEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussqiuzhizixunView(){
	}
 
 	public DiscussqiuzhizixunView(DiscussqiuzhizixunEntity discussqiuzhizixunEntity){
 	try {
			BeanUtils.copyProperties(this, discussqiuzhizixunEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
