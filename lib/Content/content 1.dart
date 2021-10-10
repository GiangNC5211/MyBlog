// ignore: file_names
// ignore: file_names
// ignore_for_file: file_names, dead_code

import 'package:flutter/material.dart';
import 'package:uiblog/Model/molde.dart';
import 'package:uiblog/values/app_colors.dart';

class BlogStory extends StatelessWidget {
  final _list = blog.generateblog(); //connection with travel.dart
  final _pgCtrl = PageController(viewportFraction: 1);

  BlogStory({Key? key}) : super(key: key); //image ratio

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      //multiple value build is used in pageView.builder
      controller: _pgCtrl,
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      //itemCount: _list.length,
      itemBuilder: (context, index) {
        //context=location, index=data passes
        var blog = _list[index];
        return Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(blog.url, fit: BoxFit.cover, width: 200),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 25,
              left: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    blog.name,
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                        fontFamily: 'Nunoto'),
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.location_on_outlined,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        blog.location,
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: AppColors.black,
                            fontFamily: 'Nunoto'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
      separatorBuilder: (_, index) => const SizedBox(width: 15),
      itemCount: _list.length,
    );
  }
}
