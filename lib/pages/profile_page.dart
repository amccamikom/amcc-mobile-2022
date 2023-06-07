import 'package:amibike/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor2,
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Profile',
                    style: blackTextStyle.copyWith(
                        fontSize: 40, fontWeight: semiBold),
                  )
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                child: Row(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/profileUser.png',
                        width: 126,
                      ),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nama Lengkap',
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
                height: 41,
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      );
                    },
                    child: Text(
                      'Edit Profile',
                      style: whiteTextStyle2.copyWith(
                          fontSize: 17, fontWeight: semiBold),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff6319B8),
                      minimumSize: Size(143.65, 44),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  )
                ],
              ),
              menuItem(
                text: 'Edit Profile',
              ),
              menuItem(
                text: 'Riwayat Parkir',
              ),
              menuItem(
                text: 'Ulasan',
              ),
              menuItem(
                text: 'Pengaturan',
              ),
              menuItem(
                text: 'Pusat Bantuan',
              ),
              menuItem(
                text: 'Hapus Akun',
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
  // String image;
  menuItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //cara nambahin iconnya gimane?
          // Icon(
          //   image,
          // ),
          Text(
            text,
            style: grayTextStyle.copyWith(fontSize: 18),
          ),
          Icon(
            Icons.chevron_right,
            color: textColor2,
          ),
        ],
      ),
    );
  }
}
