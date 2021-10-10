import 'package:uiblog/values/app_assets.dart';

//data
class blog {
  String name;
  String location;
  String url;
  //constructor
  blog(this.name, this.location, this.url);

  //data always in model
  static List<blog> generateblog() {
    return [
      blog('story', 'vietnam', AppAssets.imageStart1),
      blog('story', 'vietnam', AppAssets.imageStart1),
      blog('story', 'vietnam', AppAssets.imageStart1),
      blog('story', 'vietnam', AppAssets.imageStart1),
    ];
  }

  static List<blog> mostPopular() {
    return [
      blog('Travel Break', 'sylhet', AppAssets.imageStart2),
      blog('Travel Break', 'sylhet', AppAssets.imageStart2),
      blog('Travel Break', 'sylhet', AppAssets.imageStart2),
      blog('Travel Break', 'sylhet', AppAssets.imageStart2),
    ];
  }
}
