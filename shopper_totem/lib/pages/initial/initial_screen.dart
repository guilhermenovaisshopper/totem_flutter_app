import 'package:flutter/material.dart';
import 'package:shopper_totem/config/custom_colors.dart';
import 'package:shopper_totem/pages/home/home_screen.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
          (Route<dynamic> route) => false,
        );
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80, bottom: 60),
                  child: Image.asset(
                    'assets/app_images/logo_white.png',
                  ),
                ),
                Image.asset('assets/app_images/cart.png'),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Toque na tela ou passe o produto para começar',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    bottom: 30,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(45),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset('assets/app_images/logo_shopper.png'),
                      const Text(
                        'Receba em casa os mais de 10.000\nprodutos disponíveis no APP Shopper',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: greenShopper,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16, top: 16),
                            child: Image.asset(
                                'assets/app_images/qrcode_icon.png'),
                          ),
                          const Text(
                            'Escaneie o QR Code\npara baixar o APP',
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      )
                    ],
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
