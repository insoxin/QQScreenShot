运行Init.bat创建桌面快捷方式(或者主程序是Bin\QQScreenShot.exe, 自己手动运行)
单击托盘图标, 或默认使用快捷键Ctrl+Alt+A截图


功能:
1. 滚轮音量功能开启后, 鼠标放到任务栏最下面可以通过滚动鼠标中键控制系统总音量大小 (win7/win10下测试可用)

2. 默认不再使用PaddleOCR, 如有需要, 请自行下载并解压,
下载链接:
链接：https://pan.baidu.com/s/1yENiFF3KDdZTDfqig6X98A 
提取码：oa7c

3. 修改默认截图文件名为ScreenShot日期

下载ocr_system.zip后解压到 Bin\ocr_system 文件夹下, 然后 右键托盘图标 -> 切换OCR引擎 -> 选择PaddleOCR -> 确定 即可



---------

更新事项(v2.4.1):

1.修复了获取PaddleOCR结果长度为0时构造字符串导致崩溃


----------

更新事项(v2.4):

1. 新增"切换OCR引擎"功能 (可以使用QQ自带的OCR识别啦!, 逆向的时候发现其实是可以本地调用QQ的OCR的)
2. "切换热键"功能改成了选择组合键的方式
3. 消息提醒不再使用托盘气泡, 全面改成用QQ的dll中的ShowResultTipsWin函数实现
4. PaddleOCR改成了线程中获取OCR结果, 不会再有卡顿了(PaddleOCR默认不再集成, 请查看第0x3节在网盘里自行下载并解压)

--------------

更新事项(v2.3):

1. 修复百度识图问题 (百度识图不再接受HTTP的POST请求, 修复为用libcurl发送HTTPS的POST请求)
2. 点击OCR按钮后不再需要手动关闭截图
3. 增加"切换热键"功能, 共Ctrl+Alt+A/Ctrl+Q/Ctrl+Shift+A三种热键
4. 增加"滚轮音量"功能, 可以通过在任务栏底部滑动鼠标滚轮来控制系统音量大小

--------------