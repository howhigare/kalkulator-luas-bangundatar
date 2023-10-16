// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:luassegitiga/Controller/luassegitiga.dart';


// class myHomePage extends StatefulWidget {
//   const myHomePage({super.key});

//   @override
//   State<myHomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
// final LuasSegitagaController _controller = Get.put(LuasSegitagaController());
//   TextEditingController alas = TextEditingController();
//   TextEditingController tinggi = TextEditingController();
//   FocusNode aalas = FocusNode();
//   FocusNode ttinggi = FocusNode();
//   String textHasil = "kepo ya awaowakowokaowkaowkoa";

// void luasSegita(alas, tinggi){
//     var aalas = double.parse('${alas}');
//     var ttinggi = double.parse('${tinggi}');
//     var hasil = 1/2 * aalas * ttinggi;
//     textHasil = "luas segitiga dari alas $alas dan tinggi $tinggi tersebut adalah ${hasil} Cm²";
// }
//   @override


//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Luas Segitiga"),
//         centerTitle: true,
//         backgroundColor: Color.fromARGB(255, 255, 255, 255),
//       ),
//       backgroundColor: Colors.white,
//       body:  Column(
//   children: [
//     textInput(aalas, alas, hint: "masukkan nilai alas"),
//     SizedBox(height: 10),
//     textInput(ttinggi, tinggi, hint: "masukkan nilai tinggi"),

//     ElevatedButton(
//       onPressed: () {
//         setState(() {
//           luasSegita(alas.text, tinggi.text);
//         });
//       },    
//       child: Text("calculate"),
//       style: ElevatedButton.styleFrom(
//         padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//       ),
//     ),
    
//    Padding(
//   padding: const EdgeInsets.symmetric(horizontal: 20), // Adjust the padding as needed
//   child: Center(
//     child: Text(
//       textHasil,
//       textAlign: TextAlign.center, // Center align the text
//       style: TextStyle(
//         fontSize: 16, // Adjust the font size as needed
//       ),
//     ),
//   ),
// ),

//   ],
// ),
      
//     );
//   }

// Widget textInput(
//     FocusNode focus,
//     ctl, {
//     double horizontal = 40,
//     double vertical = 10,
//     String hint = "text",
//   }) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Color.fromARGB(255, 255, 217, 217),
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       margin: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
//       child: TextField(
//         autofocus: true,
//         focusNode: focus,
//         controller: ctl,
//         onTapOutside: (event) => focus.unfocus(),
//         textAlignVertical: TextAlignVertical.top,
//         keyboardType: TextInputType.number,
//         cursorColor: Colors.white,
//         style: const TextStyle(
//           fontSize: 16,
//           color: Color.fromARGB(255, 0, 0, 0),
//         ),
//         decoration: InputDecoration(  
//           contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
//           hintText: hint,
//           hintStyle: TextStyle(color: Color.fromARGB(150, 0, 0, 0)),
//           border: InputBorder.none,
//         ),
//       ),
//     );
//   }
// }