import 'package:flutter/material.dart';



class MyHomePageOkCancel extends StatelessWidget {
  Future<void> _showConfirmationAlert(BuildContext context) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirmation'),
          content: Text('Are you sure you want to perform this action?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true); // Return true if "OK" is pressed
              },
              child: Text('OK'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false); // Return false if "Cancel" is pressed
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );

    if (result == true) {
      // User confirmed
      print('Action confirmed');
    } else {
      // User canceled
      print('Action canceled');
    }
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
            _showConfirmationAlert(context);
          },
          child: Text('Show Confirmation Alert'),
        ),
      ),
    );
  }
}
