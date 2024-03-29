import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wealth_quest/presentation/homepage/homepage_header.dart';
import 'package:wealth_quest/presentation/homepage/recent_investment.dart';

import '../../constants/app_constants.dart';
import 'homepage_balance.dart';
import 'investment_categories.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: const [
                HomepageHeader(),
                SizedBox(
                  height: 20,
                ),
                HomepageBalance(),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xff000000),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        left: 15,
                        right: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Recent Investment",
                            style: GoogleFonts.inter(
                              letterSpacing: .5,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: const Color(0xffffffff),
                            ),
                          ),
                          const Expanded(
                            child: SizedBox(),
                          ),
                          Text(
                            "View all",
                            style: GoogleFonts.inter(
                              letterSpacing: .5,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ],
                      ),
                    ),
                    RecentInvestment(),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        left: 15,
                        right: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Investment by Category",
                            style: GoogleFonts.inter(
                              letterSpacing: .5,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: const Color(0xffffffff),
                            ),
                          ),
                          const Expanded(
                            child: SizedBox(),
                          ),
                          Text(
                            "View all",
                            style: GoogleFonts.inter(
                              letterSpacing: .5,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ],
                      ),
                    ),
                    InvestmentByCategory()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
