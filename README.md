## 运行docker 容器

```bash
git clone https://github.com/hewenyu/build-python-whl.git && cd build-python-whl

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



