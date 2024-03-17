import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_constants.dart';

class RecentInvestment extends StatefulWidget {
  const RecentInvestment({super.key});

  @override
  State<RecentInvestment> createState() => _RecentInvestmentState();
}

class _RecentInvestmentState extends State<RecentInvestment> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 130,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Card(
                  shadowColor: Colors.black,
                  color: const Color(0xffebebeb),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "3-Dec-24",
                            style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff404148)),
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Amount - $kRsSymbol 2500",
                          style: GoogleFonts.inter(
                              letterSpacing: .5,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff404148)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "PPF - ICICI Bank",
                          style: GoogleFonts.inter(
                              letterSpacing: .5,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff404148)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Category - Retirement",
                          style: GoogleFonts.inter(
                              letterSpacing: .5,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff404148)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
