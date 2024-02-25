import 'package:coffee_boss/Features/coffee_server/views/item_card.dart';
import 'package:coffee_boss/core/common/const.dart';
import 'package:flutter/material.dart';

import '../../../core/models/coffee_type.dart';

class ServerHome extends StatefulWidget {
  const ServerHome({super.key});

  @override
  State<ServerHome> createState() => _ServerHomeState();
}

class _ServerHomeState extends State<ServerHome> {
  int dataIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.center,
              colors: [primaryScaffoldBackround, Colors.white])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          // leadingWidth: 30,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leadingWidth: 40,
          leading: CircleAvatar(
            child: Icon(Icons.person),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "rabie houssaini",
                style: TextStyle(
                    color: Colors.brown,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.location_pin,
                    color: Colors.brown,
                    size: 17,
                  ),
                  Text(
                    "Gabes, Tunisia",
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: const [
            Icon(
              Icons.notifications_outlined,
              color: Colors.brown,
              size: 25,
            )
          ],
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Good Morning Rabie!",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                elevation: 3,

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                // height: 50,
                child: TextField(
                  //textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: .0),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.black,
                        // size: 40,
                      ),
                      suffixIcon: const Icon(
                        Icons.sort,
                        color: Colors.black,
                      )
                      /*Image.asset(
                        "assets/images/filter.png",
                        height: 35,
                        width: 35,
                      )*/ /*Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.brown),
                      width: 30,
                      height: 30,
                    ),*/

                      ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Categories",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                // color: Colors.yellow[100],
                // height: 80,
                width: widht(context),
                //  width: 300,
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  direction: Axis.horizontal,
                  children: data.asMap().entries.map((categories) {
                    final category = categories.value;
                    final index = categories.key;

                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            dataIndex = index;
                          });
                          print(dataIndex);
                        },
                        child: Container(
                          width: widht(context) * 0.28,
                          height: height(context) * 0.045,
                          decoration: BoxDecoration(
                              gradient: dataIndex == index
                                  ? LinearGradient(colors: [
                                      buttonGradient1,
                                      buttonGradient2
                                    ])
                                  : null,
                              borderRadius: BorderRadius.circular(60),
                              border: Border.all(
                                  width: 2,
                                  color: dataIndex == index
                                      ? Colors.transparent
                                      : primaryColor)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image(
                                  image: AssetImage(
                                    category.image,
                                  ),
                                  height: 25,
                                  width: 25,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 6.0),
                                  child: Text(
                                    category.name,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: dataIndex == index
                                            ? Colors.white
                                            : primaryColor),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: height(context) * 0.03,
              ),
              GridView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    //  mainAxisSpacing: 5,
                    crossAxisSpacing: 10),
                children: const [
                  CofeeCard(),
                  CofeeCard(),
                  CofeeCard(),
                  CofeeCard(),
                  CofeeCard(),
                  CofeeCard(),
                  CofeeCard(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
