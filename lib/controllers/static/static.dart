import 'package:assignment1/controllers/constant/imagesassets.dart';

import '../../models/recentlymodel.dart';
import '../../models/recommendedmodel.dart';

List<recommendedmode> listone = [
  recommendedmode(
      title: "Modren Dining Chair", price: "\$170.00", image: imagesassets.one),
  recommendedmode(title: "Modren Leather Sofa", price: "\$200.00", image: imagesassets.two)
];

List<recentlymodel> listtwo =[
  recentlymodel(title: "Mid Century Dining\nChair" , dis: "Chair", price: "\$130.00", image: imagesassets.three),
  recentlymodel(title: "Meridian Furniture\nChair" , dis: "Chair", price: "\$180.00", image: imagesassets.four),
  recentlymodel(title: "Dining Chair With \nArms" , dis: "Chair", price: "\$230.00", image: imagesassets.five),
];
