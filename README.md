# 使用docker创建Hadoop分布式集群

#### 关于镜像

系统版本：Ubuntu14.04  
JDK版本：openjdk-7-jdk  
Hadoop版本：2.7.2  

原作者镜像链接：https://github.com/kiwenlau/hadoop-cluster-docker  

#### 本版本说明

本版本修复了原作者关于创建任意节点Hadoop集群的问题，由于Dockerfile时间过长，部分命令运行失效的问题，本人重新创建Dockerfile，直接在原镜像的基础上进行重建。

声明：镜像所有者还是归原作者kiwenlau

#### N节点Hadoop集群搭建步骤（N>=3）

1. 下载Docker镜像
```c
docker pull kiwenlau/hadoop:1.0
```
2. 下载GitHub仓库
```c
git clone https://github.com/e4glet/hadoop-cluster-docker
```

3. 创建Hadoop网络
```c
docker network create --driver=bridge hadoop
```
4. 进入配置目录
```c
cd hadoop-cluster-docker
```
5. 重新构建Docker镜像
以创建5个节点为例（1主4从）  
```c
./resize-cluster.sh 5
```
6. 启动Docker容器
```c
./start-container.sh 5
```
运行结果：
```c
start hadoop-master container...
start hadoop-slave1 container...
start hadoop-slave2 container...
start hadoop-slave3 container...
start hadoop-slave4 container...
root@hadoop-master:~# 
```   

7. 启动Hadoop
```c
root@hadoop-master:~#./start-hadoop.sh
```

到此完成。  

再次感谢原作者kiwenlau，为我们快速创建Hadoop集群提供了非常好的解决方案。