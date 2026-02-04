apt update #更新镜像源
termux-setup-storage #获取访问文件权限
apt install openjdk-21 #下载java21
apt install git #安装git工具
apt install python #安装python
curl -O https://raw.githubusercontent.com/xiaoli-server/Minecraft-server-in-android-phone/refs/heads/main/Version_selection13.py #下载版本储存库
python Version_selection13.py  #运行版本选择库
mkdir /storage/emulated/0/mcserver/1.21.11 #创建服务器文件夹
curl -O https://raw.githubusercontent.com/xiaoli-server/Minecraft-server-in-android-phone/refs/heads/main/eula.txt #下载配置好的eula协议
curl -O https://raw.githubusercontent.com/xiaoli-server/Minecraft-server-in-android-phone/refs/heads/main/server.properties #下载配置好的服务器配置文件
cd /storage/emulated/0/mcserver/1.21.11 #服务器文件将在该文件夹里下载
curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.15/0.18.4/1.1.1/server/jar
curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.21.11/0.18.4/1.1.1/server/jar
cd /storage/emulated/0/mcserver/1.21.11 #进入运行脚本所在文件夹
java -jar fabric-server-mc.1.21.11-loader.0.18.4-launcher.1.1.1.jar #运行启动脚本
cd /storage/emulated/0/mcserver/1.21.11/.fabric/server/

cd #回到termux所在文件夹
mv eula.txt /storage/emulated/0/mcserver/1.21.11/.fabric/server #替换eula至服务器文件夹
mv server.properties /storage/emulated/0/mcserver/1.21.11/.fabric/server #替换服务器配置文件至服务器文件夹
cd /storage/emulated/0/mcserver/1.21.11/.fabric/server/
java -jar 1.21.11-server.jar #开服


