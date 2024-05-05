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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const ExampleBottomNavigationBar(),
    );
  }
}
class ExampleBottomNavigationBar extends StatefulWidget {
  const ExampleBottomNavigationBar({super.key});
  @override
  State<ExampleBottomNavigationBar> createState() => _ExampleBottomNavigationBarState();
}
class _ExampleBottomNavigationBarState extends State<ExampleBottomNavigationBar> {
  int _indexForBottomNavigationBar=2;
  List<Widget> pages=[
     Container(color:Colors.green,height: 400,width: 500,child: const Center(child: Text("Add plant"),),),
    Container(color:Colors.yellow,height: 400,width: 500,child: const Center(child: Text("Delete plant"),),),
    Container(color:Colors.pink,height: 400,width: 500,child: const Center(child: Text("Update plant"),),),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(child: pages[_indexForBottomNavigationBar],),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 21,
        iconSize: 40,
        unselectedFontSize:15,
        selectedItemColor: Colors.lime,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.pink[100],
        showUnselectedLabels: false,
        currentIndex: _indexForBottomNavigationBar,
        onTap: (index){
          setState(() {
            _indexForBottomNavigationBar=index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: "Add plant"),
          BottomNavigationBarItem(icon: Icon(Icons.remove_circle), label: "Delete plant"),
          BottomNavigationBarItem(icon: Icon(Icons.update_rounded), label: "Update plant"),
        ],
      ),
    );
  }
}
