import 'package:flutter/material.dart';
import 'package:luassegitiga/controller/ControllerBangunDatar.dart';
import 'package:luassegitiga/modules/item.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 223, 223),
      appBar: AppBar(
        
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Padding(
          //   padding: EdgeInsets.all(16.0),
          //   child: Text(
          //     "bibub calcucalae", 
          //     style: TextStyle(
          //       fontSize: 24.0,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),

          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return CustomCard(
                  pages: items[index].pages,
                  text: items[index].name,
                  image: '${items[index].images}',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String text;
  final String image;
  final pages;

  CustomCard({required this.text, required this.image, required this.pages});
  final LuasSegitagaController ctrl = Get.put(LuasSegitagaController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: InkWell(
        onTap: () {
          ctrl. resetValue();
          Get.to(pages);
           
        },
        child: Card(
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Color.fromARGB(255, 160, 77, 77),
                  ),
                ],
              ),
              leading: Image.asset(
                image,
                width: 50.0,
                height: 50.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}