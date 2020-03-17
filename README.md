## 运行docker 容器

```bash
git clone https://github.com/hewenyu/build-python-whl.git && cd build-python-whl

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