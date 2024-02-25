import 'package:coffee_boss/core/common/const.dart';
import 'package:flutter/material.dart';

class CofeeCard extends StatefulWidget {
  const CofeeCard({super.key});

  @override
  State<CofeeCard> createState() => _CofeeCardState();
}

class _CofeeCardState extends State<CofeeCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      //semanticContainer: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        // mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              testCoffeeImage,
              fit: BoxFit.cover,
              height: widht(context) * 0.3,
              width: widht(context) * 0.34,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 25,
                width: 40,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    buttonGradient2,
                    buttonGradient1,
                  ]),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
              const Text(
                "Espresso",
                style:
                    TextStyle(color: Colors.brown, fontWeight: FontWeight.w600),
              ),
              Container(
                height: 25,
                width: 40,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [buttonGradient1, buttonGradient2]),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.brown),
                  borderRadius: BorderRadius.circular(8)),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                child: Text("155"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
