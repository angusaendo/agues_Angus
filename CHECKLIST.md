# Angus Portfolio 部署清单

## 已完成
- [x] PPT风格作品集 HTML 设计
- [x] 33个作品文件整理到 aengus_ 目录
- [x] ZIP 打包 (15.11 MB)
- [x] Git 仓库初始化并提交
- [x] Logo 图片路径修复
- [x] 所有作品文件路径验证

## 待完成 - GitHub 上传
需要 GitHub Token，获取方式:
1. 打开 https://github.com/settings/tokens
2. 点击 "Generate new token (classic)"
3. 勾选 repo 权限
4. 点击 Generate token
5. 复制 token

上传命令:
```bash
cd K:\agues_aengus\aengus_
git remote add origin https://angusaendo:TOKEN@github.com/angusaendo/aengus_.git
git branch -M main
git push -u origin main
```

## 待完成 - Cloudflare Pages 部署
需要 Cloudflare API Token:
1. 打开 https://dash.cloudflare.com/profile/api-tokens
2. 使用模板 "Edit Cloudflare Pages"
3. 选择 Account 和 Zone
4. 复制 Token

部署命令:
```bash
cd K:\agues_aengus\aengus_
npx wrangler pages deploy . --project-name=angus-portfolio
```

## 待完成 - 域名配置
1. 在 Cloudflare Dashboard 添加自定义域名 aengus.dpdns.org
2. 指向 Cloudflare Pages 分配的域名
