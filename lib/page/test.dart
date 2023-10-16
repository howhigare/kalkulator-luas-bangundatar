import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luassegitiga/controller/ControllerBangunDatar.dart';


class Segitiga extends StatelessWidget {
  final LuasSegitagaController controller = Get.put(LuasSegitagaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luas Segitiga'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              onChanged: (value) {
                controller.alas.value = value;
              },
              decoration: InputDecoration(labelText: 'Alas'),
            ),
            TextFormField(
              onChanged: (value) {
                controller.tinggi.value = value;
              },
              decoration: InputDecoration(labelText: 'Tinggi'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                controller.luasSegita();
              },
              child: Text('Hitung Luas'),
            ),
            SizedBox(height: 20),
            Obx(() {
              return Text('Luas: ${controller.hasil}');
            }),
          ],
        ),
      ),
    );
  }
}