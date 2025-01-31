import 'package:flutter/material.dart';
import 'package:siswa_app/view/history_view.dart';
import 'package:siswa_app/view/home_view.dart';
import 'package:siswa_app/view/profile_view.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );

  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final tabs = [
    const HistoryView(),
    const ProfileView(),
    const HomeView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: const Text("Icok uganda timur" , style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 255, 68),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() => _currentIndex = index) ;
      },
      items: const [
        BottomNavigationBarItem(
          icon : Icon(Icons.history,), 
          label: 'history',
          activeIcon:  Icon(Icons.history, 
          color: Colors.blue,)),

        BottomNavigationBarItem(
           icon : Icon(Icons.person,), 
          label: 'person',
          activeIcon:  Icon(Icons.person, 
          color: Color.fromARGB(255, 68, 164, 0),)),


        BottomNavigationBarItem(
          icon : Icon(Icons.home,),
          label: 'home',
          activeIcon:  Icon(Icons.home, 
          color: Color.fromARGB(255, 185, 108, 0),)),
          
      ],
      ),
    );
  }
}