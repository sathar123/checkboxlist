

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var img = [
    'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Android_robot.svg/1745px-Android_robot.svg.png',
    'https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png',
    'https://www.apple.com/ac/structured-data/images/knowledge_graph_logo.png?202210310306',
    'https://www.php.net/images/meta-image.png',
    'https://miro.medium.com/max/800/1*bc9pmTiyKR0WNPka2w3e0Q.png'
  ];
  var text = [
    'Android',
    'Flutter',
    'iOS',
    'PHP',
    'Node'
  ];
  var check = [
    isCheck = false,
    isCheck = false,
    isCheck = false,
    isCheck = false,
    isCheck = false,

  ];

  static set isCheck(bool isCheck) {}
bool myCheck = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('CheckBox ListTile Demo',style: TextStyle(color: Colors.black),),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (ctx,int index){
        return Card(
          child: CheckboxListTile(
          activeColor: Colors.pink,
              secondary: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(img[index]),
              ),
              title: Text(text[index]),
              value: check[index], onChanged: (bool? value){
            setState(() {
             check[index] = value!;
            });
          }),
        );
      })


    );
  }
}
