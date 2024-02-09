import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:chart_sparkline/chart_sparkline.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  static final Map<String, double> dataMap = {
    "Google": 5,
    "Facebook": 3,
    "LinkedIn": 2,
    "Email Marketing": 2,
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepOrange),
        useMaterial3: true,
        backgroundColor: Colors.white,
      ),
      home: const MyHomePage(title: 'Dashboard'),
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
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Sign ups in the last 7 days:\n',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        '7130',
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Revenue in the last 7 days:\n',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        '\$4200',
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: 300,
                height: 300,
                child: PieChart(
                  dataMap: MyApp.dataMap,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Visitors in the last 7 days:\n',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        '\4125',
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                  // Empty column for spacing
                  SizedBox(width: 50),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // Empty column
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              // Table
              Table(
                border: TableBorder.all(),
                children: [
                  TableRow(
                    children: [
                      TableCell(child: Center(child: Text(' Elève'))),
                      TableCell(child: Center(child: Text('Flutter'))),
                      TableCell(child: Center(child: Text('GIT'))),
                      TableCell(child: Center(child: Text('Design Pattern'))),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(child: Center(child: Text('Maxence'))),
                      TableCell(child: Center(child: Text('20'))),
                      TableCell(child: Center(child: Text('19'))),
                      TableCell(child: Center(child: Text('16'))),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(child: Center(child: Text('Vincent'))),
                      TableCell(child: Center(child: Text('20'))),
                      TableCell(child: Center(child: Text('18'))),
                      TableCell(child: Center(child: Text('15'))),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(child: Center(child: Text('Charline'))),
                      TableCell(child: Center(child: Text('20'))),
                      TableCell(child: Center(child: Text('17'))),
                      TableCell(child: Center(child: Text('14'))),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(child: Center(child: Text('Jules'))),
                      TableCell(child: Center(child: Text('20'))),
                      TableCell(child: Center(child: Text('18'))),
                      TableCell(child: Center(child: Text('15'))),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(child: Center(child: Text('Julien'))),
                      TableCell(child: Center(child: Text('20'))),
                      TableCell(child: Center(child: Text('18'))),
                      TableCell(child: Center(child: Text('16'))),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(child: Center(child: Text('Paul-Franck'))),
                      TableCell(child: Center(child: Text('12'))),
                      TableCell(child: Center(child: Text('15'))),
                      TableCell(child: Center(child: Text('12'))),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}
