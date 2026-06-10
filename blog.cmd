@echo off
chcp 65001 >nul
echo === 博客助手 ===
echo.
echo 命令：
echo   new "标题"    新建文章
echo   dev           本地预览
echo   deploy        构建并部署到 Cloudflare
echo   git "备注"    推送到 GitHub
echo.

if "%1"=="new" (
  cd /d "%~dp0"
  npx hexo new "%2"
  echo 文章已创建！在 source\_posts\%2.md 编辑
  exit /b
)

if "%1"=="dev" (
  cd /d "%~dp0"
  start http://localhost:4001
  npx hexo server --port 4001
  exit /b
)

if "%1"=="deploy" (
  cd /d "%~dp0"
  echo [1/3] 清理缓存...
  npx hexo clean
  echo [2/3] 构建中...
  npx hexo generate
  echo [3/3] 部署到 Cloudflare...
  npx wrangler pages deploy public --project-name=guofolin-blog --branch=master
  echo 部署完成！https://guofolin-blog.pages.dev
  exit /b
)

if "%1"=="git" (
  cd /d "%~dp0"
  git add .
  git commit -m "%2"
  git push github master
  echo 已推送到 GitHub
  exit /b
)

echo 用法：blog new "标题" / dev / deploy / git "备注"
