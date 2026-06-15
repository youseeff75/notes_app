import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24,bottom: 24,left: 15),
      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                'Build your Career with Yousef Ibrahim',
                style: TextStyle(color: Colors.black.withOpacity(.4),fontSize: 20),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, color: Colors.black,size: 30,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text('May21 ,2025', style: TextStyle(color: Colors.black.withOpacity(.4))),
          ),
        ],
      ),
    );
  }
}
