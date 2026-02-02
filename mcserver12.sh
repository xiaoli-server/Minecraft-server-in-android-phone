apt update #更新镜像源
termux-setup-storage #获取访问文件权限
mkdir /storage/emulated/0/mcserver #创建服务器文件夹
apt install openjdk-21 #下载java21
apt install git #安装git工具
apt install python #安装python
python Version_selection.py #运行版本选择库
curl -O https://raw.githubusercontent.com/xiaoli-server/Minecraft-server-in-android-phone/refs/heads/main/eula.txt #下载配置好的eula协议
curl -O https://raw.githubusercontent.com/xiaoli-server/Minecraft-server-in-android-phone/refs/heads/main/server.properties #下载配置好的服务器配置文件
cd /storage/emulated/0/mcserver #服务器文件将在该文件夹里下载

curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.21/0.18.4/1.1.1/server/jar
cd /storage/emulated/0/mcserver/.fabric/server/ #进入运行脚本所在文件夹
java -jar 1.21.11-server.jar #运行启动脚本
rm eula.txt #删除原eula协议
rm server.properties #删除原配置文件
cd #回到termux所在文件夹
mv eula.txt /storage/emulated/0/mcserver/.fabric/server #替换eula至服务器文件夹
mv server.properties /storage/emulated/0/mcserver/.fabric/server #替换服务器配置文件至服务器文件夹
java -jar 1.21.11-server.jar #开服

