# Angus Portfolio 部署指南

## 已完成
- [x] PPT风格作品集 HTML 设计完成
- [x] 所有作品文件已整理 (33个文件)
- [x] ZIP 打包完成 (15.11 MB)
- [x] Git 仓库已初始化

## 下一步：上传到 GitHub

### 方法一：使用 GitHub CLI (推荐)
```bash
# 1. 安装 GitHub CLI (如果还没有)
# https://github.com/cli/cli#installation

# 2. 登录 GitHub
gh auth login

# 3. 创建仓库并推送
cd K:\agues_aengus\aengus_
gh repo create aengus_ --private --source=. --push
```

### 方法二：使用 Personal Access Token
```bash
# 1. 获取 Token: https://github.com/settings/tokens (选 repo 权限)
# 2. 设置环境变量
$env:GITHUB_TOKEN = "你的token"

# 3. 运行上传脚本
cd K:\agues_aengus\aengus_
git remote add origin https://你的用户名:$env:GITHUB_TOKEN@github.com/你的用户名/aengus_.git
git branch -M main
git push -u origin main
```

### 方法三：手动上传 ZIP
1. 打开 https://github.com/new
2. 仓库名: aengus_
3. 选择 Private 或 Public
4. 点击 Create repository
5. 下载 ZIP: K:\agues_aengus\aengus_.zip
6. 在 GitHub 页面点击 "Upload files"
7. 拖拽 ZIP 文件上传并提交
