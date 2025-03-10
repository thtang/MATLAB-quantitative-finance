# MATLAB量化金融分析基础与实战-随书代码

《MATLAB量化金融分析基础与实战》是一本侧重于阐述MATLAB在量化金融分析领域功能的工具书。书中精选了量化金融分析领域常见的重要函数和模型加以介绍并配有示例，以方便读者学习。本书涵盖了MATLAB基本知识、数据处理、Python交互、金融建模、高效并发程序设计和报告生成的量化分析流程，涉及量化投资中的多个重要算法，包括技术指标、线性回归、非线性回归、统计学、机器学习、投资组合模型和波动率模型等。书中强调了GPU和CPU并行计算在金融模型中的应用及将模型结果呈现为PDF或HTML等格式文件的Report Generator。后向读者展示了如何使用书中介绍的各项MATLAB功能实现4个经典策略，即股票均线策略、小市值策略、期货套利策略和海龟交易法则。

《MATLAB量化金融分析基础与实战》适合具备一定数学、金融、计算机基础及编程经验的专业人员阅读，也可作为相关专业院校本科高年级、研究生或教师的教学参考用书。

## 目录

第1章基本数据类型
* 1.1 变量及其命名规则
* 1.2 数值
  * 1.2.1 数值类型概述
  * 1.2.2 如何查看数值类型范围
  * 1.2.3 实例1：当心数值类型转换中的溢出
  * 1.2.4 实例2：判断与查看数值类型
* 1.3 矩阵
  * 1.3.1 实例3：矩阵及特殊矩阵的建立方法
  * 1.3.2 实例4：利用一维索引提取二维矩阵中的元素
  * 1.3.3 实例5：矩阵转置、共轭转置与求逆
  * 1.3.4  实例6：sortrows与sort函数比较
  * 1.3.5矩阵与矩阵元素算术运算概述
  * 1.3.6 逻辑、关系和集合运算概述
* 1.4 警惕特殊数字
  * 1.4.1 NaN
  * 1.4.2 Inf
  * 1.4.3 逻辑型数字
* 1.5 字符和字符串
  * 1.5.1 实例7：字符串的创建与元素提取
  * 1.5.2 实例8：字符串的查找、替换与删除
  * 1.5.3 实例9：strcat函数的常见错误
  * 1.5.4 实例10：str2num函数和str2double函数的区别
  * 1.5.5 字符串比较函数的应用
  * 1.5.6 正则表达式概述及常见使用方法
  * 1.5.7 实例11：利用符号变量求解方程
  * 1.5.8 实例12：函数句柄的应用
* 1.6 时间
  * 1.6.1 datetime类型介绍
  * 1.6.2 实例13：其他类型时间转数值时间
  * 1.6.3 实例14：数值时间转字符串时间
* 1.7 cell
  * 1.7.1 实例15：两种常见的cell赋值方式
  * 1.7.2 实例16：mat2cell函数与num2cell函数
  * 1.7.3 实例17：cellstr函数
  * 1.7.4 实例18：cell2mat函数
  * 1.7.5 实例19：用cellfun函数做cell元素遍历运算
  * 1.7.6 实例20：用findgroups函数和splitapply函数做cell分组运算
* 1.8 struct
  * 1.8.1 创建struct变量
  * 1.8.2 实例21：多维结构体与多维cell中嵌套结构体
 
第2章程序设计
* 2.1 函数的定义
  * 2.1.1 单个函数脚本的创建
  * 2.1.2 含有子函数的脚本创建及调用
* 2.2 量化分析中的常用基本函数及其用法
  * 2.2.1 edit
  * 2.2.2 clear
  * 2.2.3 clc
  * 2.2.4 close
  * 2.2.5 whos
  * 2.2.6 exist
  * 2.2.7 isa
  * 2.2.8 isempty
  * 2.2.9 isnan
  * 2.2.10 find
  * 2.2.11 disp
  * 2.2.12 fprintf
  * 2.2.13 sprintf
  * 2.2.14 eval
* 2.3 图形生成
  * 2.3.1 实例22：生成二维折线图
  * 2.3.2 实例23：生成矢量图
  * 2.3.3 实例24：多图叠加生成
  * 2.3.4 实例25：生成柱状图与累计柱状图
  * 2.3.5 实例26：生成直方图
  * 2.3.6 实例27：插入子图与文字
  * 2.3.7 实例28：插入特殊文字与符号
* 2.4 全局变量与局部变量的定义
* 2.5 分支结构语句
  * 2.5.1 判断结构 if else及其用法
  * 2.5.2 选择结构 switch case及其用法
  * 2.5.3 for循环结构及其用法
  * 2.5.4 while循环结构及其用法
  * 2.5.5 break、continue、return和exit的比较
  * 2.5.6 巧用异常捕捉try catch结构
* 2.6 工程中脚本调用的优先次序
 
第3章数据处理
* 3.1 基本文件操作函数介绍
* 3.2 实例29：用importdata函数与textscan函数对txt文件读写
* 3.3 实例30：excel文件读写
* 3.4 实例31：csv文件读写
* 3.5 实例32：mat文件读写
* 3.6 实例33：图形的存储、读取与图形中的数据提取
* 3.7 与Oracle数据库交互
  * 3.7.1 Windows系统下的MATLAB与Oracle交互环境配置方法
  * 3.7.2 Linux系统下的MATLAB与Oracle交互环境配置方法
  * 3.7.3 实例34：建立数据库连接
  * 3.7.4 实例35：数据查询、插入与修改
  * 3.7.5 实例36：万能的exec函数
 
第4章量化分析中的常用类
* 4.1 类的基本概念
  * 4.1.1 实例37：利用关键词定义类
  * 4.1.2 实例38：运算符的重载
* 4.2 table类
  * 4.2.1 实例39：创建table类数据
  * 4.2.2 实例40：table类与结构体相互转换
  * 4.2.3 实例41：table类与cell相互转换
  * 4.2.4 实例42：table类与数值矩阵相互转换
  * 4.2.5 实例43：用varfun函数对table数据做分组运算
* 4.3 dataset类
  * 4.3.1 实例44：创建dataset类数据
  * 4.3.2 实例45：数值矩阵、cell、结构体和table类数据转换为dataset类
  * 4.3.3 实例46：利用datasetfun函数做变量运算
  * 4.3.4 实例47：dataset的水平和垂直拼接
  * 4.3.5 实例48：用repalcedata函数做dataset数据替换
  * 4.3.6 实例49：用replaceWithMissing函数做缺失数据替换
  * 4.3.7 实例50：ismemeber函数
  * 4.3.8 实例51：用join函数实现dataset合并
  * 4.3.9 将dataset存储为文件
* 4.4 线性回归 LinearModel 类
  * 4.4.1 常用类函数概述
  * 4.4.2 实例52：线性回归工作流程
 
第5章 MATLAB与Python交互编程
* 5.1 MATLAB调用Python
  * 5.1.1 推荐Python程序软件Anaconda
  * 5.1.2 如何在MATLAB中配置Python环境
  * 5.1.3 实例53：py类与模块的调用
 * 5.1.4 实例54：py.list、py.tuple和py.dict生成方法
  * 5.1.5 MATLAB数据类型转换为Python数据类型
  * 5.1.6 Python数据类型转换为MATLAB数据类型
  * 5.1.7 实例55：MATLAB中使用py.list
  * 5.1.8 实例56：MATLAB中使用py.tuple
  * 5.1.9 实例57：MATLAB中使用py.dict
  * 5.1.10 实例58：MATLAB中调用Python脚本
  * 5.1.11 实例59：获取Tushare开源数据
* 5.2 Python调用MATLAB
  * 5.2.1 MATLAB Engine的安装
  * 5.2.2 实例60：使用MATLAB Engine调用MATLAB函数
  * 5.2.3 MATLAB Engine传入数据类型转换
  * 5.2.4 实例61：调用自定义MATLAB脚本
 
 
**量化投资模型篇**
 
第6章量化投资分析模型
* 6.1 日期和时间函数
  * 6.1.1 常用日和时间函数概述
  * 6.1.2 工作日函数概述
* 6.2 技术指标函数
* 6.3 投资分析
  * 6.3.1 常用现金流与收益率计算函数
  * 6.3.2 常用摊销与折旧函数
  * 6.3.3 常用资金时间价值计算函数
  * 6.3.4 常用年金计算函数
  * 6.3.5 实例62：有无数据缺失两种情况下多元正态线性回归方法
  * 6.3.6 常用金融数据转换函数
  * 6.3.7 实例63：tick2ret函数与price2ret函数比较
  * 6.3.8 常用投资策略评价函数
  * 6.3.9 实例64：索提诺比率实例
  * 6.3.10 常用金融绘图函数
  * 6.3.11 实例65：时间连续与间断两种情况下的蜡烛图绘制
  * 6.3.12 实例66：两种价格与成交量图的绘制
* 6.4 经典方差模型在A股市场的应用
  * 6.4.1 实例67：均值-方差模型
  * 6.4.2 实例68：CVaR模型
  * 6.4.3 实例69：均值-绝对偏差模型
* 6.5 SDE模型概述
  * 6.5.1 SDE模型的构建
  * 6.5.2 实例70：SDE模型对NASDAQ数据的回归预测
 
第7章统计与机器学习模型
* 7.1 常用统计函数
* 7.2 假设检验
  * 7.2.1 正态分布均值假设检验的实现方法
  * 7.2.2 正态分布方差假设检验的实现方法
* 7.3 回归拟合
  * 7.3.1 实例71：线性回归方法
  * 7.3.2 实例72：三种常见多元线性回归共线性诊断方法的实现
  * 7.3.3 多项式拟合方法中的标准化处理
  * 7.3.4 实例73：非线性回归实现方法
* 7.4 方差分析
  * 7.4.1 实例74：单因素方差分析实现方法
  * 7.4.2 实例75：双因素方差分析实现方法
  * 7.4.3 实例76：多因素方差分析实现方法
* 7.5 聚类分析
  * 7.5.1 实例77:k-means与k-medoids算法应用
  * 7.5.2 实例78:混合高斯模型应用
* 7.6 分类分析
  * 7.6.1 实例79:决策树应用
  * 7.6.2 实例80:逻辑回归原理与实现
  * 7.6.3 实例81:KNN近邻算法应用
  * 7.6.4 实例82:SVM支持向量机应用
* 7.7 数据降维
  * 7.7.1 主成分分析
  * 7.7.2 实例83:理解主成分分析的原理与输出结果
 
第8章经典计量经济学模型
* 8.1 条件均值模型
  * 8.1.1 实例84:ARIMA模型公式与建立方法
  * 8.1.2 模型参数估计
  * 8.1.3 方差推断
  * 8.1.4 实例85:ARIMA模型对NASDAQ数据的拟合
  * 8.1.5 实例86:AR模型公式与建立方法
  * 8.1.6 实例87:MA模型公式与建立方法
  * 8.1.7 实例88:ARMA模型公式与建立方法
  * 8.1.8 实例89:ARIMAX模型公式与建立方法
  * 8.1.9 实例90:残差为ARIMA的线性回归模型公式与建立方法
* 8.2 条件方差模型
  * 8.2.1 实例91:GARCH模型公式与建立方法
  * 8.2.2 实例92:EGARCH模型公式与建立方法
  * 8.2.3 实例93:GJR模型公式与建立方法
  * 8.2.4 实例94:条件方差模型对NASDAQ数据的预测应用
* 8.3 时间序列平稳性与单位根检验
  * 8.3.1 实例95:NASDAQ数据的ADF检验应用
  * 8.3.2 实例96:NASDAQ数据的KPSS检验应用
  * 8.3.3 实例97:NASDAQ数据的PP检验应用
  * 8.3.4 adftest、kpsstest和pptest函数返回结果比较
* 8.4 实例98:中证500指数量价关系的granger因果关系检验
 
**程序性能提升篇**

第9章 CPU并行计算
* 9.1 基本原理介绍
* 9.2 并行计算parfor 循环初探
  * 9.2.1 parfor循环的使用
  * 9.2.2 实例99:多种工况下parfor与for性能对比分析
* 9.3 parfor 循环中变量类型解释
* 9.4 parfor循环中的限制
  * 9.4.1 禁止使用交互输入
  * 9.4.2 禁止图形输出
  * 9.4.3 实例100:巧用feval函数传入函数句柄
  * 9.4.4 parfor中的常见受限变量与函数
  * 9.4.5 实例101:巧用自定义函数调用受限函数
  * 9.4.6 parfor循环中含for循环的四种限制情况
* 9.5 计算机集群上的并行计算
  * 9.5.1 mdce服务介绍
  * 9.5.2 Windows系统下的mdce服务配置方法
  * 9.5.3 Linux系统下的mdce服务配置方法
  * 9.5.4 实例102:计算机集群上配置并行计算
 
第10章 GPU并行计算
* 10.1 基本原理介绍
* 10.2 GPU相关类与函数表
* 10.3 实例103:GPU调用流程
* 10.4 运行MATLAB函数
  * 10.4.1 运行内置函数
  * 10.4.2 实例104:利用arrayfun运行自定义函数
  * 10.4.3 实例105:运行自定义kernel函数方法
 
第11章报告生成器
* 11.1 生成HTML格式报告
* 11.2 熟悉界面
* 11.3 逐步加入报告元素
  * 11.3.1 创建标题
  * 11.3.2 增加章节和分章
  * 11.3.3 增加段落
  * 11.3.4 插入MATLAB代码
  * 11.3.5 插入图片
  * 11.3.6 插入变量
  * 11.3.7 使用逻辑分支语句增加新的章节
* 11.4 最终报告生成
 
 
**量化投资实战篇**
 
第12章经典股票量化策略初探
* 12.1 市场失效——简单的均线策略
  * 12.1.1 策略主逻辑
  * 12.1.2 并行计算对程序效率的提升
  * 12.1.3 完善策略逻辑细节
  * 12.1.4 参数与模型优化思路扩展
* 12.2 规模效应——神奇的小市值策略
  * 12.2.1 策略主逻辑
  * 12.2.2 splitapply函数在股票分组的使用
  * 12.2.3 警惕未来函数的使用
 
第13章经典期货策略初探
* 13.1 替代效应——豆粕和菜粕的价差套利
  * 13.1.1 用regexp函数与cellfun函数快速处理新浪网页接口数据
  * 13.1.2 探究统计规律背后的经济原理
  * 13.1.3 把握主要矛盾——构建统计套利策略
  * 13.1.4 期货策略中的几点注意事项
* 13.2 趋势追踪——海龟交易法则
  * 13.2.1 基本概念
  * 13.2.2 名义资产非实际资产
  * 13.2.3 海龟交易法则1：短周期系统
  * 13.2.4 海龟交易法则2：长周期
  * 13.2.5 海龟交易法则的实现
  * 13.2.6 投资组合一:品种独立风险再投资
  * 13.2.7 投资组合二:品种等风险再投资
  * 13.2.8 风险与收益的匹配性探讨
  * 13.2.9 进一步完善海龟交易法则
