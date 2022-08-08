# Win10/11 解除微软帐户与本地帐户绑定

某天自己电脑发现怎么也无法把微软账户转成本地账户

遂暴起，以百度劈电脑，学会了改注册表，亲测有效

后来总结经验，想着以后可能还会用到，就直接写个批处理文件吧

### 效果

```
此工具将会删除注册表内账户有关信息以达到解绑效果
故请在下一步前做好备份，以便于出现未知问题时恢复
另外，此脚本需以管理员身份运行，否则可能拒绝访问
```

>删除HKEY_CURRENT_USER\Software\Microsoft\IdentityCRL 和 HKEY_USERS\.DEFAULT\Software\Microsoft\IdentityCRL项

然后自动注销本地账户（shutdown -l）

手动重新登录后，在设置-帐户-电子邮件和应用下，单击微软帐户xxx@xx.com，点击“删除”即可

### 灵感来源

灵感来源：https://zhuanlan.zhihu.com/p/130402808

在此特别感谢大佬！
