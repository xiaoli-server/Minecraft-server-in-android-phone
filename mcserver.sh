apt update #更新镜像源
termux-setup-storage #获取访问文件权限
mkdir /storage/emulated/0/mcserver #创建服务器文件夹
apt install openjdk-21 #下载java21
cd /storage/emulated/0/mcserver #服务器文件将在该文件夹里下载
curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.21.11/0.18.4/1.1.1/server/jar #下载fabric服务端，这里下的是1.21.11
java -jar fabric-server-mc.1.21.11-loader.0.18.4-launcher.1.1.1.jar #运行安装程序
cd /storage/emulated/0/mcserver/.fabric/server/ #进入运行脚本所在文件夹
java -jar 1.21.11-server.jar #运行启动脚本
rd eula.txt #删除原eula协议
rd server.properties #删除原配置文件
cd /storage/emulated/0/Serverdocument/ #回到本脚本所在文件夹
mv eula.txt /storage/emulated/0/mcserver/.fabric/server #替换eula至服务器文件夹
mv server.properties /storage/emulated/0/mcserver/.fabric/server #替换服务器配置文件至服务器文件夹
java -jar 1.21.11-server.jar #开服
