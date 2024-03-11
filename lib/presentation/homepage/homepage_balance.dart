import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wealth_quest/constants/app_constants.dart';

class HomepageBalance extends StatefulWidget {
  const HomepageBalance({super.key});

  @override
  State<HomepageBalance> createState() => _HomepageBalanceState();
}

class _HomepageBalanceState extends State<HomepageBalance> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            "Available Balance",
            style: GoogleFonts.inter(
              letterSpacing: .5,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "$kRsSymbol 1,25,500.00",
            style: GoogleFonts.inter(
              letterSpacing: .5,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: const Color(0xff000000),
                  ),
                  icon: const Icon(Icons.outbond_rounded),
                  label: Text(
                    kWithdraw,
                    style: GoogleFonts.inter(
                      letterSpacing: .5,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(width: 1.0, color: Colors.black),
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: const Color(0xffffffff),
                  ),
                  child: Text(
                    kDeposit,
                    style: GoogleFonts.inter(
                      letterSpacing: .5,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
