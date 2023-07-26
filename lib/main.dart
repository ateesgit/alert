import 'package:alert/alert_ok_cancel.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alerts Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePageOkCancel(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert'),
          content: Text('This is an alert message.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alerts Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showAlert(context);
          },
          child: Text('Show Alert'),
        ),
      ),
    );
  }
}
