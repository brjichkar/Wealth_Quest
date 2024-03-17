import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_constants.dart';

class InvestmentByCategory extends StatefulWidget {
  const InvestmentByCategory({super.key});

  @override
  State<InvestmentByCategory> createState() => _InvestmentByCategoryState();
}

class _InvestmentByCategoryState extends State<InvestmentByCategory> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              shadowColor: Colors.black,
              color: Color(0xffebebeb),
              child: Container(
                  width: 190,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/icons/retirement.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: SizedBox(
                    height: 100,
                    width: 100,
                  )),
            ),
          );
        },
      ),
    );
  }
}
