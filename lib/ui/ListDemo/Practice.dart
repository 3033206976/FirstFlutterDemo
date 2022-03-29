import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:untitled1/ui/ListDemo/SecondPage.dart';

void main() => runApp(MaterialApp(
      home: Exercise(),
    ));

class Exercise extends StatelessWidget {
  List list = ["黑龙江", "北京", '山东', '广州', '江西', '江苏', '浙江', '吉林', '辽宁'];

  // String str = '[{”name“:"Jack"},{"name":"Rose"}]' ;

  @override
  Widget build(BuildContext context) {
    // var jsonData=json.decode(str);
    // print(str.toString());
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                leading: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                title: const Text(
                  '使用ListView',
                  style: TextStyle(fontSize: 15.0, color: Colors.black),
                )),
            body: Column(children: <Widget>[
              Container(
                color: Colors.white54,
                height: 280.0,
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      child: const ListTile(
                          leading: Icon(Icons.add_shopping_cart),
                          trailing: Icon(
                            Icons.heart_broken,
                            color: Colors.blue,
                          ),
                          title: Text(
                            '购物车',
                          )),
                    ),
                    const ListTile(
                        leading: Icon(Icons.print),
                        title: Text(
                          '打印机',
                        )),
                    const ListTile(
                        leading: Icon(Icons.add),
                        title: Text(
                          '添加',
                        )),
                    const ListTile(
                        leading: Icon(Icons.clear),
                        title: Text(
                          '删除',
                        )),
                    const ListTile(
                        leading: Icon(Icons.list),
                        title: Text(
                          '列表',
                        )),
                  ],
                ),
              ),
              Container(
                color: Colors.white70,
                alignment: Alignment.center,
                width: double.infinity,
                child: const Text(
                  '自定义列表',
                  style:
                      TextStyle(fontSize: 15.0, color: Colors.deepPurpleAccent),
                  textAlign: TextAlign.left,
                ),
              ),
              Column(children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.white54,
                  width: 500.0,
                  height: 300.0,
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(150),
                              child: const Image(
                                image: NetworkImage(
                                    'https://i04piccdn.sogoucdn.com/5d6adcaa6ed88200'),
                                width: 200.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                                color: Colors.yellow,
                                width: 150.0,
                                height: 200.0,
                                padding: const EdgeInsets.all(15),
                                alignment: Alignment.topLeft,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      margin: const EdgeInsets.all(20.0),
                                      child: const Text(
                                        '姓名:  小小张飞 ',
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                          ],
                        );
                      }),
                ),
                IconButton(
                    icon: const Icon(Icons.map),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return SecondPage();
                        }),
                      );
                    })
              ])
            ])));
  }
}

class B extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
      children: <Widget>[
        Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.topLeft,
                    width: double.infinity,
                    child: Row(
                      children: <Widget>[],
                    ),
                  );
                }))
      ],
    )));
  }
}
