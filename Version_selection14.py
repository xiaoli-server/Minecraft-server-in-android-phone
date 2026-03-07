print("您要下载的版本是：（仅支持正式版1.14~1.21.11）") #向用户问询
num = input()
num_set = {
    "1.14", "1.14.1", "1.14.2", "1.14.3", "1.14.4",
    "1.15", "1.15.1", "1.15.2",
    "1.16", "1.16.1", "1.16.2", "1.16.3", "1.16.4", "1.16.5",
    "1.17", "1.17.1",
    "1.18", "1.18.1", "1.18.2",
    "1.19", "1.19.1", "1.19.2", "1.19.3", "1.19.4",
    "1.20", "1.20.1", "1.20.2", "1.20.3", "1.20.4", "1.20.5", "1.20.6",
    "1.21", "1.21.1", "1.21.2", "1.21.3", "1.21.4", "1.21.5", "1.21.6",
    "1.21.7", "1.21.8", "1.21.9", "1.21.10", "1.21.11"
}

if num in num_set:
    print ("输入有效")
else:
    print("输入无效！请输入1.14~1.21.11之间的正式版版本号")

file_path = 'mcserver14.sh'

lines = []
with open(file_path, 'r', encoding='utf-8') as f:
    for line_num, line_content in enumerate(f, 1): # 枚举行号
        # 判断当前行是否包含关键词
        if "1.21.11" in line_content:
            print(f"正在执行替换")
            # 替换该行
            new_line = line_content.replace("1.21.11", num)
            lines.append(new_line)
        else:
            # 不包含则原样保留
            lines.append(line_content)

# 写入修改后的内容
with open(file_path, 'w', encoding='utf-8') as f:
    f.writelines(lines)
    
    
