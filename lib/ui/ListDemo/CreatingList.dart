

import 'package:flutter/material.dart';

void main() => runApp( _CreatingList());

// class CreatingList extends StatefulWidget{
//
//   @override
//   CreatingList createState()  => CreatingList();
//
//
//
// }

class _CreatingList extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => CreatingList();

}

class CreatingList extends State<_CreatingList>{

  @override
  void initState() {
    super.initState();
    print('你説啥');
  }

  @override
  Widget build(BuildContext context) {
    return Text('111');
  }


    // return SizedBox(
    //   width: double.infinity,
    //   child: Column(
    //     children:  <Widget>[
    //       Row(
    //         children: <Widget>[
    //           Container(
    //             color: Colors.pink,
    //             padding: const EdgeInsets.all(10.0),
    //             child: const Text('你说啥',
    //               style: TextStyle(
    //                   color: Colors.white
    //               ),),
    //           ),
    //           Container(
    //             color: Colors.pink,
    //             margin: const EdgeInsets.only(left: 10.0),
    //             padding: const EdgeInsets.all(10.0),
    //             child: const Text('你说啥',
    //               style: TextStyle(
    //                   color: Colors.white
    //               ),),
    //           ),
    //
    //         ],
    //       ),
    //       Container(
    //         width: double.infinity,
    //         child: Row(
    //           children: <Widget>[
    //             //单选开关
    //             const Text('单选开关',
    //               style: TextStyle(
    //                 fontSize: 15.0,
    //               ),),
    //             //复选框
    //             Switch(value: true, onChanged: (value){
    //               print('复选框按钮');
    //             }),
    //             const Text('单选开关',
    //               style: TextStyle(
    //                 fontSize: 15.0,
    //               ),),
    //           ],
    //         ),
    //       ),
    //       Container(
    //         width: double.infinity,
    //         color: Colors.pink,
    //         child: Row(
    //           children: <Widget>[
    //             Container(
    //                 padding: EdgeInsets.all(10.0),
    //                 color: Colors.blue,
    //                 child: const Text(
    //                     '你瞅啥呀，瞅你咋的'
    //                 )
    //             ),
    //             Container(
    //                 margin: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
    //                 color: Colors.white,
    //                 padding: const EdgeInsets.all(10.0),
    //                 child: const Text(
    //                     '张三李四'
    //                 )
    //             ),
    //             Container(
    //               padding: const EdgeInsets.all(10.0),
    //               color: Colors.yellowAccent,
    //               child: const Text(
    //                   '王二'
    //               ),
    //             )
    //           ],
    //         ),
    //       ),
    //       Container(
    //         width: double.infinity,
    //         color: Colors.yellow,
    //         child: Text(
    //             '小脚popu'
    //         ),
    //       ),
    //       Container(
    //           width: double.infinity,
    //           child: const TextField(
    //             autofocus: true,
    //             decoration: InputDecoration(
    //               labelText: '账号',
    //               labelStyle: TextStyle(
    //                   fontSize: 15.0,
    //                   color: Colors.blue
    //               ),
    //               icon: Icon(Icons.person),
    //               hintText: '请输入账号或者邮箱',
    //               hintStyle: TextStyle(
    //                 fontSize: 12.0,
    //                 color: Colors.blue,
    //               ),
    //             ),
    //             textInputAction: TextInputAction.unspecified,
    //           )
    //       )
    //     ],
    //   ),
    // );

}

