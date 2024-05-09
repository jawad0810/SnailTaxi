//  import 'package:flutter/material.dart';

// class ruffPage extends StatefulWidget {
//   const ruffPage({super.key});

//   @override
//   State<ruffPage> createState() => _ruffPageState();
// }

// class _ruffPageState extends State<ruffPage> {
//   @override
//   Widget build(BuildContext context) {
//     return
//      Scaffold(
//       body: Column(
//         children: [
//           Container(height: 50,width: 100,color: Colors.red,child: Text("data1"),),

//           Container(height: 50,width: 100,color: Colors.white,child: Text("data2"),),

//           Container(height: 50,width: 100,color: Colors.blue,child: Text("data3"),),
//         ],
//       ),

//      );
//   }
// }
//=========================

import 'package:flutter/material.dart';

class RuffPage extends StatefulWidget {
  const RuffPage({Key? key}) : super(key: key);

  @override
  State<RuffPage> createState() => _RuffPageState();
}

class _RuffPageState extends State<RuffPage> {
  bool isRedClicked = false;

  void toggleColor() {
    setState(() {
      isRedClicked = !isRedClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color text1Color = isRedClicked ? Colors.blue : Colors.white;
    Color text2Color = isRedClicked ? Colors.white : Colors.blue;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          GestureDetector(
            onTap: toggleColor,
            child: Container(
              height: 50,
              width: 100,
              color: Colors.red,
              child: Center(
                child: Text(
                  "data1",
                  style: TextStyle(color: text1Color),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 100,
            color: Colors.white,
            child: Center(
              child: Text(
                "data2",
                style: TextStyle(color: text2Color),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 100,
            color: Colors.blue,
            child: Center(
              child: Text(
                "data3",
                style: TextStyle(color: text2Color),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: RuffPage(),
  ));
}
