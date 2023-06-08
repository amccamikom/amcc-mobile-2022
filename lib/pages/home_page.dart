import 'package:amibike/pages/profile_page.dart';
import 'package:amibike/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Scaffold(
            backgroundColor: backgroundColor1,
            bottomNavigationBar: Container(
              width: 30,
              height: 30,
              color: backgroundColor2,
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 14,
              ),
              child: Column(
                children: [
                  //header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/logo_amibike_white.png',
                            scale: 10.0,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'AMIBIKE',
                            style: whiteTextStyle.copyWith(
                                fontSize: 20, fontWeight: semiBold),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'LOGOUT',
                          style: whiteTextStyle.copyWith(
                              fontSize: 20, fontWeight: semiBold),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 42,
                  ),
                  //name container
                  Container(
                    height: 86,
                    width: 326,
                    decoration: BoxDecoration(
                      color: backgroundColor2,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProfilePage()),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'DAVID',
                              style: primaryTextStyle.copyWith(
                                fontSize: 20,
                                fontWeight: semiBold,
                              ),
                            ),
                            Text(
                              '20.00.0000',
                              style: primaryTextStyle.copyWith(
                                fontSize: 20,
                                fontWeight: semiBold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 42,
                  ),
                  //wrap
                  Wrap(
                    runAlignment: WrapAlignment.center,
                    spacing: 15,
                    runSpacing: 15,
                    children: [
                      NewContainer(
                        image: 'assets/User.png',
                      ),
                      NewContainer(
                        image: 'assets/User.png',
                      ),
                      NewContainer(
                        image: 'assets/User.png',
                      ),
                      NewContainer(
                        image: 'assets/User.png',
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NewContainer extends StatelessWidget {
  String image;
  NewContainer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
            ),
            color: backgroundColor2,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Text(
          'DAVID',
          style: primaryTextStyle.copyWith(
            fontSize: 10,
            fontWeight: semiBold,
          ),
        ),
        Text(
          '20.00.0000',
          style: primaryTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      ],
    );
  }
}
