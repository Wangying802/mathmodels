# 开始写函数

use_r("AHP") # 自动在 R 文件夹创建并打开 AHP.R

sinew::makeOxygen(AHP) #自动出现函数注释文件

document() #函数文档化 实际上是调用 roxygen2 包生成 man/AHP.Rd.
