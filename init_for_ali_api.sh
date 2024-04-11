#!/bin/bash

#安装依赖

echo "安装依赖。。。"
pip install --use-pep517 -r requirements.txt
echo "安装依赖。。。。。。"
pip install -r requirements_api.txt
echo "安装依赖。。。。。。。。。"
pip install -r requirements_webui.txt

#配置和初始化

echo "初始化中。。。"
python copy_config_example.py && python init_database.py --recreate-vs
