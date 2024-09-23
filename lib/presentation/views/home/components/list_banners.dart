import 'package:app_flutter_gps/presentation/widget/home/banner/banner_style_m_1.dart';
import 'package:app_flutter_gps/presentation/widget/home/banner/banner_style_m_2.dart';

List offers = [
  BannerStyleM1(title: "Up to 50% off \nfor all items", onPressed: () {}),
  BannerStyleM2(
    title: "Get 20% off \nfor all items",
    subtitle: "Collection of 2021",
    onPressed: () {},
    discount: 20,
  ),
  BannerStyleM1(
    title: "Only today \nFree shipping",
    onPressed: () {},
    image:
        "https://i.etsystatic.com/6107039/r/il/036f25/1491476258/il_794xN.1491476258_khyh.jpg",
  ),
  BannerStyleM2(
      title: "The Best \nfor you",
      subtitle: "Collection of 2021",
      onPressed: () {},
      discount: 30,
      image:
          "https://i.etsystatic.com/6107039/r/il/b21388/1510782928/il_794xN.1510782928_lqkp.jpg"),
];
