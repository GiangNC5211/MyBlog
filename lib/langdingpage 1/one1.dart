// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uiblog/values/app_assets.dart';
import 'package:uiblog/values/app_colors.dart';
import 'package:uiblog/langdingpage 1/two2.dart';

class LangdingPage1 extends StatelessWidget {
  static const routeName = '/One1';

  const LangdingPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(right: 12.0, left: 12.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 422,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    //border ,
                    image: DecorationImage(
                      image: AssetImage(AppAssets.imageStart1),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: Text(
                    ' Chia Sẻ ',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w800,
                      fontSize: 36,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: Text(
                    ' Bạn có thể chia sẻ, viết ra những lời khó nói trong lòng. Và chia sẻ nó cho mọi người cùng đọc hoặc giữ nó cho riêng bản thân. ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  child: Container(
                    height: 50,
                    width: 338,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: AppColors.primaryColors,
                        borderRadius: BorderRadius.all(
                            Radius.circular(10.0)), // Set rounded corner radius
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              color: AppColors.primaryColors,
                              offset: Offset(1, 3))
                        ] // Make rounded corner of border
                        ),
                    child: Text(
                      'Tiếp',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(LangdingPage2.routeName);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
