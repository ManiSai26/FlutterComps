import 'package:flutter/material.dart';
import 'Widgets/widgets.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Components',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Comps'),
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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return  const Scaffold(
      body: CustomScrollView(
        slivers: [
           SliverAppBar(
            title: Text(
              'Flutter Comps',
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'Poppins', //TODO: change font to poppins,
              ),
            ),
             pinned: true,
          ),
          SliverToBoxAdapter(child: PreviewBox(index: 0)),
          SliverToBoxAdapter(child: PreviewBox(index: 1)),
          SliverToBoxAdapter(child: PreviewBox(index: 2)),
          SliverToBoxAdapter(child: PreviewBox(index: 3)),
        ],
      ),
    );
  }
}
