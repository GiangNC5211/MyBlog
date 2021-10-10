import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:uiblog/langdingpage%201/one1.dart';
import 'package:uiblog/langdingpage%201/three3.dart';
import 'package:uiblog/values/app_colors.dart';
import 'package:uiblog/Content/content 1.dart';
import 'package:uiblog/Content/content2.dart';

// import 'package:uiblog/values/app_assets.dart';
// import 'package:uiblog/values/app_colors.dart';
class HomePage extends StatefulWidget {
  static const routeName = '/HomePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseDatabase _database = FirebaseDatabase.instance;

  @override
  // ignore: use_function_type_syntax_for_parameters

  Widget build(BuildContext context) {
    // void initState() {
    //   super.initState();

    //   _database.reference().child(nodeName).onChildAdded.listen(_childAdded);
    //   _database
    //       .reference()
    //       .child(nodeName)
    //       .onChildRemoved
    //       .listen(_childRemoves);
    //   _database
    //       .reference()
    //       .child(nodeName)
    //       .onChildChanged
    //       .listen(_childChanged);
    //   postQuery = _database.reference().child('posts').orderByKey();
    // }

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.receipt),
            onPressed: () {
              Navigator.pushNamed(context, LangdingPage3.routeName);
            },
          )
        ],
        // title: Image.asset(
        //   AppAssets.imageStart1,
        // ),
        title: const Text(' Homepage'),
        leading:
            IconButton(icon: const Icon(Icons.menu_rounded), onPressed: () {}),
      ),
      body: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 12.0, bottom: 10),
                child: Text(
                  'Story',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              Expanded(
                flex: 2,
                child: BlogStory(),
              ),
              // const Text(
              //   ' Bạn có thể chia sẻ, viết ra những lời khó nói trong lòng. Và chia sẻ nó cho mọi người cùng đọc hoặc giữ nó cho riêng bản thân. ',
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //     fontFamily: 'Nunito',
              //     fontSize: 16,
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Most Popular',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text('View All',
                        style: TextStyle(
                            fontSize: 17, color: Colors.deepOrangeAccent)),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: MostPopular(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
