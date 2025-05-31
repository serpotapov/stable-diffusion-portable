@echo off
del README.md
echo Unpacking Git and Python... & mkdir tmp & start /wait git_python.part01.exe & del git_python.part01.exe & del git_python.part*.rar

set appdata=tmp
set userprofile=tmp
set temp=tmp
set path=git\cmd;python

git init .
git remote add origin https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
git pull origin master

python -m venv venv
call venv\scripts\activate.bat

python -m pip install --upgrade pip
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu128

call venv\scripts\deactivate.bat

del webui-user.bat
ren webui-user1.bat webui-user.bat

del webui-user-first-run.cmd & webui-user.bat
