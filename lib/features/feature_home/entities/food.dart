import 'package:foodies/features/feature_home/entities/calories_info.dart';
import 'package:foodies/features/feature_home/entities/containment.dart';

class Food {
  Food(
      {required this.picture,
      required this.name,
      required this.description,
      required this.caloriesInfo,
      required this.containment,
      required this.price});
  String picture;
  String name;
  String description;
  List <CaloriesInfo> caloriesInfo;
 List<Containment> containment;
  String price;
}
