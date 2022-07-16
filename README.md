# Win10/11 解除微软帐户与本地帐户绑定

灵感来源：https://zhuanlan.zhihu.com/p/130402808

亲测有效，想着以后可能还会用到，就直接写个批处理文件吧

### 原理

>删除HKEY_CURRENT_USER\Software\Microsoft\IdentityCRL和HKEY_USERS\.DEFAULT\Software\Microsoft\中的IdentityCRL项

重新登录后，在设置-帐户-电子邮件和应用账户下，单击微软帐户xxx@xx.com，点击“删除”即可
