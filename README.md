1、安装环境



2、初始化项目
taro init app

3、启动
npm run dev:h5 WEB
npm run dev:weapp 微信
npm run dev:swan 百度
npm run dev:alipay 支付宝

4、基于state的数据管理
(1)更新数据一定是异步
this.setState({name:"张三"},()=>{
	console.log(this.state.name)
})

5、props传值
自定义组件接收的来自父组件的传值
props 是只读的
当props的传值是函数时 必须用on+函数名的规范来命名