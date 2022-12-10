@echo off
echo Unpacking Git and Python... & mkdir tmp & start /wait git_python.part01.exe & del git_python.part01.exe & del git_python.part*.rar

set path=git\cmd
git init .
git remote add origin https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
git pull origin master

del webui-user.bat
ren webui-user1.bat webui-user.bat

del webui-user-first-run.cmd & webui-user.bat

::Удалить себя