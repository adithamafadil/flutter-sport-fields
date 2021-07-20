import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sport_field/model/stadion.dart';
import 'package:sport_field/screens/detail_screen/detail_screen.dart';
import 'package:sport_field/screens/list_screen/list_screen.dart';
import 'package:sport_field/themes/colors.dart';
import 'package:sport_field/widgets/horizontal_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.ticket),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_rounded),
          ),
        ],
        title: SvgPicture.asset(
          'assets/logo-ipsum.svg',
          width: 150,
          fit: BoxFit.fitWidth,
        ),
      ),
      backgroundColor: SportColors.backgroundWhiteColor,
      body: Stack(
        children: [
          Container(height: MediaQuery.of(context).size.height),
          Container(
            height: MediaQuery.of(context).size.height * .43,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: SportColors.backgroundBlackColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(32),
              ),
            ),
          ),
          Positioned(
            right: 16,
            left: 16,
            top: 280,
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: SportColors.backgroundWhiteColor,
                      borderRadius: BorderRadius.circular(16)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/calendar.svg',
                                width: 30,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(width: 24),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    DateFormat('dd MMMM\nyyyy')
                                        .format(DateTime.now()),
                                    style: TextStyle(
                                      fontFamily:
                                          GoogleFonts.openSans().fontFamily,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    DateFormat('EEEE').format(DateTime.now()),
                                    style: TextStyle(
                                      color: SportColors.secondaryTextColor,
                                      fontFamily:
                                          GoogleFonts.openSans().fontFamily,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/football.svg',
                                  width: 40, fit: BoxFit.fitWidth),
                              Text(
                                'Football',
                                style: TextStyle(
                                  color: SportColors.secondaryTextColor,
                                  fontFamily: GoogleFonts.openSans().fontFamily,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => SportColors.primaryColor),
                      ),
                      child: Text(
                        'Let\'s Make a Book',
                        style: TextStyle(
                          fontFamily: GoogleFonts.openSans().fontFamily,
                          fontWeight: FontWeight.bold,
                          color: SportColors.primaryTextColor,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nearby Stadiums',
                      style: TextStyle(
                        fontFamily: GoogleFonts.openSans().fontFamily,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ListScreen(),
                              ));
                        },
                        child: Text(
                          'See all',
                          style: TextStyle(
                            fontFamily: GoogleFonts.openSans().fontFamily,
                            fontWeight: FontWeight.bold,
                            color: SportColors.secondaryTextColor,
                            fontSize: 18,
                          ),
                        )),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: stadions.length,
                    itemBuilder: (context, index) {
                      Stadion stadion = stadions[index];
                      return HorizontalCard(
                        stadion: stadion,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailScreen(stadion: stadion),
                              ));
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            top: 30,
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: SvgPicture.asset(
                          'assets/location_mark.svg',
                          fit: BoxFit.cover,
                          color: SportColors.primaryColor,
                        ),
                      ),
                      const SizedBox(width: 32),
                      Text(
                        'Istanbul',
                        style: TextStyle(
                          fontFamily: GoogleFonts.openSans().fontFamily,
                          color: SportColors.secondaryTextColor,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Special Promo',
                      style: TextStyle(
                        fontFamily: GoogleFonts.openSans().fontFamily,
                        fontWeight: FontWeight.bold,
                        color: SportColors.backgroundWhiteColor,
                        fontSize: 18,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See all',
                        style: TextStyle(
                          fontFamily: GoogleFonts.openSans().fontFamily,
                          fontWeight: FontWeight.bold,
                          color: SportColors.secondaryTextColor,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        SportColors.primaryColor,
                        SportColors.primaryColor.withAlpha(470),
                        SportColors.primaryColor.withAlpha(500),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: 'Up to 50% Discount',
                            style: TextStyle(
                              fontFamily: GoogleFonts.openSans().fontFamily,
                              fontWeight: FontWeight.bold,
                              color: SportColors.backgroundWhiteColor,
                              fontSize: 18,
                            ),
                            children: [
                              TextSpan(
                                text: '\nLote Stadium',
                                style: TextStyle(
                                  fontFamily: GoogleFonts.openSans().fontFamily,
                                  fontWeight: FontWeight.bold,
                                  color: SportColors.backgroundWhiteColor,
                                  fontSize: 14,
                                ),
                              )
                            ]),
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: SvgPicture.asset(
                          'assets/stadium.svg',
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 20,
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: SportColors.primaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    Container(
                      height: 5,
                      width: 5,
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: SportColors.backgroundWhiteColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
