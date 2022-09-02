import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '测试',
      //测试Container
      // home: Scaffold(
      //   appBar: AppBar(
      //      backgroundColor: Colors.brown,
      //      title: Text('你好',
      //      textAlign: TextAlign.center,
      //      style: TextStyle(
      //        color: Colors.black,
      //        fontSize: 15.0
      //      ),),
      //   ),
      //   body: Center(
      //     child: Container(
      //       width: 300,
      //       height: 300,
      //       decoration: BoxDecoration(
      //         color: Colors.red,
      //         border: new Border.all(
      //           color: Colors.green,
      //           width: 10.0,
      //         ),
      //         borderRadius: const BorderRadius.all(Radius.circular(5.0)),
      //       ),
      //       child: Text(
      //         '这是一个容器',
      //         textAlign: TextAlign.center,
      //         style: TextStyle(
      //           color: Colors.yellow,
      //           fontSize: 20.0
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      //测试Image
      // home: ImageDemo(),
      //测试Text
      // home: TextDemo(),
      //测试Icon
      // home: IconDemo(),
      //测试IconButton
      // home: IconButtonDemo(),
      //测试ButtonRaisedButton过期
      // home: RaisedButton1Demo(),
      //测试ListView
      // home: ListViewDemo(),
      //测试水平ListView
      home: HorizontalListViewDemo(),
    );
  }
}

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(
        'https://img2.baidu.com/it/u=2048195462,703560066&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=333',
        fit: BoxFit.none,
        width: 500,
        height: 500,
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('不同字体样式'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            '红色+黑色删除线+25号',
            style: TextStyle(
              color: Colors.red,
              fontSize: 25.0,
              decoration: TextDecoration.lineThrough,
              decorationColor: Color(0xff000000),
            ),
          ),
          Text(
            '橙色+下划线+24号',
            style: TextStyle(
              color: Color(0xffff9900),
              decoration: TextDecoration.underline,
              fontSize: 24.0,
            ),
          ),
          Text(
            '虚线+上划线+23号+倾斜',
            style: TextStyle(
              decoration: TextDecoration.overline,
              decorationStyle: TextDecorationStyle.dashed,
              fontSize: 23.0,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            '24号+加粗',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}

class IconDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon'),
      ),
      body: Icon(
        Icons.alarm,
        color: Colors.red,
        size: 50.0,
      ),
    );
  }
}

class IconButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IconButton'),
      ),
      body: Center(
        child: IconButton(
          icon: Icon(
            Icons.volume_up,
            size: 30.0,
            color: Colors.red,
          ),
          tooltip: '按下',
          disabledColor: Colors.blue,
          onPressed: () { print('===按下'); },
        ),
      ),
    );
  }
}

class RaisedButton1Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RaisedButton'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print('===点击');
          },
          child: Icon(Icons.phone),
        ),
      ),
    );
  }
}

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListViewDemo'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.alarm, size: 50.0,),
            title: Text('条目1',
              style: TextStyle(
                  color: Colors.green
              ),),
            subtitle: Text('条目描述1',
              style: TextStyle(
                  color: Colors.red
              ),),
            tileColor: Colors.yellow,
            selectedColor: Colors.blue,
            selected: true,
            onLongPress: () {
              print("===长按");
            },
          ),
          ListTile(
            leading: Icon(Icons.alarm, size: 50.0,),
            title: Text('条目1',
              style: TextStyle(
                  color: Colors.green
              ),),
            subtitle: Text('条目描述1',
              style: TextStyle(
                  color: Colors.red
              ),),
            tileColor: Colors.yellow,
          ),
          ListTile(
            leading: Icon(Icons.alarm, size: 50.0,),
            title: Text('条目1',
              style: TextStyle(
                  color: Colors.green
              ),),
            subtitle: Text('条目描述1',
              style: TextStyle(
                  color: Colors.red
              ),),
            tileColor: Colors.yellow,
          ),
          ListTile(
            leading: Icon(Icons.alarm, size: 50.0,),
            title: Text('条目1',
              style: TextStyle(
                  color: Colors.green
              ),),
            subtitle: Text('条目描述1',
              style: TextStyle(
                  color: Colors.red
              ),),
            tileColor: Colors.yellow,
          ),
          ListTile(
            leading: Icon(Icons.alarm, size: 50.0,),
            title: Text('条目1',
              style: TextStyle(
                  color: Colors.green
              ),),
            subtitle: Text('条目描述1',
              style: TextStyle(
                  color: Colors.red
              ),),
            tileColor: Colors.yellow,
          ),
        ],
      ),
    );
  }
}

class HorizontalListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 30.0),
        height: 200.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 100.0,
              color: Colors.red,
            ),
            Container(
              width: 100.0,
              color: Colors.yellow,
            ),
            Container(
              width: 100.0,
              color: Colors.blue,
              child: Column(
                children: <Widget>[
                  Text('文本',
                  textAlign: TextAlign.start,),
                  Icon(Icons.phone)
                ],
              ),
            ),
            Container(
              width: 100.0,
              color: Colors.brown,
            ),
            Container(
              width: 100.0,
              color: Colors.pinkAccent,
            ),
          ],
        ),
      ),
    );
  }

}
