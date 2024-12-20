import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter App")),
        body: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //获取设备的宽度和高度
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        ListView(
          // padding: const EdgeInsets.only(top: 50),
          children: const [
            ListTile(title: Text("我是一个列表1")),
            ListTile(title: Text("我是一个列表2")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
            ListTile(title: Text("我是一个列表")),
          ],
        ),
        Positioned(
            left: 0,
            bottom: 0,
            width: size.width, //配置子元素的宽度和高度  没法使用double.infinity
            height: 44, //配置子元素的宽度和高度
            child: Container(
              alignment: Alignment.center,
              color: Colors.black,
              child: const Text(
                "二级导航",
                style: TextStyle(color: Colors.white),
              ),
            ))
      ],
    );
  }
}
