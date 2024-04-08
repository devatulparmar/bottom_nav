

import 'package:bottom_nav/const.dart';
import 'package:flutter/material.dart';

class MySnackBar {
  mySnackBarFunction(message){
    ScaffoldMessenger.of(navigationGKey.currentContext!).showSnackBar(SnackBar(
      content: Text(message),
    ),
    );
  }

  myDialog(title, content, currentContext){
    showDialog(
      context: currentContext!,
      barrierDismissible: true,
      builder: (_) {
        return AlertDialog(
          content: Text('$content'),
          title: Text('$title'),
          actions: [
            TextButton(
              onPressed: () {
                navigationGKey.currentState!.pop();
                // navigationGKey.currentState!.push(route);
              },
              child: Text('Ok'),
            ),
            TextButton(
              onPressed: () {
                navigationGKey.currentState!.pop();
                // navigationGKey.currentState!.push(route);
              },
              child: Text('Cancel'),
            ),
          ],
          actionsAlignment: MainAxisAlignment.start,
        );
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('This is Dialog'),
          ),
        );
      },
    );
  }
}
