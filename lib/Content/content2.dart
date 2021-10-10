import 'package:flutter/material.dart';
import 'package:uiblog/Model/molde.dart';

class MostPopular extends StatelessWidget {
  final _list = blog.mostPopular();

  final _pgCtrl = PageController(viewportFraction: 1);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      //pageView.builder and list view seperated same function
      controller: _pgCtrl,
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        var blog = _list[index];
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, right: 10, left: 10, bottom: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  blog.url,
                  fit: BoxFit.cover,
                  width: 150,
                ),
              ),
            ),
            Positioned(
              bottom: 75,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    blog.name,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(Icons.local_attraction_sharp),
                      Text(
                        blog.location,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
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
