# ʹ��docker����Hadoop�ֲ�ʽ��Ⱥ

#### ���ھ���

ϵͳ�汾��Ubuntu14.04  
JDK�汾��openjdk-7-jdk  
Hadoop�汾��2.7.2  

ԭ���߾������ӣ�https://github.com/kiwenlau/hadoop-cluster-docker  

#### ���汾˵��

���汾�޸���ԭ���߹��ڴ�������ڵ�Hadoop��Ⱥ�����⣬����Dockerfileʱ�������������������ʧЧ�����⣬�������´���Dockerfile��ֱ����ԭ����Ļ����Ͻ����ؽ���

���������������߻��ǹ�ԭ����kiwenlau

#### N�ڵ�Hadoop��Ⱥ����裨N>=3��

1. ����Docker����
```c
docker pull kiwenlau/hadoop:1.0
```
2. ����GitHub�ֿ�
```c
git clone https://github.com/e4glet/hadoop-cluster-docker
```

3. ����Hadoop����
```c
docker network create --driver=bridge hadoop
```
4. ��������Ŀ¼
```c
cd hadoop-cluster-docker
```
5. ���¹���Docker����
�Դ���5���ڵ�Ϊ����1��4�ӣ�  
```c
./resize-cluster.sh 5
```
6. ����Docker����
```c
./start-container.sh 5
```
���н����
```c
start hadoop-master container...
start hadoop-slave1 container...
start hadoop-slave2 container...
start hadoop-slave3 container...
start hadoop-slave4 container...
root@hadoop-master:~# 
```   

7. ����Hadoop
```c
root@hadoop-master:~#./start-hadoop.sh
```

������ɡ�  

�ٴθ�лԭ����kiwenlau��Ϊ���ǿ��ٴ���Hadoop��Ⱥ�ṩ�˷ǳ��õĽ��������