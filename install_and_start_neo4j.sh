#!/bin/bash

set -e

NEO4J_IMAGE="neo4j:2025.05.0"

echo "===== 开始拉取 Neo4j 镜像 ====="

sudo docker pull $NEO4J_IMAGE

echo "===== 启动 Neo4j 容器 ====="

sudo docker run -d \
  --restart=always \
  --name neo4j \
  -p 7474:7474 \
  -p 7687:7687 \
  -e NEO4J_AUTH=neo4j/2494945183LCL \
  -v ~/data/neo4j:/data \
  $NEO4J_IMAGE

echo "===== Neo4j 启动完成 ====="
echo "Web 管理界面：http://localhost:7474"
echo "默认账号：neo4j"
echo "默认密码：2494945183LCL"
echo "数据持久化目录：~/data/neo4j"
