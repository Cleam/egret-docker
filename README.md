# EGRET-DOCKER

egret docker 镜像仓库，我主要用于构建 CI/CD 流程。

由于官方 [egret-core](https://github.com/egret-labs/egret-core) 仓库在 github，访问速度较慢，我同步到了 gitee 上面，在我的账号下：[egret-core](https://gitee.com/lizhigao/egret-core)，构建镜像时采用的就是国内的 gitee 源。

## 使用我构建的镜像

我目前构建了一些版本在[docker 镜像仓库](https://hub.docker.com/r/cleam/egret)，如有你要的版本可以直接使用：

```sh
docker pull cleam/egret:5.2.32 # 5.2.32 为egret版本号
```

使用方法：

```sh
# 查看egret引擎信息
docker run --rm cleam/egret:5.2.32 info

# egret应用发布
docker run --rm cleam/egret:5.2.32 publish ...
```

## 自己构建指定版本镜像

```sh
# 镜像构建，如，构建egret版本v5.2.32
docker build --build-arg VERSION=v5.2.32 -t cleam/egret:5.2.32 .
```
