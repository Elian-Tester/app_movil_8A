import 'dart:ffi';
import 'dart:math';

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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const MyHomePage(title: 'Nav Bar'),
      home: const firstClass(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class firstClass extends StatelessWidget {
  const firstClass({Key? key}) : super(key: key);
  final width = 50.0;
  final height = 100.0;
  final aligment = Alignment.center;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text('titulo'),
      ),
      body: PageView(
        children: [vista1(), vista2(), vista3()],
      ),
    ));
  }

  Widget vista1() {
    return Container(
      color: Colors.black12,
      height: double.infinity,
      width: double.infinity,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [cuboAbc('A'), cuboAbc('B')],
        ),
        centroListView(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [cuboAbc('C'), cuboAbc('D')],
        )
      ]),
    );
  }

  Widget cuboAbc(tipo) {
    Widget abc = Text('Nada');

    const heightABC = 70.0;
    const widthABC = 70.0;

    if (tipo == 'A') {
      abc = Container(
        height: heightABC,
        width: heightABC,
        color: Colors.red,
        child: Center(
          child: Text('A'),
        ),
      );
    }
    if (tipo == 'B') {
      abc = Container(
        height: heightABC,
        width: heightABC,
        color: Colors.green,
        child: Center(
          child: Text('B'),
        ),
      );
    }
    if (tipo == 'C') {
      abc = Container(
        height: heightABC,
        width: heightABC,
        color: Colors.amber,
        child: Center(
          child: Text('C'),
        ),
      );
    }
    if (tipo == 'D') {
      abc = Container(
        height: heightABC,
        width: heightABC,
        color: Colors.brown,
        child: Center(
          child: Text('D'),
        ),
      );
    }

    return abc;
  }

  Widget centroListView() {
    return Container(
      height: 300.0,
      width: double.infinity,
      child: listaViewContainer(),
    );
  }

  Widget listaViewContainer() {
    return ListView(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: abcCompletoContainer());
  }

  Widget vista2() {
    return Container(
      color: Colors.lightBlue,
      height: double.infinity,
      width: double.infinity,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [cuboAbc('D')],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [cuboAbc('A'), cuboAbc('C')],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [cuboAbc('B')],
        )
      ]),
    );
  }

  Widget vista3() {
    return Center(
      child: Container(
          height: double.infinity,
          width: 250.0,
          color: Colors.teal,
          child: ListView(
            children: abcCompleto(),
          )),
    );
  }

  List<Widget> abcCompleto() {
    const abc_array = [
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H',
      'I',
      'J',
      'K',
      'L',
      'M',
      'N',
      'Ñ',
      'O',
      'P',
      'Q',
      'R',
      'S',
      'T',
      'V',
      'X',
      'Y',
      'Z'
    ];

    List<Widget> listaTextAbc = [];

    for (var abc in abc_array) {
      final avat = CircleAvatar(
        backgroundColor: Colors.black,
        child: Text(
          abc,
          style: TextStyle(color: Colors.white),
        ),
      );

      listaTextAbc
        ..add(avat)
        ..add(Divider());
    }
    return listaTextAbc;
  }
}

List<Widget> abcCompletoContainer() {
  const abc_array = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'Ñ',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'V',
    'X',
    'Y',
    'Z'
  ];

  List<Widget> listaTextAbc = [];

  var colores = [
    Colors.brown,
    Colors.green,
    Colors.yellow,
    Colors.blue,
    Colors.red
  ];

  for (var abc in abc_array) {
    Random random = new Random();
    int randomNumber = random.nextInt(5);
    Color color = colores[randomNumber];

    final avat = Container(
      alignment: Alignment.center,
      width: 50.0,
      height: 100.0,
      color: color,
      child: Text(
        abc,
      ),
    );

    listaTextAbc.add(avat);
    //..add(Divider());
  }
  return listaTextAbc;
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Combo x:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
