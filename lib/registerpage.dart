// ignore_for_file: non_constant_identifier_names

import 'package:ayurvadic_app/custompage/customtext.dart';
import 'package:flutter/material.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {

  void AlertBoX(){
  showDialog(context: context, builder: (BuildContext)
  {
  return AlertDialog(
    
     content: Container(
      
          height: 300,
          width: 550,
          decoration: const BoxDecoration(
            color: Colors.white
          ),

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  const Text("Choose Treatment"),
                 Container(
                  height: 45,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black)
                  ),
                   child: DropdownButton(
                    borderRadius: BorderRadius.circular(10),
                    
                          underline: Container(
                            color: Colors.white,
                          ),
                            isExpanded: true,
                            hint: const Text("Choose Preferd Treatment"),
                            items: list3
                                .map<DropdownMenuItem<String>>(
                                    (e3) => DropdownMenuItem(
                                          value: e3,
                                          child: Text(e3),
                                        ))
                                .toList(),
                            value: dropdownbar3,
                            onChanged: (String? value) {
                              setState(() {
                                dropdownbar3 = value;
                              });
                            }),
                 ),
            
                            const Text("Add patients"),
            
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                
                                Container(
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    
                                    borderRadius: BorderRadius.circular(15),
                                    
                                  ),
                                  child: const Center(child: Text("Male")),
                                ),
                            
                            
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.green,
                                  child: IconButton(onPressed: (){
                            
                                  }, icon: const Icon(Icons.minimize_outlined))
                                ),
                            
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                ),
                            
                                 CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.green,
                                  child: IconButton(onPressed: (){
                            
                                  }, icon: const Icon(Icons.add))
                                ),
                              ],
                            ),
                          ),
            
                            
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                 Container(
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(15),
                                    
                                  ),
                                  child: const Center(child: Text("Male")),
                                ),
                            
                            
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.green,
                                  child: IconButton(onPressed: (){
                            
                                  }, icon: const Icon(Icons.minimize_outlined))
                                ),
                            
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                ),
                            
                                 CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.green,
                                  child: IconButton(onPressed: (){
                            
                                  }, icon: const Icon(Icons.add))
                                ),
                              ],
                            ),
                          ),
            
            
                              const SizedBox(
                                height: 20,
                              ),
                          InkWell(
                            onTap: () {
                              
                            },
                            child: Container(
                              height: 55,
                              width: 400,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(child: Text("Save")),
                            ),
                          )
                    
              ],
            ),
          ),
        ),
  );
  }

  );
    
  }




  List<String> list1 = <String>["jkyjyy", "sdfjf","trtrt"];

  List<String> list2 = <String>["fdfsd", "ggddgr", "jyyftrd"];

  List<String> list3 = <String>["jkyjytky", "sdfnsdkjf","fesgeet"];

  String? dropdownbar1;
  String? dropdownbar2;
  String? dropdownbar3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Register",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
            ),
            const Divider(),
        
            
            const Customtext(name: "Name", hintText: "Enter The Names"),
            const Customtext(
                name: "WhatsApp Number",
                hintText: "Enter Your WhatsApp Number"),
            const Customtext(name: "Address", hintText: "Enter Your Address"),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Location"),
                  Container(
                    height: 55,
                    width: 400,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(15)),
                    child: DropdownButton(
                      underline: Container(
                        color: Colors.white,
                      ),
                        isExpanded: true,
                        hint: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Choose Your Location"),
                        ),
                        items: list1
                            .map<DropdownMenuItem<String>>(
                                (e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(e),
                                    ))
                            .toList(),
                        value: dropdownbar1,
                        onChanged: (String? value) {
                          setState(() {
                            dropdownbar1 = value;
                          });
                        }),
                  ),
                  const Text("Branch"),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 55,
                      width: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black)),
                      child: DropdownButton(
                        underline: Container(
                          color: Colors.white,
                        ),
                          hint: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Choose Your Branch"),
                            
                          ),
                          isExpanded: true,
                          items: list2
                              .map<DropdownMenuItem<String>>(
                                  (e1) => DropdownMenuItem(
                                        value: e1,
                                        child: Text(e1),
                                      ))
                              .toList(),
                          value: dropdownbar2,
                          onChanged: (String? value) {
                            setState(() {
                              dropdownbar2 = value;
                            });
                          }),
                    ),
                  ),
                  const Text("Treatment"),
                  Container(
                    height: 100,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.grey[500],
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("  1.  Couple Combo Package"),
                              InkWell(
                                onTap: () {},
                                child: const CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.red,
                                  foregroundColor: Colors.white,
                                  child: Icon(Icons.close),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 30,
                              ),
                              const Text("Male  "),
                              Container(
                                height: 20,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              const SizedBox(width: 30),
                              const Text("Female  "),
                              Container(
                                height: 20,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              const SizedBox(
                                width: 74,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.edit_outlined),
                                color: Colors.green,
                              )
                            ],
                          ),
                          
                        ],
                      ),
                    ),
                  ),
              
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      AlertBoX();
                    },
                    child: Container(
                              height: 55,
                              width: 400,
                              decoration: BoxDecoration(
                                  color: Colors.green[100],
                                  borderRadius: BorderRadius.circular(10)),
                                  child: const Center(child: Text("+ Add Treatment")),
                            ),
                  ),
                  
                  
              
                ],
              ),
            ),

            const Customtext(name: "Total Amount" ),
            const Customtext(name: "Discount Amount" ),


            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("Payment Option"),
            ),

             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black)
                    ),
                  ),
               
                  const Text("Cash"),
               
                  const SizedBox(
                    width: 100,
                  ),
                   Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black)
                    ),
                  ),
               
                  const Text("Card"),
               
                      const SizedBox(
                        width: 100,
                      ),
                   Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black)
                    ),
                  ),
               
                  const Text("UPI"),
               
                  
                ],
                           ),
             ),


            const Customtext(name: "Advance Amount" ),
            const Customtext(name: "Balance Amount" ),
            Customtext(name: "Treatment Date"),
            

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  
                },
                child: Container(
                  height: 55,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text("Save")),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
