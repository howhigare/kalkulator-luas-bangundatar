import 'package:luassegitiga/controller/ControllerBangunDatar.dart';
import 'package:luassegitiga/page/belahketupat.dart';
import 'package:luassegitiga/page/jajargenjang.dart';
import 'package:luassegitiga/page/layangan.dart';
import 'package:luassegitiga/page/lingkaran.dart';
import 'package:luassegitiga/page/persegi.dart';
import 'package:luassegitiga/page/persegiPanjang.dart';
import 'package:luassegitiga/page/segitiga.dart';
import 'package:get/get.dart';

class Item{
String name;
String images;
final pages;


Item({required this.name, this.images ='', required this.pages});
}

final LuasSegitagaController ctrl = Get.put(LuasSegitagaController());
List<Item> items = [

Item(name: "Triangle Area", images: 'images/segitiga.jpeg', pages: Segitiga()),
Item(name: "Square Area", images: 'images/persegi.jpeg', pages: PersegiPage() ),
Item(name: "Rectangle Area", images: 'images/persegipanjang.jpeg', pages: PersegiPanjangPage()),
Item(name: "Kite Area", images: 'images/layangan.jpeg', pages: LayangLayangPage (() => ctrl.resetValue())),
Item(name: "Kite Area", images: 'images/lingkaran.jpeg', pages: LingkaranPage()),
Item(name: "Parallelogram Area", images: 'images/jajargenjang.jpeg', pages: JajargenjangPage()),
Item(name: "Rhombus Area", images: 'images/belah.png', pages: BelahKetupatPage),
];
