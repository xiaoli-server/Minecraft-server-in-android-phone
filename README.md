                          在安卓手机上一键部署我的世界服务器
如标题所示，这个压缩包里有能够在手机上一键快速部署我的世界服务器的脚本。我知道，这听起来非常扯淡，然而，我们可以通过使用一款功能强大的模拟linux命令行的软件——termux来实现这个疯狂的想法。

在下载该脚本之前，需要您先自行下载MT管理器与termux，termux在github里有，直接搜索就行，而MT管理器可以在应用商店里下载。做完准备工作后，我们就可以准备开始了。

每一个版本下载方式都会有一定的差异，请以每一个版本的下载方式为准，如有问题去我的网站：xiaolistudio.com.cn查询。

为保证零基础小白也能快速入门，我将server.properties文件中online-mode（正版验证）选项设置为false，并更改了motd、Max-player选项分别进行了更改，如果您了解我的世界服务端server.properties文件如何配置的话，可以到/storage/emulated/0/mcserver/.fabric/server/这个路径下找server.properties进行更改。

服务器运行之后，先输入指令op 玩家名 以获得管理员权限。如果您在游玩之后不想继续玩了，请在命令行输入stop指令以停止服务器（其实直接删termux后台也没什么事）如果您想重新运行服务器，则先输入cd /storage/emulated/0/mcserver/.fabric/server指令，之后输入java -jar 1.21.11-server.jar以运行服务器脚本

注意：运行后只有在局域网内的玩家可以连得上服务器，如果需要让外网玩家也游玩则需要使用frp内网穿透。（ps:frp内网穿透功能最早会在2026年9月左右上线）

如果还有什么问题，可以向15998410573@163.com这个邮箱发邮件，我会不定期查看邮箱。
