import 'package:facebookclone/Tabs/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Facebook clone',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('facebook',
            style: TextStyle(
              fontSize: 25.0,
             fontWeight: FontWeight.bold,
              color: Colors.blue
           ),),
          actions: <Widget>[
            IconButton(onPressed: (){},
                icon: Icon(Icons.search),
                color: Colors.black,
            ),
            IconButton(onPressed: (){},
                icon: Icon(Icons.message),
              color: Colors.black,
            ),
          ],

          //tabs
          bottom: const TabBar(

            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.blue,
            labelColor: Colors.blue,
            tabs: [
              Tab(icon: Icon(Icons.home),),
              Tab(icon: Icon(Icons.group),),
              Tab(icon: Icon(Icons.ondemand_video),),
              Tab(icon: Icon(Icons.notifications_none),),
              Tab(icon: Icon(Icons.menu),),
            ],
          ) ,





        ),

        body: TabBarView(
          children: <Widget>[
            HomeScreen(),
            Icon(Icons.group),
            Icon(Icons.ondemand_video),
            Icon(Icons.notifications_none),
            Icon(Icons.menu),
          ],
        ),
      ),
    );
  }
}
