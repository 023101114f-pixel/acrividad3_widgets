import 'package:flutter/material.dart';
import 'package:acrividad3_widgets/screens/home_screen.dart'; // Material app

void main() => runApp(const MyApp()); // primera llamada de la app

class MyApp extends StatelessWidget {
  // statelesswidget "clase dinamica"
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // hacer wrap del container
    return MaterialApp(
      debugShowCheckedModeBanner: false, // widget constante
      title: 'Libro de las Plantas',
      home: PlantsBook(),
    ); // MaterialApp
  }
}

class PlantsBook extends StatelessWidget {
  const PlantsBook({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber.shade300,
          title: Text(
            'Medicina Natural',
            style: TextStyle(color: const Color.fromARGB(255, 8, 8, 8)),
          ), // Text
          bottom: TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'), // Tab
              Tab(icon: Icon(Icons.question_mark), text: 'Question'), // Tab
              Tab(icon: Icon(Icons.people), text: 'People'), // Tab
              Tab(icon: Icon(Icons.info), text: 'Info'), // Tab
            ],
          ), // TabBar
        ), // AppBar
        body: TabBarView(children: [HomeScreen()]), // TabBarView
      ), // Scaffold
    ); // DefaultTabController
  }
}
