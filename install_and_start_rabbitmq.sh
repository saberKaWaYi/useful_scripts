#!/bin/bash

set -e

sudo docker pull rabbitmq:management

sudo docker run -d \
  --restart=always \
  --hostname rabbitmq_node1 \
  --name rabbit \
  -e RABBITMQ_DEFAULT_USER=rabbitmq \
  -e RABBITMQ_DEFAULT_PASS=2494945183LCL \
  -p 15672:15672 \
  -p 5672:5672 \
  rabbitmq:management

echo "RabbitMQ 启动完成！"
echo "管理界面：http://localhost:15672"
echo "用户名：rabbitmq"
echo "密码：2494945183LCL"