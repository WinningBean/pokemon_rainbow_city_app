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
            // 오박사 이미지
            Positioned(
              top: screenHeight * 0.175,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/images/professor.png',
                width: screenWidth * 0.8,
                fit: BoxFit.contain,
              ),
            ),

            // 온보딩 텍스트 박스
            Positioned(
              top: 50,
              left: 29,
              right: 29,
              child: Container(
                width: MediaQuery.of(context).size.width - 58,
                padding: EdgeInsets.symmetric(vertical: 25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color(0xFF8E51FF), width: 1),
                ),
                child: Text(
                  '여행을 시작하기 전에\n포켓몬을 사러가볼까?',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'PFStardust',
                    color: const Color(0xFF8E51FF),
                    height: 1.2,
                  ),
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
              ),
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
                    // 마스터볼 버튼
                    GestureDetector(
                      onTap: () => context.push('/items'),
                      child: Image.asset(
                        'assets/images/masterball.png',
                        width: screenWidth * 0.6,
                        fit: BoxFit.contain,
                      ),
                    ),
                    // 말풍선 이미지
                    Positioned(
                      bottom: screenWidth * 0.45, // 마스터볼 위로 띄움
                      right: -screenWidth * 0.05, // 오른쪽으로 살짝 치우침
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'assets/images/textbox.png',
                            width: screenWidth * 0.42,
                            fit: BoxFit.contain,
                          ),
                          // 텍스트 위치 보정
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
