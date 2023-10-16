import 'package:get/get.dart';

class LuasSegitagaController extends GetxController {
  RxString hasil = "result".obs;
  RxString alas = "".obs;
  RxString tinggi = "".obs;


void resetValue(){
  alas.value = "";
  tinggi.value = "";
  hasil.value = "please input the value first! :D";
}


  void luasSegita (){
        double base = double.tryParse(alas.value) ?? 0;   
        double height = double.tryParse(tinggi.value) ?? 0;   

        double rumus = 0.5 * base * height;

       hasil.value = "The area of the triangle with a base of $alas and a height of $tinggi is ${rumus}";
  }

  void persegi(){
    double side = double.parse(alas.value);

    double rumus = side * side;
    hasil.value = "The area of the square with a side length of ${side} is: ${rumus}.";
 
  }

  void persegiPanjang(){
    double length = double.parse(alas.value);
    double width = double.parse(tinggi.value);

    double rumus = length * width;
    hasil.value = "The area of the rectangle is: ${rumus}.";
  }

  void layangan(){
    double d1 = double.parse(alas.value);
    double d2 = double.parse(tinggi.value);

    double rumus = 0.5 * d1 * d2;

    hasil.value = "The area of the rhombus with diagonal 1 $d1 and diagonal 2 $d2 is ${rumus}.";
  }
  
   void luasLingkaran(){
    double r = double.tryParse(alas.value) ?? 0;

    double rumus = 3.14 * r * r;

    hasil.value = "The area of the circle with a radius of $r is ${rumus}.";
  }

  void jajargenjang(){
    double base = double.parse(alas.value);
    double height = double.parse(tinggi.value);

    double rumus = base * height;
    hasil.value = "The area of the parallelogram with a base of $alas and a height of $tinggi is ${rumus}.";
  }

  void belahKetupat(){
    double d1 = double.parse(alas.value);
    double d2 = double.parse(tinggi.value);

    double rumus = 0.5 * d1 * d2;
    hasil.value = "The area of the rhombus with diagonal 1 $d1 and $d2 is ${rumus}.";
  }
}

