## 运行docker 容器

```bash
# 默认使用 python 3.6
git clone https://github.com/hewenyu/build-python-whl.git && cd build-python-whl

# python 3.6 版本
# git clone -b py36 https://github.com/hewenyu/build-python-whl.git 
# python 3.7 版本
# git clone -b py37 https://github.com/hewenyu/build-python-whl.git 
docker-compose up -d
```

## 进入到pip2pi 容器中

```bash
docker exec -it 容器id sh

# 进入到容器后
pip wheel --wheel-dir=/usr/src/app/wheels -r requirements.txt -i https://pypi.douban.com/simple

# 对生成后的whl文件生成pip源
cd wheels  && dir2pi ./

```



## 访问url

打开http://ip:8080/simple/

可以安装

```bash
pip install  -r requirements.txt -i  http://IP:8080/simple/ --trusted-host IP
```



