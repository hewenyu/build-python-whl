## 构建需要的docker 镜像包

```bash
docker build -t pip2pi .
# 也可以不用构建
```





## 运行docker 容器

```bash
docker-compose up -d
```





## 进入到pi p2pi 容器中

```bash
docker exec -it 容器id sh

# 进入到容器后
pip wheel --wheel-dir=/usr/src/app/wheels -r requirements.txt -i https://pypi.douban.com/simple

# 对生成后的whl文件生成pip源
cd wheels  && dir2pi ./

```