import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/base_app_bar.dart';
import 'package:pokemon_rainbow_city_app/common/widgets/button/app_filled_button.dart';
import 'package:pokemon_rainbow_city_app/core/navigation/route_names.dart';
import 'package:pokemon_rainbow_city_app/l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: const Color(0xFFFFF5F5), // 연한 핑크 배경
      appBar: BaseAppBar(title: local.appTitle),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            // ← 여기 추가!
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 💬 텍스트 말풍선
                Container(
                  width: 344,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 16,
                  ),
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.deepPurple.shade100),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 6,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Text(
                    local.onboardingText,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                // 🧑 오박사 이미지
                Image.asset(
                  'assets/images/professor.png',
                  height: 200,
                  fit: BoxFit.contain,
                ),

                const SizedBox(height: 20),

                // 🔘 버튼
                AppFilledButton(
                  text: local.itemListButton,
                  onChanged: () {
                    context.pushNamed(RouteNames.itemList);
                  },
                ),

                const SizedBox(height: 16),

                // 🎱 몬스터볼 이미지
                Image.asset(
                  'assets/images/masterball.png',
                  height: 100,
                  fit: BoxFit.contain,
                ),

                const SizedBox(height: 40), // 아래 여백
              ],
            ),
          ),
        ),
      ),
    );
  }
}
