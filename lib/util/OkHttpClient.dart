import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(
      const MaterialApp(
        home: OhHttpClient(),
      ));
}

class OhHttpClient extends StatefulWidget {

  const OhHttpClient({Key? key}) : super(key: key);

  @override
  _OhHttpClient createState() => _OhHttpClient();

}

class _OhHttpClient extends State<OhHttpClient> {
  int _bottomNavigationItem = 0;
    bool visible=true ;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      bottomNavigationBar: _bottomNavigationBar(),
      body:containerList()[_bottomNavigationItem],
    );
  }

  List<Container> containerList() {
    return [ Container(
          color: Colors.deepPurple,
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.topLeft,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        visible=false;
                      });
                    },
                    child: const Text('开启',
                      style: TextStyle(
                          color: Colors.black
                      ),),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        visible=true;
                      });
                    },
                    child: const Text('关闭',
                      style: TextStyle(
                          color: Colors.black
                      ),),
                  ),
                ],
              ),

              Container(
                width: double.infinity,
                color: Colors.white54,
                child: Offstage(
                  offstage: visible,
                  child: const Text(
                    '点击已经显示',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.yellow
                    ),
                  ),
                ),
              ),
            ],
          )
      )
      ,
      Container(
        child: const Center(
          child: Text(
            '分类',
            style: TextStyle(
                color: Colors.black,
                fontSize: 25.0
            ),
          ),
        ),
      ),
      Container(
        child: const Center(
          child: Text(
            '我的',
            style: TextStyle(
                color: Colors.black,
                fontSize: 25.0
            ),
          ),
        ),
      ),
    ];
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.blue,
      title: const Text(
        '底部导航栏Demo',
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.black,
        ),
      ),
    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(

      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 15.0,
            ),
            label: '首页'
        ),
        BottomNavigationBarItem(icon: Icon(
          Icons.list,
          size: 15.0,
        ),
            label: '分类'
        ),
        BottomNavigationBarItem(icon: Icon(
          Icons.account_circle,
          size: 15.0,
        ),
            label: '我的'
        ),
      ],
      selectedItemColor: Colors.pink,
      currentIndex: _bottomNavigationItem,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _bottomNavigationItem = index;
        });
      },
    );
  }


  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }
}




