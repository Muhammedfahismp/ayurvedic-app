import 'package:ayurvadic_app/loginpage.dart';
import 'package:flutter/material.dart';

class Demopage extends StatefulWidget {
  const Demopage({super.key});

  @override
  State<Demopage> createState() => _DemopageState();
}

class _DemopageState extends State<Demopage> {



void initState(){
  super.initState();
  navigatetologin();
}



navigatetologin() async {

  await Future.delayed(Duration(seconds: 2));
  Navigator.push(context,MaterialPageRoute(builder:(context) => const Loginpage(),));
}




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/iPhone 13 & 14 - 1.png"),
                fit: BoxFit.cover)),
      ),
    );
  }
}
