import 'package:binary_clock/widgets/TickerBuilder.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Binary Clock'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(child: Text('header')),
            Expanded(child: ListView.builder(
              itemBuilder: (context, index) {
                return const ListTile(
                    leading: Icon(Icons.favorite), title: Text('a'));
              },
            ))
          ],
        ),
      ),
      body: const Center(
        child: TickerBuilder(),
      ),
    );
  }
}
