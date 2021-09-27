import 'package:flutter/material.dart';
import 'header.dart';
import 'categories.dart';
import 'hamburguers_list.dart';
import 'burguer_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.amber,
        cardColor: Colors.red,
        appBarTheme: AppBarTheme(color: Colors.amber, centerTitle: true),
        bottomAppBarColor: Colors.amber,
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.red),
      ),
      home: Hamburguer(),
      routes: {BurguerPage.tag: (_) => BurguerPage()},
      debugShowCheckedModeBanner: false,
    );
  }
}

class Hamburguer extends StatefulWidget {
  @override
  _HamburguerState createState() => _HamburguerState();
}

class _HamburguerState extends State<Hamburguer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text("Devuver Me"),
            leading: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {}),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                onPressed: () {},
              )
            ],
          ),
          Header(),
          Categories(),
          HamburguerList(1),
          HamburguerList(2),
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.home),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
        child: Container(
          color: Colors.black12,
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Row(
              children: [
                Spacer(),
                IconButton(
                  icon: Icon(Icons.add_alarm),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Spacer(),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.turned_in),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
