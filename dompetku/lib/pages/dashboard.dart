import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:dompetku/pages/home_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CalendarAppBar(
        onDateChanged: (value) => print(value),
        firstDate: DateTime.now().subtract(Duration(days: 140)),
        lastDate: DateTime.now(),
        locale: "id",
        backButton: false,
        accent: Colors.green,
      ),
      body: const HomePage(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.home,size: 35,)),
            const SizedBox(width: 20,),
            const SizedBox(width: 20,),
            IconButton(onPressed: (){}, icon: const Icon(Icons.settings,size: 35,)),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: (){},
      backgroundColor: Colors.lightBlue,
      child: const Icon(Icons.add)),
    );
  }
}
