import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Container'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Flutter Container..."),
      ),

      body: Padding(
        padding: const EdgeInsets.all(9.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 11),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        color: Color.fromARGB(255, 2, 2, 2),
                        margin: EdgeInsets.only(right: 11),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        color: Color.fromARGB(255, 15, 18, 226),
                        margin: EdgeInsets.only(right: 11),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        color: Color.fromARGB(255, 131, 24, 24),
                        margin: EdgeInsets.only(right: 11),
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        color: Color.fromARGB(255, 147, 248, 14),
                        margin: EdgeInsets.only(right: 11),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 200,
                color: Colors.orange,
                margin: EdgeInsets.only(bottom: 11),
              ),
              Container(
                height: 200,
                color: Colors.blue,
                margin: EdgeInsets.only(bottom: 11),
              ),
              Container(
                height: 200,
                color: Colors.pink,
                margin: EdgeInsets.only(bottom: 11),
              ),
              Container(
                height: 200,
                color: Colors.pink,
                margin: EdgeInsets.only(bottom: 11),
              ),
            ],
          ),
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
