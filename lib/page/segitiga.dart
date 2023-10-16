import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luassegitiga/controller/ControllerBangunDatar.dart';

class Segitiga extends StatelessWidget {
  final LuasSegitagaController controller = Get.put(LuasSegitagaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Triangle Area'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        color: const Color.fromARGB(255, 255, 219, 219), // Ganti dengan warna latar yang sesuai
        child: Card(
          elevation: 4, // Menambahkan bayangan pada card
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  onChanged: (value) {
                    controller.alas.value = value;
                  },
                  
                  decoration: InputDecoration(labelText: 'Base'),
                ),
                SizedBox(height: 20),
                TextFormField(
                  onChanged: (value) {
                    controller.tinggi.value = value;
                  },
                  decoration: InputDecoration(labelText: 'Height'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    controller.luasSegita();
                  },
                  child: Text('Calculate'),
                ),
                SizedBox(height: 20),
                Obx(() {
                  return Text('${controller.hasil}',
                      style: TextStyle(fontSize: 18));
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
