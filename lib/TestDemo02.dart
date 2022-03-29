import 'package:flutter/material.dart';

void main() => runApp(const TextAppBar());

class TextAppBar extends StatelessWidget {
  const TextAppBar({Key? key}) : super(key: key);
  static const a = 0;

  void onClick() {
    print('123');
  }
   void click(){
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   primarySwatch: Colors.amber,
      // ),
      home: Scaffold(
          appBar: AppBar(
              title: const Text('category'),
              titleTextStyle: const TextStyle(
                fontSize: 20.0,
              )),
          body: const TextBody()),
    );
  }
}

class TextBody extends StatelessWidget {
  const TextBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            SizedBox(
              height: 100.0,
              child: ListView(
                children: const <Widget>[
                  ListTile(
                    leading: Icon(Icons.list),
                    title: Text('蔬菜'),
                    tileColor: Colors.green,
                  ),
                  ListTile(
                    leading: Icon(Icons.list),
                    title: Text('菠菜'),
                    tileColor: Colors.blue,
                  ),
                  ListTile(
                    leading: Icon(Icons.list),
                    title: Text('菠菜'),
                    tileColor: Colors.black,
                  ),
                  ListTile(
                    leading: Icon(Icons.list),
                    title: Text('菠菜'),
                    tileColor: Colors.amber,
                  ),
                ],
              ),
            ),
            Container(
                color: Colors.green,
                child: Container(
                    height: 300,
                    color: Colors.white,
                    margin: const EdgeInsets.all(50),
                    child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return click(index);
                        }))),
            Row(
              children: <Widget>[
                Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.blue,
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.black,
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.deepOrange,
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.yellowAccent,
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.black26,
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  color: Colors.pink,
                ),
                Container(
                  width: 50.0,
                  // height: 50.0,
                  color: Colors.grey,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 50.0,
                  height: 50.0,
                  color: Colors.deepPurpleAccent,
                  child: Container(
                    width: 25.0,
                    height: 25.0,
                    color: Colors.black26,
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  Widget click(int index) {
    return Container(
      color: Colors.grey,
      padding: const EdgeInsets.all(10.0),
      child: Text(
        '第 $index 行',
        style: const TextStyle(
          fontSize: 15.0,
          color: Colors.black
        ),
      ),
    );
  }
}
