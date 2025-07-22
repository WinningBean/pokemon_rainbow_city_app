import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokemon_rainbow_city_app/l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    final size = MediaQuery.of(context).size;
    final screenWidth = size.width;
    final screenHeight = size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFFFF5F5),
      body: SafeArea(
        child: Stack(
          children: [
            // 배경 이미지
            Positioned.fill(child: Image.asset('assets/images/background.png', fit: BoxFit.cover)),

            // 로켓단 이미지
            Positioned(
              top: screenHeight * 0.005,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/images/rocket.png',
                width: screenWidth * 0.8,
                fit: BoxFit.contain,
              ),
            ),

            // 타이틀 이미지
            Positioned(
              top: 50,
              left: screenWidth * 0.1,
              right: screenWidth * 0.1,
              child: Image.asset('assets/images/title.png', fit: BoxFit.contain),
            ),

            // 마스터볼 + 말풍선
            Positioned(
              bottom: 0,
              left: (screenWidth - screenWidth * 0.6) / 2,
              child: SizedBox(
                width: screenWidth * 0.6,
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.bottomCenter,
                  children: [
                    GestureDetector(
                      onTap: () => context.push('/items'),
                      child: Image.asset(
                        'assets/images/masterball.png',
                        width: screenWidth * 0.6,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Positioned(
                      bottom: screenWidth * 0.45,
                      right: -screenWidth * 0.05,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'assets/images/textbox.png',
                            width: screenWidth * 0.42,
                            fit: BoxFit.contain,
                          ),
                          Transform.translate(
                            offset: Offset(0, -screenWidth * 0.02),
                            child: Text(
                              '포켓몬 사러가기',
                              style: TextStyle(
                                fontFamily: 'PFStardust',
                                fontSize: screenWidth * 0.045,
                                fontWeight: FontWeight.w600,
                                color: Colors.deepPurple,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
