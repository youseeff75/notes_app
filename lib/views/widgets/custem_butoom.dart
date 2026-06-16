import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constans.dart';

class CustemButtom extends StatelessWidget {
  const CustemButtom({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text('Add',style: TextStyle(
            color:Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),),
        ),
      ),
    );
  }
}