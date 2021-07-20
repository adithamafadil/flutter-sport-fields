import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sport_field/model/stadion.dart';
import 'package:sport_field/themes/colors.dart';

class DetailScreen extends StatelessWidget {
  final Stadion stadion;
  const DetailScreen({Key? key, required this.stadion}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Image.network(
                  stadion.imageUrl,
                  fit: BoxFit.fitWidth,
                ),
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Colors.black12,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: SportColors.backgroundWhiteColor,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                              color: Colors.black12,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.share,
                                color: SportColors.backgroundWhiteColor,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                              color: Colors.black12,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.bookmark,
                                color: SportColors.backgroundWhiteColor,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
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
                ),
                const SizedBox(height: 16),
                Container(
                  height: MediaQuery.of(context).size.height - 250,
                  decoration: const BoxDecoration(
                    color: SportColors.backgroundWhiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(32),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              stadion.name,
                              style: TextStyle(
                                fontFamily: GoogleFonts.openSans().fontFamily,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
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
                                    fontFamily:
                                        GoogleFonts.openSans().fontFamily,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
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
                        const SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
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
                                ),
                                const SizedBox(width: 16),
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
                                    const SizedBox(width: 4),
                                    Text(
                                      stadion.discount,
                                      style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.openSans().fontFamily,
                                        color: SportColors.secondaryTextColor,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            RichText(
                              text: TextSpan(
                                  text: stadion.price,
                                  style: TextStyle(
                                    fontFamily:
                                        GoogleFonts.openSans().fontFamily,
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
                        ),
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            SizedBox(
                                height: 70,
                                width: 70,
                                child: SvgPicture.asset(
                                  'assets/location.svg',
                                  fit: BoxFit.cover,
                                )),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    stadion.location,
                                    style: TextStyle(
                                      fontFamily:
                                          GoogleFonts.openSans().fontFamily,
                                      color: SportColors.secondaryTextColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Open on maps',
                                      style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.openSans().fontFamily,
                                        fontWeight: FontWeight.bold,
                                        color: SportColors.secondaryTextColor,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        DefaultTabController(
                          length: 3,
                          child: SizedBox(
                            height: 50,
                            child: AppBar(
                                backgroundColor:
                                    SportColors.backgroundWhiteColor,
                                bottom: TabBar(
                                  labelColor: SportColors.primaryTextColor,
                                  unselectedLabelColor:
                                      SportColors.secondaryTextColor,
                                  indicatorColor: SportColors.primaryColor,
                                  tabs: [
                                    Tab(
                                      child: Text(
                                        'About Pitches',
                                        style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.openSans().fontFamily,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    Tab(
                                      child: Text(
                                        'Reviews',
                                        style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.openSans().fontFamily,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    Tab(
                                      child: Text(
                                        'Opening Hours',
                                        style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.openSans().fontFamily,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                          ),
                        ),
                        const SizedBox(height: 24),
                        getTab(stadion),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: SizedBox(
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
                    'Book Now',
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
          ),
        ],
      ),
    );
  }

  Widget getTab(Stadion stadion) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Features',
          style: TextStyle(
            fontFamily: GoogleFonts.openSans().fontFamily,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 16),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 4,
          ),
          itemCount: stadion.features.length,
          itemBuilder: (context, index) {
            Feature feature = stadion.features[index];
            return Text(
              '⋅ ${feature.feature}',
              style: TextStyle(
                fontFamily: GoogleFonts.openSans().fontFamily,
                fontWeight: FontWeight.bold,
                color: SportColors.secondaryTextColor,
                fontSize: 14,
              ),
            );
          },
        ),
        const SizedBox(height: 24),
        Text(
          'Facilities',
          style: TextStyle(
            fontFamily: GoogleFonts.openSans().fontFamily,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 16),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 4,
          ),
          itemCount: stadion.facilities.length,
          itemBuilder: (context, index) {
            Facility facility = stadion.facilities[index];
            return Row(
              children: [
                SizedBox(
                  height: 20,
                  width: 20,
                  child: SvgPicture.asset(
                    facility.iconUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  facility.facility,
                  style: TextStyle(
                    fontFamily: GoogleFonts.openSans().fontFamily,
                    fontWeight: FontWeight.bold,
                    color: SportColors.secondaryTextColor,
                    fontSize: 14,
                  ),
                ),
              ],
            );
          },
        ),
        const SizedBox(height: 80),
      ],
    );
  }
}
