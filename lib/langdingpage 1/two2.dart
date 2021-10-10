// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uiblog/langdingpage%201/three3.dart';
import 'package:uiblog/values/app_assets.dart';
import 'package:uiblog/values/app_colors.dart';


class LangdingPage2 extends StatelessWidget {
  static const routeName = '/Two2';

  const LangdingPage2({Key? key}) : super(key: key);

  get children => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Expanded(child: Container(
            height: 422,
            width: 338,
            decoration: BoxDecoration(
              //border ,
              image: DecorationImage(
                image: AssetImage(AppAssets.imageStart3),
                fit: BoxFit.contain,
              ),
            ),
          ),
          ),
          SizedBox(height: 10,),
          SizedBox(
            child: Text(
              ' Nhận Lại ',
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
              'Nơi mà bạn sẽ nhận được rất nhiều yêu thương từ những người bạn mới.'
                  ' Họ lắng nghe câu chuyện và đồng cảm cùng bạn. Bạn sẽ không bao giờ cô đơn ở đây.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 16,

              ),

            ),
          ),
          SizedBox(height: 20,),
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
            onTap: () { Navigator.of(context).pushNamed(LangdingPage3.routeName); },

          ),

        ],
      ),
    );
  }
}
