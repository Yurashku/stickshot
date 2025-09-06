@echo off
pip install -r ..\requirements.txt
python ..\run_tests.py
echo Launching game...
godot ..\project.godot
pause
