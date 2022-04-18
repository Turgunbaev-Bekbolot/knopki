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
      theme: ThemeData(),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Container(
            width: 79,
            height: 79,
            decoration: BoxDecoration(
              color: Color(0xffF24242),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Icon(
              Icons.favorite_outline,
              size: 41,
            ),
          ),
          foregroundColor: Colors.black,
          backgroundColor: Colors.red,
          onPressed: () {
            print('kak ty');
          },
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Home work'),
          leading: Icon(Icons.backspace_outlined),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'I  ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      'Love',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    )
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  print('hello');
                },
                child: Text(
                  'ITC BOOTCAMP',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffBB6BD9),
                  minimumSize: Size(
                    335,
                    40,
                  ),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {
                  print('salam');
                },
                child: Text(
                  'Dastan',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(143, 24),
                  // side: BorderSide(
                  //   width: 8,
                  //   color: Colors.white,
                  // ),
                ),
                onPressed: () {
                  print('hello world');
                },
                child: Text(
                  'DASTAN',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 11,
                  ),
                ),
              ),
              IconButton(
                color: Colors.red,
                iconSize: 69,
                onPressed: () {
                  print('salambro');
                },
                icon: Icon(Icons.favorite_outline),
              ),
              MyStatefulWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'Dastan';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 19,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.black,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>[
        'Dastan',
        'Красивый',
        'Умный',
        'Харизматичный',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
