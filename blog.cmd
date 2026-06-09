@echo off
echo === 博客助手 ===
echo.
echo 命令：
echo   new "标题"    新建文章
echo   dev           本地预览
echo   build         构建
echo   push "备注"   推送部署
echo.

if "%1"=="new" (
  cd /d "%~dp0"
  call npx hexo new "%2"
  echo 文章已创建！在 source\_posts\%2.md 编辑
  exit /b
)

if "%1"=="dev" (
  cd /d "%~dp0"
  start http://localhost:4001
  call npx hexo server --port 4001
  exit /b
)

if "%1"=="build" (
  cd /d "%~dp0"
  call npx hexo clean
  call npx hexo generate
  exit /b
)

if "%1"=="push" (
  cd /d "%~dp0"
  git add .
  git commit -m "%2"
  git push github master
  echo 已推送到 GitHub，Cloudflare Pages 将自动部署
  exit /b
)

echo 用法：blog new "标题" / dev / build / push "备注"
