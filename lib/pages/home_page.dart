import 'package:amibike/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Card(
                  elevation: 3,
                  shadowColor: backgroundColor2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Column(
                          // menambahkan ca.start
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "David",
                              style: primaryTextStyle.copyWith(
                                fontSize: 32,
                                fontWeight: semiBold,
                              ),
                            ),
                            Text(
                              "12.3456.78",
                              style: primaryTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: reguler,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
