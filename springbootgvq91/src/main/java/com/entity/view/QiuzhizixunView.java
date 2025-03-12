package com.entity.view;

import com.entity.QiuzhizixunEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 求职资讯
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-03-17 17:34:52
 */
@TableName("qiuzhizixun")
public class QiuzhizixunView  extends QiuzhizixunEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public QiuzhizixunView(){
	}
 
 	public QiuzhizixunView(QiuzhizixunEntity qiuzhizixunEntity){
 	try {
			BeanUtils.copyProperties(this, qiuzhizixunEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
