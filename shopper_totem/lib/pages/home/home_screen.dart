import 'package:flutter/material.dart';
import 'package:shopper_totem/config/custom_colors.dart';
import 'package:shopper_totem/pages/custom_widgets/custom_button_shopper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueShopper,
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Carrinho',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
            child: IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(
                size: 35,
                Icons.close,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomButtonShopper(
                onPressed: () {
                  // Lógica quando o botão é pressionado
                },
                icon: const Icon(
                  Icons.add,
                  size: 35,
                  color: Colors.white,
                ),
                label: 'Incluir mais produtos',
                backgroundColor: blueShopper,
              ),
            ),
          ),
          const Spacer(
            flex: 3,
          ),
          const Text(
            'Aproxime o código de\nbarras do leitor',
            style: TextStyle(fontSize: 38),
            textAlign: TextAlign.center,
          ),
          const Spacer(
            flex: 3,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomButtonShopper(
                  onPressed: () {
                    // Lógica quando o botão é pressionado
                  },
                  icon: const Icon(
                    Icons.remove_shopping_cart,
                    size: 30,
                    color: Colors.white,
                  ),
                  label: 'Cancelar compra',
                  backgroundColor: redButton,
                ),
                const SizedBox(
                  width: 50,
                ),
                CustomButtonShopper(
                  onPressed: () {
                    // Lógica quando o botão é pressionado
                  },
                  icon: const Icon(
                    Icons.shopping_cart,
                    size: 30,
                    color: Colors.white,
                  ),
                  label: 'Finalizar compra',
                  backgroundColor: greenShopper,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
