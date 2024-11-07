import 'package:ayurvadic_app/homelist/homepage.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final loginkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: loginkey,
        child:SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/Frame 176.png"),
                          fit: BoxFit.cover)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            image: DecorationImage(
                                image: AssetImage("images/Asset 1 2.png"))),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Login Or Register To Book \nYour Appointments",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Email"),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty ||
                          !value.contains("gmail") ||
                          !value.contains(".") ||
                          !value.contains("com")) {
                        return "Invalid Email";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: "Enter Your Email"),
                  ),
                ),
            
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Password"),
                    ),
                  ],
                ),
            
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Wrong  Password";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        hintText: "Enter Password"),
                  ),
                ),
                
                SizedBox(
                  height: 40,
                ),
            
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          if (loginkey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Homepage(),
                                ));
                          }
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => Homepage(),
                          //     ));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(Colors.green)),
                      ),
                    )),
            
                // InkWell(
                //   onTap: () {
            
                //   },
                //   child: Container(
                //     height: 40,
                //     width: 350,
                //     decoration: BoxDecoration(
                //       color: Colors.green,
                //       borderRadius: BorderRadius.circular(15)
                //     ),
                //     child: Center(child: Text("Login",style: TextStyle(
                //       color: Colors.white
                //     ),)),
                //   ),
                // ),
            
                SizedBox(
                  height: 50,
                ),
                Text("By Creating Or Logging Into An account You Are Agreeing"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("With Our"),
                    InkWell(
                        onTap: () {},
                        child: Text(
                          "Terms And Condition",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        )),
                    Text("And"),
                    InkWell(
                        onTap: () {},
                        child: Text(
                          "privacy and policy",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ))
                  ],
                )
            
                //  RichText(text: TextSpan(children: [
                //   TextSpan(
                //     text: "By Creating Or Logging Into An account You Are Agreeing \n With our ",style: TextStyle(color: Colors.black)
                //   ),
            
                //   TextSpan(text: "Terms And Condition",style: TextStyle(
                //     color: Colors.blue,fontWeight: FontWeight.bold)),
            
                //   TextSpan(text: " And",style: TextStyle(color: Colors.black)),
            
                //   TextSpan(text: " Privacy Policy",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
                //  ],),),
            
                // TextButton(onPressed: (){
            
                // }, child: Text("By Creating Or Logging Into An account You Are Agreeing With our Terms And Condition And Privacy Policy"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
