TraceView 使用
1 在想要根据的代码片段之间使用以下两句代码
  Debug.startMethodTracing("xxx");
  Debug.stopMethodTracing();
2 添加SD卡访问权限（6.0动态申请）
  <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
  <uses-permission android:name="android.permission.MOUNT_UNMOUNT_FILESYSTEMS"/>
3 导出traceview文件
  xxx.trace文件在sdcard根目录
  $ adb pull sdcard/xxx.trace
4 打开trace文件
  $ traceview /Users/yonghe.shen/Desktop/my.trace
5 筛选我们的应用相关的分析
  find 输入包名，回车即可从上到下查看（DDMS中的find不好用）。