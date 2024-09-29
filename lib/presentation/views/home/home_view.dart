import 'package:app_flutter_gps/core/components/search.dart';
import 'package:app_flutter_gps/core/constants/colors.dart';
import 'package:app_flutter_gps/core/constants/variables.dart';
import 'package:app_flutter_gps/presentation/widget/home/offer_flash.dart';
import 'package:app_flutter_gps/presentation/widget/home/offers_carousel_categories.dart';
import 'package:app_flutter_gps/presentation/widget/home/popular_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          leading: const SizedBox(),
          leadingWidth: 0,
          centerTitle: false,
          title: SvgPicture.asset(
            "assets/logo/Grapherz.svg",
            colorFilter: const ColorFilter.mode(primaryColor, BlendMode.srcIn),
            width: 100,
            height: 30,
          ),
          actions: [
            IconButton(
              padding: const EdgeInsets.only(right: paddingDefault),
              icon: SvgPicture.asset(
                "assets/icons/Cart.svg",
                height: 26,
                colorFilter:
                    const ColorFilter.mode(blackColor, BlendMode.srcIn),
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  right: paddingDefault,
                  left: paddingDefault,
                  bottom: paddingDefault / 1.5),
              child: Search(),
            ),
            Expanded(
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(child: Offerscarouselandcategories()),
                  SliverToBoxAdapter(child: PopularProduct()),
                  SliverPadding(
                    padding: EdgeInsets.symmetric(vertical: paddingDefault * 2),
                    sliver: SliverToBoxAdapter(child: OfferFlash()),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
