import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:ayurvadic_app/homelist/homelist.dart';
import 'package:ayurvadic_app/registerpage.dart';
import 'package:http/http.dart' as http;

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<dynamic> l1 = [];

  Future<void> productget() async {
    final value = await http
        .get(Uri.parse("http://universities.hipolabs.com/search?name=middle"));

    if (value.statusCode == 200) {
      setState(() {
        log(value.body);
        l1 = json.decode(value.body);
      });
    } else {
      throw Exception("failed to load");
    }
  }

  @override
  void initState() {
    super.initState();
    productget();
  }

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
        child: Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            hintText: "Search For Treatment",
                            prefixIcon: const Icon(
                              Icons.search,
                            )),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 55,
                            width: 85,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Center(
                                child: Text(
                              "Search",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        )

                        // ElevatedButton(
                        //   style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.green)),
                        //   onPressed: (){}, child: Text("search",style: TextStyle(color: Colors.white),),),
                        )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Sort By :"),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 140,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Date"),
                              Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: Colors.green,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              SizedBox(
                height: 430,
                child: ListView.builder(
                  itemCount: homeData.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 180,
                          width: 370,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(
                                  l1[index]["name"],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  l1[index]["country"],
                                  style: const TextStyle(color: Colors.green),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      homeData[index].icon1.icon,
                                      color: Colors.red,
                                    ),
                                    Text(homeData[index].text1),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Icon(
                                      homeData[index].icon2.icon,
                                      color: Colors.red,
                                    ),
                                    Text(homeData[index].text2)
                                  ],
                                ),
                              ),
                              const Divider(
                                color: Colors.black,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(homeData[index].text3),
                                    Icon(homeData[index].icon3.icon),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Registerpage(),
                      ));
                },
                child: Container(
                  height: 50,
                  width: 380,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Text(
                      "Register Now",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
