// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uiblog/values/app_assets.dart';
import 'package:uiblog/values/app_colors.dart';
import 'package:uiblog/Login/login1.dart';

class LangdingPage3 extends StatelessWidget {
  static const routeName = '/Three3';

  const LangdingPage3({Key? key}) : super(key: key);

  get children => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[

          Container(
            height: 422,
            width: 338,
            decoration: BoxDecoration(
              //border ,
              image: DecorationImage(
                image: AssetImage(AppAssets.imageStart2),
                fit: BoxFit.fill
                ),
              ),
            ),

          SizedBox(
            child: Text(
              ' Niềm Vui ',
              style: TextStyle(
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w800,
                fontSize: 36,
              ),
            ),
          ),
          SizedBox(height: 10,),
          SizedBox(
            child: Text(
              'Bạn có thể trải nghiệm nhiều niềm vui đặc biệt qua từng câu chuyện của bản thân hoặc một người xa lạ bạn chưa từng gặp.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 16,

              ),

            ),
          ),
          SizedBox(height: 40,),
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
                  boxShadow: const [BoxShadow(blurRadius: 10,color: AppColors.primaryColors,offset: Offset(1,3))] // Make rounded corner of border
              ),
              child: Text('Tiếp',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,

                ),
              ),

            ),
            onTap: () { Navigator.of(context).pushNamed(Login1.routeName); },

          ),

        ],
      ),
    );
  }
}
