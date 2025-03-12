import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import qiye from '@/views/modules/qiye/list'
    import toujianxinxi from '@/views/modules/toujianxinxi/list'
    import news from '@/views/modules/news/list'
    import discussqiuzhizixun from '@/views/modules/discussqiuzhizixun/list'
    import qiuzhizixun from '@/views/modules/qiuzhizixun/list'
    import xuesheng from '@/views/modules/xuesheng/list'
    import discussjiuyezixun from '@/views/modules/discussjiuyezixun/list'
    import jiuyezixun from '@/views/modules/jiuyezixun/list'
    import jiuyezhidao from '@/views/modules/jiuyezhidao/list'
    import mianshiyaoqing from '@/views/modules/mianshiyaoqing/list'
    import config from '@/views/modules/config/list'
    import gongzuoleixing from '@/views/modules/gongzuoleixing/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '系统首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '系统首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/qiye',
        name: '企业',
        component: qiye
      }
      ,{
	path: '/toujianxinxi',
        name: '投简信息',
        component: toujianxinxi
      }
      ,{
	path: '/news',
        name: '就业招聘会',
        component: news
      }
      ,{
	path: '/discussqiuzhizixun',
        name: '求职资讯评论',
        component: discussqiuzhizixun
      }
      ,{
	path: '/qiuzhizixun',
        name: '求职资讯',
        component: qiuzhizixun
      }
      ,{
	path: '/xuesheng',
        name: '学生',
        component: xuesheng
      }
      ,{
	path: '/discussjiuyezixun',
        name: '就业资讯评论',
        component: discussjiuyezixun
      }
      ,{
	path: '/jiuyezixun',
        name: '就业资讯',
        component: jiuyezixun
      }
      ,{
	path: '/jiuyezhidao',
        name: '就业指导',
        component: jiuyezhidao
      }
      ,{
	path: '/mianshiyaoqing',
        name: '面试邀请',
        component: mianshiyaoqing
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
      ,{
	path: '/gongzuoleixing',
        name: '工作类型',
        component: gongzuoleixing
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '系统首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})
const originalPush = VueRouter.prototype.push
//修改原型对象中的push方法
VueRouter.prototype.push = function push(location) {
   return originalPush.call(this, location).catch(err => err)
}
export default router;
