import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CutomErrorWidget extends StatelessWidget {
  const CutomErrorWidget({super.key, required this.errMessage});
  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        textAlign: TextAlign.center,//it center the text inside its center box use widget inspector to show it if it is not clear
        errMessage,
      style: Styles.textstyle18,),
    );
  }
}