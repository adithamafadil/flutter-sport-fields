import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sport_field/model/stadion.dart';
import 'package:sport_field/screens/detail_screen/detail_screen.dart';
import 'package:sport_field/themes/colors.dart';
import 'package:sport_field/widgets/vertical_card.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SportColors.backgroundBlackColor,
      appBar: AppBar(
        backgroundColor: SportColors.backgroundBlackColor,
        toolbarHeight: 90,
        titleSpacing: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 24,
              width: 24,
              child: SvgPicture.asset(
                'assets/location_mark.svg',
                fit: BoxFit.cover,
                color: SportColors.primaryColor,
              ),
            ),
            const SizedBox(width: 16),
            Text(
              'Istanbul',
              style: TextStyle(
                fontFamily: GoogleFonts.openSans().fontFamily,
                color: SportColors.backgroundWhiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(width: 48),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
          color: SportColors.backgroundWhiteColor,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: stadions.length,
              physics: const ClampingScrollPhysics(),
              itemBuilder: (context, index) {
                Stadion stadion = stadions[index];
                return VerticalCard(
                  stadion: stadion,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(stadion: stadion),
                        ));
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
