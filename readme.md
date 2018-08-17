# 一键式配置zsh(自用)
在参考知乎基础上进行修改,配置自己的.zshrc
##效果
![](media/15345033872360/15345035811864.jpg)
##实现的功能
自动跳转
高亮
安装皮肤powerline9k
安装powerline字体
命令提示
自动补全
...

#依赖
请检查是否已经安装git,zsh,oh-my-zsh.
大陆用户确保已经使用了代理
##安装oh-my-zsh
请确保已安装curl
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

#安装
```bash
git clone https://github.com/yiny0liuyin/zshconfig.zshrc.git && cd zshconfig.zshrc && mv 安装.zshrc ~/.zshrc && zsh
```
#使用
安装完成后 请执行 

```bash
cd && cd zshconfig.zshrc && mv 使用.zshrc ~/.zshrc && rm ~/zshconfig.zshrc 
```

##如果你觉得麻烦请执行(忽略以上两条代码)
```bash
git clone https://github.com/yiny0liuyin/zshconfig.zshrc.git && cd zshconfig.zshrc && mv 原始.zshrc ~/.zshrc && zsh
```




