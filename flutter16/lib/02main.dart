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
      home: const HomePage(),
    );
  }
}

//有状态组件:如果我们想改变页面中的数据的话这个时候就需要用到StatefulWidget
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _numCount = 0;
  @override
  Widget build(BuildContext context) {
    print(_numCount);
    return Scaffold(
      appBar: AppBar(title: const Text("flutter App")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$_numCount",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 60),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _numCount++;
                  });
                },
                child: const Text("增加"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _numCount++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
