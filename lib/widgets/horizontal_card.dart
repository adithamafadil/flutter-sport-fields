import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sport_field/model/stadion.dart';
import 'package:sport_field/themes/colors.dart';

class HorizontalCard extends StatelessWidget {
  final Stadion stadion;
  final Function() onTap;
  const HorizontalCard({
    Key? key,
    required this.stadion,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: SportColors.backgroundWhiteColor,
            boxShadow: [
              BoxShadow(
                color: SportColors.secondaryTextColor.withOpacity(.5),
                blurRadius: 5,
                offset: const Offset(0, 3),
              )
            ]),
        height: 130,
        width: 370,
        child: Row(children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: SizedBox(
                  width: 120,
                  height: 130,
                  child: Image.network(
                    stadion.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                child: Container(
                  width: 35,
                  height: 35,
                  padding: const EdgeInsets.all(8),
                  color: SportColors.backgroundWhiteColor,
                  child: SvgPicture.asset(
                    'assets/star.svg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        stadion.name.replaceAll('Football Stadium', ''),
                        style: TextStyle(
                          fontFamily: GoogleFonts.openSans().fontFamily,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
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
                                  fontFamily: GoogleFonts.openSans().fontFamily,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              )
                            ]),
                      ),
                    ],
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
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: SvgPicture.asset(
                          'assets/check.svg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Available Today',
                        style: TextStyle(
                          fontFamily: GoogleFonts.openSans().fontFamily,
                          color: SportColors.secondaryTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
