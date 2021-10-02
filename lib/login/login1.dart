import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uiblog/login/login2.dart';
import 'package:uiblog/values/app_colors.dart';
import 'package:uiblog/langdingpage 1/three3.dart';

class Login1 extends StatelessWidget {
  static const routeName = '/Login1';

  const Login1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                  color: AppColors.primaryColors.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(LangdingPage3.routeName);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_sharp,
                      color: AppColors.primaryColors,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const <Widget>[
              SizedBox(
                width: 20,
              ),
              SizedBox(
                child: Text(
                  'Đăng Nhập',
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w800,
                    fontSize: 36,
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                width: 20,
              ),
              const SizedBox(
                child: Text(
                  'Chưa có tài khoản?',
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    color: AppColors.full,
                    fontSize: 16,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Login2.routeName);
                },
                child: const Text(
                  'Tạo ngay!',
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Tài khoản',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        color: AppColors.black,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Nhập Email hoặc Số điện thoại',
                    ),
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Thông tin đăng nhập sai !';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Mật khẩu',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        color: AppColors.black,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                  width: 422,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Nhập mật khẩu',
                      suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Sai mật khẩu !';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  child: Container(
                    height: 50,
                    width: 338,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
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
                    child: const Text(
                      'Đăng Nhập',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.of(context).pushNamed(Login1.routeName);
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
