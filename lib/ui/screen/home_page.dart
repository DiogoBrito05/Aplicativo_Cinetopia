import 'package:cinetopia/styles/colors_app.dart';
import 'package:cinetopia/ui/Components/buttons.dart';
import 'package:cinetopia/ui/screen/dashboard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
            AppColor.second,
            AppColor.third,
          ], begin: Alignment.topCenter),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: Image.asset("assets/images/logo.png"),
                ),
                Image.asset("assets/images/splash.png"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Text(
                    "O lugar ideal para buscar, salvar e organizar seus filmes favoritos!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                PrimaryButton(
                  text: "Quero começar!",
                  icon: Icons.arrow_forward,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
