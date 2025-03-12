const base = {
    get() {
        return {
            url : "http://localhost:8080/springbootgvq91/",
            name: "springbootgvq91",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springbootgvq91/front/dist/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "基于java的大学生就业信息管理系统"
        } 
    }
}
export default base
