import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sport_field/model/stadion.dart';
import 'package:sport_field/themes/colors.dart';

class VerticalCard extends StatelessWidget {
  final Stadion stadion;
  final Function() onTap;
  const VerticalCard({
    Key? key,
    required this.stadion,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            height: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 120,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: SizedBox(
                          height: 120,
                          width: 120,
                          child: Image.network(
                            stadion.imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                stadion.name,
                                style: TextStyle(
                                  fontFamily: GoogleFonts.openSans().fontFamily,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                stadion.country,
                                style: TextStyle(
                                  fontFamily: GoogleFonts.openSans().fontFamily,
                                  color: SportColors.secondaryTextColor,
                                  fontSize: 16,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 18,
                                    height: 18,
                                    color: SportColors.backgroundWhiteColor,
                                    child: SvgPicture.asset(
                                      'assets/star.svg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    stadion.rating,
                                    style: TextStyle(
                                      fontFamily:
                                          GoogleFonts.openSans().fontFamily,
                                      color: SportColors.secondaryTextColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40,
                            width: 70,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: SportColors.primaryColor,
                              borderRadius: BorderRadius.circular(32),
                            ),
                            child: Center(
                              child: Text(
                                stadion.size,
                                style: TextStyle(
                                  fontFamily: GoogleFonts.openSans().fontFamily,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                                text: stadion.price,
                                style: TextStyle(
                                  fontFamily: GoogleFonts.openSans().fontFamily,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                                children: [
                                  TextSpan(
                                    text: '/hour',
                                    style: TextStyle(
                                      fontFamily:
                                          GoogleFonts.openSans().fontFamily,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  )
                                ]),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 14,
                              height: 14,
                              color: SportColors.backgroundWhiteColor,
                              child: SvgPicture.asset(
                                'assets/discount.svg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              stadion.discount,
                              style: TextStyle(
                                fontFamily: GoogleFonts.openSans().fontFamily,
                                fontWeight: FontWeight.bold,
                                color: SportColors.secondaryTextColor,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Available Today',
                          style: TextStyle(
                            fontFamily: GoogleFonts.openSans().fontFamily,
                            fontWeight: FontWeight.bold,
                            color: Colors.greenAccent,
                            fontSize: 14,
                          ),
                        ),
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
