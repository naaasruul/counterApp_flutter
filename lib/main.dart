import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _number = 0;
  var _message = '';

  void increment(){
    setState(() {
      if(_number >= 0){
        _message = '';
        _number++;
      }else{
        _message = 'number cannot be negative!';
      }

    });
  }

  void decrement(){
    setState(() {
      if(_number > 0){
        _message = '';
        _number--;
      }else{
        _message = 'number cannot be negative!';
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Numbers',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Counter',
                style: TextStyle(fontSize: 70.0),
              ),
              Text('$_message'),
              Text(
                '$_number',
                style: TextStyle(
                  fontSize: 60.0,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      increment();
                    },
                    child: Text('Increment'),
                  ),
                  ElevatedButton(onPressed: () {
                    decrement();
                  }, child: Text('Decrement'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
