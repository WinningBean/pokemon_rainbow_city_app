import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokemon_rainbow_city_app/l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFFFF5F5),
      body: SafeArea(
        child: Stack(
          children: [
            // 오박사 이미지
            Positioned(
              top: 150,
              left: 0,
              right: 0,
              child: Center(
                child: Image.asset(
                  'assets/images/professor.png',
                  width: screenWidth,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // 온보딩 웰컴 텍스트박스
            Positioned(
              top: 50,
              left: (screenWidth - 344) / 2,
              child: Container(
                width: 344,
                height: 130,
                padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color(0xFF8E51FF), width: 1),
                ),
                child: Center(
                  child: Text(
                    '여행을 시작하기 전에 포켓몬을 사러가볼까?',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                      fontFamily: 'PFStardust',
                      color: const Color(0xFF8E51FF),
                      height: 1.2,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),

            // 마스터볼 이미지 버튼
            Positioned(
              bottom: 0,
              left: (screenWidth - 240) / 2,
              child: GestureDetector(
                onTap: () {
                  context.push('/items');
                },
                child: Image.asset(
                  'assets/images/masterball.png',
                  width: 240,
                  height: 240,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // 말풍선 이미지 (텍스트 포함)
            Positioned(
              top: 530,
              left: 168,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/images/textbox.png',
                    width: 160,
                    height: 92,
                    fit: BoxFit.contain,
                  ),
                  Transform.translate(
                    offset: const Offset(-2, -6),
                    child: const Text(
                      '포켓몬 사러가기',
                      style: TextStyle(
                        fontFamily: 'PFStardust',
                        fontSize: 16,
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
    );
  }
}
