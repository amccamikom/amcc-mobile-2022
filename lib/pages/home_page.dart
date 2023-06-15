import 'package:amibike/pages/add_stnk.dart';
import 'package:amibike/pages/profile_page.dart';
import 'package:amibike/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor1,
        bottomNavigationBar: PreferredSize(
          child: Container(
            width: 0,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              color: backgroundColor2,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // IconButton(
                //   onPressed: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => AddSTNK()),
                //     );
                //   },
                //   icon: Image.asset('assets/barcodeNavbar.png'),
                // ),
                Image.asset('assets/barcodeNavbar.png'),
                IconButton(
                  icon: Image.asset('assets/profile.png'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                  },
                ),
              ],
            ),
          ),
          preferredSize: Size(MediaQuery.of(context).size.width, 100),
        ),
        body: ListView(
          children: [
            Padding(
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
                    height: 30,
                  ),
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
                        image: 'assets/barcode.png',
                        text: 'Scan QR Code',
                        text2: 'No ribet-ribet',
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddSTNK(),
                            ),
                          );
                        },
                        child: NewContainer(
                          image: 'assets/stnk.png',
                          text: 'Tambah Plat Nomor',
                          text2: 'Tinggal foto STNK!',
                        ),
                      ),
                      NewContainer(
                        image: 'assets/cover.png',
                        text: 'Rental Motor',
                        text2: 'Info rental motor terdekat',
                      ),
                      NewContainer(
                        image: 'assets/binggung.png',
                        text: 'Tentang',
                        text2: 'Tentang aplikasi kami',
                        // buton: '',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewContainer extends StatelessWidget {
  String image;
  String text;
  String text2;
  NewContainer({
    super.key,
    required this.image,
    required this.text,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.width * 0.5,
          width: MediaQuery.of(context).size.width * 0.4,
          // width: 150,
          decoration: BoxDecoration(
            color: backgroundColor2,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(75),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
              Text(
                text,
                style: primaryTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: semiBold,
                ),
              ),
              Text(
                text2,
                style: grayTextStyle.copyWith(
                  fontSize: 9,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
