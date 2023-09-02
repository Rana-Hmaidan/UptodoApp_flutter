import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Quiz App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff50924E)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner:false,
      home: const MyStatefulWidgetPage(title: 'Counter Page Demo',),
    );
  }
}

class HomePage extends StatelessWidget{

  final String title;

  const HomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[ 
              const Text('Hello World!'),
              const Text('Flutter Course!'),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children:[
                  Icon(Icons.shopping_cart),
                  Text('Shop Now'),
                ]
              ),
              Container( 
                height: 20,
                width: 50,
                color: Colors.blueGrey,
                alignment: Alignment.center,
                child: const Text('Containers!',
                ),
              ),
              ], 
          ),
        ),
      );
  }
}


class MyStatefulWidgetPage extends StatefulWidget {

  final String title;

  const MyStatefulWidgetPage({super.key, required this.title});

  @override
  State<MyStatefulWidgetPage> createState() => _MyStatefulWidgetPageState();
  
}

class _MyStatefulWidgetPageState extends State<MyStatefulWidgetPage>{

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
        title:Text(widget.title),
        backgroundColor:Theme.of(context).colorScheme.inversePrimary,
        leading: const Icon(Icons.add, color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            const Text('You have pushed the button this many times:'),
            Text('$_counter',style: Theme.of(context).textTheme.headlineMedium,),
          ],
        ),
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip:'Increment',
        child:const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}