import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ContainerBody extends StatelessWidget {
  String redempoints;
  ContainerBody({required this.redempoints});

  @override
  Widget build(BuildContext context) {
    TextStyle heading5 = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    );
    Color colorPrimary = HexColor("#041b38");

    return Container(
      margin: EdgeInsets.all(12),
      // padding: EdgeInsets.all(30),
      height: 120,
      width: double.infinity,
      child: Card(
        child: Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Image.asset(
              'assets/images/dunzo.png',
              height: 70,
              width: 70,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Get a Coffee For Free',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  redempoints,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
                ),
                Text(
                  "Redeem points",
                  style: TextStyle(
                    color: Colors.black.withAlpha(120),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Material(
                    elevation: 2,
                    child: Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        color: colorPrimary,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              'Grab Now',
                              style: heading5.copyWith(
                                  color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
