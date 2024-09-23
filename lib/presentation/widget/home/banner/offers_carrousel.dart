import 'dart:async';

import 'package:app_flutter_gps/core/constants/variables.dart';
import 'package:app_flutter_gps/presentation/views/home/components/list_banners.dart';
import 'package:app_flutter_gps/presentation/widget/splash/dot_indicador.dart';
import 'package:flutter/material.dart';

class OffersCarrousel extends StatefulWidget {
  const OffersCarrousel({super.key});

  @override
  State<OffersCarrousel> createState() => _OffersCarrouselState();
}

class _OffersCarrouselState extends State<OffersCarrousel> {
  int _selectedIndex = 0;
  late PageController _pageController;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_selectedIndex < offers.length - 1) {
        _selectedIndex++;
      } else {
        _selectedIndex = 0;
      }
      _pageController.animateToPage(
        _selectedIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: offers.length,
            itemBuilder: (context, index) => offers[index],
            onPageChanged: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
          FittedBox(
            child: Padding(
              padding: const EdgeInsets.all(paddingDefault),
              child: SizedBox(
                height: 16,
                child: Row(
                  children: List.generate(
                    offers.length,
                    (index) => Padding(
                        padding:
                            const EdgeInsets.only(left: paddingDefault / 4),
                        child: DotIndicador(
                          isActive: index == _selectedIndex,
                          activeColor: Colors.white70,
                          inActiveColor: Colors.white54,
                        )),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
