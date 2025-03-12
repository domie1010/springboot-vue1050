export function isAuth(tableName, key) {
  let role = localStorage.getItem("UserTableName");
  let menus = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-full","buttons":["新增","查看","修改","删除"],"menu":"学生","menuJump":"列表","tableName":"xuesheng"}],"menu":"学生管理"},{"child":[{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"企业","menuJump":"列表","tableName":"qiye"}],"menu":"企业管理"},{"child":[{"appFrontIcon":"cuIcon-paint","buttons":["新增","查看","修改","删除"],"menu":"工作类型","menuJump":"列表","tableName":"gongzuoleixing"}],"menu":"工作类型管理"},{"child":[{"appFrontIcon":"cuIcon-brand","buttons":["新增","查看","修改","删除","查看评论","投简"],"menu":"就业资讯","menuJump":"列表","tableName":"jiuyezixun"}],"menu":"就业资讯管理"},{"child":[{"appFrontIcon":"cuIcon-list","buttons":["查看","修改","删除","审核","面试邀请"],"menu":"投简信息","menuJump":"列表","tableName":"toujianxinxi"}],"menu":"投简信息管理"},{"child":[{"appFrontIcon":"cuIcon-vip","buttons":["查看","修改","删除"],"menu":"面试邀请","menuJump":"列表","tableName":"mianshiyaoqing"}],"menu":"面试邀请管理"},{"child":[{"appFrontIcon":"cuIcon-circle","buttons":["新增","查看","修改","删除","查看评论","邀请面试"],"menu":"求职资讯","menuJump":"列表","tableName":"qiuzhizixun"}],"menu":"求职资讯管理"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["新增","查看","修改","删除"],"menu":"就业指导","menuJump":"列表","tableName":"jiuyezhidao"}],"menu":"就业指导管理"},{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"},{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"就业招聘会","tableName":"news"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-time","buttons":["查看","投简"],"menu":"就业资讯列表","menuJump":"列表","tableName":"jiuyezixun"}],"menu":"就业资讯模块"},{"child":[{"appFrontIcon":"cuIcon-send","buttons":["查看","邀请面试"],"menu":"求职资讯列表","menuJump":"列表","tableName":"qiuzhizixun"}],"menu":"求职资讯模块"},{"child":[{"appFrontIcon":"cuIcon-link","buttons":["查看"],"menu":"就业指导列表","menuJump":"列表","tableName":"jiuyezhidao"}],"menu":"就业指导模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-list","buttons":["查看","删除"],"menu":"投简信息","menuJump":"列表","tableName":"toujianxinxi"}],"menu":"投简信息管理"},{"child":[{"appFrontIcon":"cuIcon-vip","buttons":["查看"],"menu":"面试邀请","menuJump":"列表","tableName":"mianshiyaoqing"}],"menu":"面试邀请管理"},{"child":[{"appFrontIcon":"cuIcon-circle","buttons":["新增","查看","修改","删除","查看评论"],"menu":"求职资讯","menuJump":"列表","tableName":"qiuzhizixun"}],"menu":"求职资讯管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-time","buttons":["查看","投简"],"menu":"就业资讯列表","menuJump":"列表","tableName":"jiuyezixun"}],"menu":"就业资讯模块"},{"child":[{"appFrontIcon":"cuIcon-send","buttons":["查看","邀请面试"],"menu":"求职资讯列表","menuJump":"列表","tableName":"qiuzhizixun"}],"menu":"求职资讯模块"},{"child":[{"appFrontIcon":"cuIcon-link","buttons":["查看"],"menu":"就业指导列表","menuJump":"列表","tableName":"jiuyezhidao"}],"menu":"就业指导模块"}],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"学生","tableName":"xuesheng"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-brand","buttons":["新增","查看","修改","删除","查看评论"],"menu":"就业资讯","menuJump":"列表","tableName":"jiuyezixun"}],"menu":"就业资讯管理"},{"child":[{"appFrontIcon":"cuIcon-list","buttons":["查看","删除","审核","面试邀请"],"menu":"投简信息","menuJump":"列表","tableName":"toujianxinxi"}],"menu":"投简信息管理"},{"child":[{"appFrontIcon":"cuIcon-vip","buttons":["查看","删除"],"menu":"面试邀请","menuJump":"列表","tableName":"mianshiyaoqing"}],"menu":"面试邀请管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-time","buttons":["查看","投简"],"menu":"就业资讯列表","menuJump":"列表","tableName":"jiuyezixun"}],"menu":"就业资讯模块"},{"child":[{"appFrontIcon":"cuIcon-send","buttons":["查看","邀请面试"],"menu":"求职资讯列表","menuJump":"列表","tableName":"qiuzhizixun"}],"menu":"求职资讯模块"},{"child":[{"appFrontIcon":"cuIcon-link","buttons":["查看"],"menu":"就业指导列表","menuJump":"列表","tableName":"jiuyezhidao"}],"menu":"就业指导模块"}],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"企业","tableName":"qiye"}];
  for(let i=0;i<menus.length;i++){
    if(menus[i].tableName==role){
      for(let j=0;j<menus[i].frontMenu.length;j++){
          for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
            if(tableName==menus[i].frontMenu[j].child[k].tableName){
              let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
              return buttons.indexOf(key) !== -1 || false
            }
          }
      }
    }
  }
  return false;
}

/**
 *  * 获取当前时间（yyyy-MM-dd hh:mm:ss）
 *   */
export function getCurDateTime() {
    let currentTime = new Date(),
    year = currentTime.getFullYear(),
    month = currentTime.getMonth() + 1 < 10 ? '0' + (currentTime.getMonth() + 1) : currentTime.getMonth() + 1,
    day = currentTime.getDate() < 10 ? '0' + currentTime.getDate() : currentTime.getDate(),
    hour = currentTime.getHours(),
    minute = currentTime.getMinutes(),
    second = currentTime.getSeconds();
    return year + "-" + month + "-" + day + " " +hour +":" +minute+":"+second;
}

/**
 *  * 获取当前日期（yyyy-MM-dd）
 *   */
export function getCurDate() {
    let currentTime = new Date(),
    year = currentTime.getFullYear(),
    month = currentTime.getMonth() + 1 < 10 ? '0' + (currentTime.getMonth() + 1) : currentTime.getMonth() + 1,
    day = currentTime.getDate() < 10 ? '0' + currentTime.getDate() : currentTime.getDate();
    return year + "-" + month + "-" + day;
}
