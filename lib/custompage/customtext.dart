import 'package:flutter/material.dart';

class Customtext extends StatelessWidget {
  
  const Customtext({super.key,required this.name,this.hintText,this.icon});

  final String name;
  final String? hintText;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),),
              hintText:  hintText,
            ),
            
            
          )
        ],
      ),
    );
  }
}