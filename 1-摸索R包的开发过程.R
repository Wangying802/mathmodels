## Script name: 摸索R包的开发过程

## Author: Dr. Ying Wang

## Date Created: 2025-06-17

## Copyright (c) Ying Wang, 2025
## Email: wangying20191212@163.com

# 学习资源：https://mp.weixin.qq.com/s/d-QEJP0aD8Xz7IiHyQDO2Q

# Clean the environment
rm(list = ls());gc()

# 安装并加载开发包所需包
# install.packages("usethis","devtools","roxygen2")

# load packages
library(usethis)
library(devtools)
library(roxygen2)

# 检查
has_devel()
# Your system is ready to build packages! 表示一切就绪

usethis::create_package(getwd())
# 直接新建了一个与文件夹同名的.Rproj文件，默认创建了一些文件：
# 学习资源：https://mp.weixin.qq.com/s/d-QEJP0aD8Xz7IiHyQDO2Q 内有详细介绍

# 如果基于git进行版本控制，commit的时候出现：Author identity unknown
# 运行如下代码
system("git config --global user.name 'Wangying802'")
system("git config --global user.email 'wangying20191212@163.com'")

# 如果Staged -> Commit -> Push流程还是失败那可能是基于网页（https）的逻辑走不通
# 解决办法是换 SSH 连接
# 具体操作步骤：
# 1.ssh-keygen -t ed25519 -C "your_email@example.com" 生成密钥
# 2.cat ~/.ssh/id_ed25519.pub | clip 复制密钥
# 3.在 GitHub 添加 SSH Key
# 4.ssh -T git@github.com 测试链接 Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
# Hi Wangying802! You've successfully authenticated, but GitHub does not provide shell access.
# 表示成功，不用管后半句，GitHub 的安全策略禁止用户直接通过 SSH 登录服务器（即不提供 bash 或 sh 等交互式 shell）。这是正常设计，GitHub 仅允许通过 SSH 进行 Git 操作（如 git push、git pull）。

# 然后再push一下就可以了！






