import 'package:app_flutter_gps/core/constants/variables.dart';
import 'package:app_flutter_gps/presentation/views/splash/components/carrousell.dart';
import 'package:app_flutter_gps/presentation/widget/splash/dot_indicador.dart';
import 'package:app_flutter_gps/presentation/widget/splash/splash_content.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge!.color,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _pageIndex = index;
                      });
                    },
                    itemCount: listSplash.length,
                    itemBuilder: (context, index) => SplashContent(
                      texOnTop: index.isEven,
                      image: listSplash[index].image,
                      title: listSplash[index].title,
                      description: listSplash[index].description,
                    ),
                  ),
                ),
                Row(
                  children: [
                    ...List.generate(
                        listSplash.length,
                        (index) => Padding(
                              padding: const EdgeInsets.only(
                                  top: paddingDefault,
                                  right: paddingDefault / 4),
                              child: DotIndicador(
                                isActive: _pageIndex == index,
                              ),
                            )),
                    const Spacer(),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_pageIndex < listSplash.length - 1) {
                            _pageController.nextPage(
                                duration: defaultDuration,
                                curve: Curves.easeInOut);
                          } else {
                            Navigator.pushNamed(context, 'menu');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            shape: const CircleBorder()),
                        child: Icon(
                          _pageIndex < listSplash.length - 1
                              ? Icons.arrow_forward
                              : Icons.done,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: paddingDefault),
              ],
            )),
      ),
    );
  }
}
