import VueRouter from 'vue-router'

//引入组件
import Index from '../pages'
import Home from '../pages/home/home'
import Login from '../pages/login/login'
import Register from '../pages/register/register'
import Center from '../pages/center/center'
import Storeup from '../pages/storeup/list'
import News from '../pages/news/news-list'
import NewsDetail from '../pages/news/news-detail'
import xueshengList from '../pages/xuesheng/list'
import xueshengDetail from '../pages/xuesheng/detail'
import xueshengAdd from '../pages/xuesheng/add'
import qiyeList from '../pages/qiye/list'
import qiyeDetail from '../pages/qiye/detail'
import qiyeAdd from '../pages/qiye/add'
import gongzuoleixingList from '../pages/gongzuoleixing/list'
import gongzuoleixingDetail from '../pages/gongzuoleixing/detail'
import gongzuoleixingAdd from '../pages/gongzuoleixing/add'
import jiuyezixunList from '../pages/jiuyezixun/list'
import jiuyezixunDetail from '../pages/jiuyezixun/detail'
import jiuyezixunAdd from '../pages/jiuyezixun/add'
import toujianxinxiList from '../pages/toujianxinxi/list'
import toujianxinxiDetail from '../pages/toujianxinxi/detail'
import toujianxinxiAdd from '../pages/toujianxinxi/add'
import mianshiyaoqingList from '../pages/mianshiyaoqing/list'
import mianshiyaoqingDetail from '../pages/mianshiyaoqing/detail'
import mianshiyaoqingAdd from '../pages/mianshiyaoqing/add'
import qiuzhizixunList from '../pages/qiuzhizixun/list'
import qiuzhizixunDetail from '../pages/qiuzhizixun/detail'
import qiuzhizixunAdd from '../pages/qiuzhizixun/add'
import jiuyezhidaoList from '../pages/jiuyezhidao/list'
import jiuyezhidaoDetail from '../pages/jiuyezhidao/detail'
import jiuyezhidaoAdd from '../pages/jiuyezhidao/add'

const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location) {
	return originalPush.call(this, location).catch(err => err)
}

//配置路由
export default new VueRouter({
	routes:[
		{
      path: '/',
      redirect: '/index/home'
    },
		{
			path: '/index',
			component: Index,
			children:[
				{
					path: 'home',
					component: Home
				},
				{
					path: 'center',
					component: Center,
				},
				{
					path: 'storeup',
					component: Storeup
				},
				{
					path: 'news',
					component: News
				},
				{
					path: 'newsDetail',
					component: NewsDetail
				},
				{
					path: 'xuesheng',
					component: xueshengList
				},
				{
					path: 'xueshengDetail',
					component: xueshengDetail
				},
				{
					path: 'xueshengAdd',
					component: xueshengAdd
				},
				{
					path: 'qiye',
					component: qiyeList
				},
				{
					path: 'qiyeDetail',
					component: qiyeDetail
				},
				{
					path: 'qiyeAdd',
					component: qiyeAdd
				},
				{
					path: 'gongzuoleixing',
					component: gongzuoleixingList
				},
				{
					path: 'gongzuoleixingDetail',
					component: gongzuoleixingDetail
				},
				{
					path: 'gongzuoleixingAdd',
					component: gongzuoleixingAdd
				},
				{
					path: 'jiuyezixun',
					component: jiuyezixunList
				},
				{
					path: 'jiuyezixunDetail',
					component: jiuyezixunDetail
				},
				{
					path: 'jiuyezixunAdd',
					component: jiuyezixunAdd
				},
				{
					path: 'toujianxinxi',
					component: toujianxinxiList
				},
				{
					path: 'toujianxinxiDetail',
					component: toujianxinxiDetail
				},
				{
					path: 'toujianxinxiAdd',
					component: toujianxinxiAdd
				},
				{
					path: 'mianshiyaoqing',
					component: mianshiyaoqingList
				},
				{
					path: 'mianshiyaoqingDetail',
					component: mianshiyaoqingDetail
				},
				{
					path: 'mianshiyaoqingAdd',
					component: mianshiyaoqingAdd
				},
				{
					path: 'qiuzhizixun',
					component: qiuzhizixunList
				},
				{
					path: 'qiuzhizixunDetail',
					component: qiuzhizixunDetail
				},
				{
					path: 'qiuzhizixunAdd',
					component: qiuzhizixunAdd
				},
				{
					path: 'jiuyezhidao',
					component: jiuyezhidaoList
				},
				{
					path: 'jiuyezhidaoDetail',
					component: jiuyezhidaoDetail
				},
				{
					path: 'jiuyezhidaoAdd',
					component: jiuyezhidaoAdd
				},
			]
		},
		{
			path: '/login',
			component: Login
		},
		{
			path: '/register',
			component: Register
		},
	]
})
