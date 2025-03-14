package com.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.QiuzhizixunEntity;
import com.entity.view.QiuzhizixunView;

import com.service.QiuzhizixunService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;
import java.io.IOException;
import com.service.StoreupService;
import com.entity.StoreupEntity;

/**
 * 求职资讯
 * 后端接口
 * @author 
 * @email 
 * @date 2023-03-17 17:34:52
 */
@RestController
@RequestMapping("/qiuzhizixun")
public class QiuzhizixunController {
    @Autowired
    private QiuzhizixunService qiuzhizixunService;

    @Autowired
    private StoreupService storeupService;

    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,QiuzhizixunEntity qiuzhizixun,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("xuesheng")) {
			qiuzhizixun.setXuehao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<QiuzhizixunEntity> ew = new EntityWrapper<QiuzhizixunEntity>();

		PageUtils page = qiuzhizixunService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, qiuzhizixun), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,QiuzhizixunEntity qiuzhizixun, 
		HttpServletRequest request){
        EntityWrapper<QiuzhizixunEntity> ew = new EntityWrapper<QiuzhizixunEntity>();

		PageUtils page = qiuzhizixunService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, qiuzhizixun), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( QiuzhizixunEntity qiuzhizixun){
       	EntityWrapper<QiuzhizixunEntity> ew = new EntityWrapper<QiuzhizixunEntity>();
      	ew.allEq(MPUtil.allEQMapPre( qiuzhizixun, "qiuzhizixun")); 
        return R.ok().put("data", qiuzhizixunService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(QiuzhizixunEntity qiuzhizixun){
        EntityWrapper< QiuzhizixunEntity> ew = new EntityWrapper< QiuzhizixunEntity>();
 		ew.allEq(MPUtil.allEQMapPre( qiuzhizixun, "qiuzhizixun")); 
		QiuzhizixunView qiuzhizixunView =  qiuzhizixunService.selectView(ew);
		return R.ok("查询求职资讯成功").put("data", qiuzhizixunView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        QiuzhizixunEntity qiuzhizixun = qiuzhizixunService.selectById(id);
		qiuzhizixun.setClicknum(qiuzhizixun.getClicknum()+1);
		qiuzhizixun.setClicktime(new Date());
		qiuzhizixunService.updateById(qiuzhizixun);
        return R.ok().put("data", qiuzhizixun);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        QiuzhizixunEntity qiuzhizixun = qiuzhizixunService.selectById(id);
		qiuzhizixun.setClicknum(qiuzhizixun.getClicknum()+1);
		qiuzhizixun.setClicktime(new Date());
		qiuzhizixunService.updateById(qiuzhizixun);
        return R.ok().put("data", qiuzhizixun);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody QiuzhizixunEntity qiuzhizixun, HttpServletRequest request){
    	qiuzhizixun.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(qiuzhizixun);
        qiuzhizixunService.insert(qiuzhizixun);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody QiuzhizixunEntity qiuzhizixun, HttpServletRequest request){
    	qiuzhizixun.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(qiuzhizixun);
        qiuzhizixunService.insert(qiuzhizixun);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody QiuzhizixunEntity qiuzhizixun, HttpServletRequest request){
        //ValidatorUtils.validateEntity(qiuzhizixun);
        qiuzhizixunService.updateById(qiuzhizixun);//全部更新
        return R.ok();
    }


    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        qiuzhizixunService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<QiuzhizixunEntity> wrapper = new EntityWrapper<QiuzhizixunEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("xuesheng")) {
			wrapper.eq("xuehao", (String)request.getSession().getAttribute("username"));
		}

		int count = qiuzhizixunService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	/**
     * 前端智能排序
     */
	@IgnoreAuth
    @RequestMapping("/autoSort")
    public R autoSort(@RequestParam Map<String, Object> params,QiuzhizixunEntity qiuzhizixun, HttpServletRequest request,String pre){
        EntityWrapper<QiuzhizixunEntity> ew = new EntityWrapper<QiuzhizixunEntity>();
        Map<String, Object> newMap = new HashMap<String, Object>();
        Map<String, Object> param = new HashMap<String, Object>();
		Iterator<Map.Entry<String, Object>> it = param.entrySet().iterator();
		while (it.hasNext()) {
			Map.Entry<String, Object> entry = it.next();
			String key = entry.getKey();
			String newKey = entry.getKey();
			if (pre.endsWith(".")) {
				newMap.put(pre + newKey, entry.getValue());
			} else if (StringUtils.isEmpty(pre)) {
				newMap.put(newKey, entry.getValue());
			} else {
				newMap.put(pre + "." + newKey, entry.getValue());
			}
		}
		params.put("sort", "clicknum");
        params.put("order", "desc");
		PageUtils page = qiuzhizixunService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, qiuzhizixun), params), params));
        return R.ok().put("data", page);
    }









}
