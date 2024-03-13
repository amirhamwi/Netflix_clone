

import 'package:flutter/material.dart';

class ErrorText extends StatelessWidget {
  const ErrorText({
    super.key, required this.error, required this.onPressed,
  });
  final String error;
  final Function onPressed;


  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(error),
        TextButton(onPressed: (){
          onPressed();
        }, child: Text('Try again'))
      ],
    ),);
  }
}
