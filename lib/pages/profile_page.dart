import 'package:amibike/pages/home_page.dart';
import 'package:amibike/theme.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor2,
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Profile',
                style: blackTextStyle.copyWith(
                  fontSize: 40,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/profileUser.png',
                      width: 120,
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nama LengkapDemikian Lah RUpa PAda WAnita Kucing Bermata Kuda ',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: blackTextStyle.copyWith(
                                fontSize: 20, fontWeight: semiBold),
                          ),
                          Text(
                            'NIM',
                            style: blackTextStyle.copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: Text(
                  'Edit Profile',
                  style: whiteTextStyle2.copyWith(
                      fontSize: 17, fontWeight: semiBold),
                ),
                style: ElevatedButton.styleFrom(
                  primary: backgroundColor1,
                  minimumSize: Size(144, 44),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      menuItem(text: 'Pengaturan', icon: Icons.settings),
                      menuItem(text: 'Bantuan', icon: Icons.help),
                      menuItem(text: 'Tentang', icon: Icons.info),
                      menuItem(text: 'Pengaturan', icon: Icons.settings),
                      menuItem(text: 'Bantuan', icon: Icons.help),
                      menuItem(text: 'Tentang', icon: Icons.info),
                      menuItem(text: 'Pengaturan', icon: Icons.settings),
                      menuItem(text: 'Bantuan', icon: Icons.help),
                      menuItem(text: 'Tentang', icon: Icons.info),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class menuItem extends StatelessWidget {
  String text;
  IconData icon;
  menuItem({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: textColor1,
            width: 1,
          ),
        ),
      ),
      margin: EdgeInsets.only(top: 20),
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  text,
                  style: grayTextStyle.copyWith(fontSize: 18),
                ),
              ],
            ),
            Icon(
              Icons.chevron_right,
            ),
          ],
        ),
      ),
    );
  }
}
