import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wealth_quest/presentation/user_profile/user_profile.dart';

class HomepageHeader extends StatefulWidget {
  const HomepageHeader({super.key});

  @override
  State<HomepageHeader> createState() => _HomepageHeaderState();
}

class _HomepageHeaderState extends State<HomepageHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipOval(
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UserProfile()));
            },
            child: Image.network(
              'https://www.clipartmax.com/png/middle/258-2582267_circled-user-male-skin-type-1-2-icon-male-user-icon.png',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, Good morning!",
                style: GoogleFonts.inter(
                    letterSpacing: .5,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff404148)),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Bhushan Jichkar",
                style: GoogleFonts.inter(
                  fontSize: 14,
                  letterSpacing: .5,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        ClipOval(
          child: Icon(
            Icons.circle_notifications_outlined,
            size: 35,
          ),
        ),
      ],
    );
  }
}
