import 'package:get/get.dart';

import '../modles/products.dart';

class ProductController extends GetxController {
  //* ------------------ Variables ------------------ *//

  List<Products> listProduct = [
    Products(
        id: 1,
        price: 59,
        title: 'سماعات لا سلكية ',
        suTitle: 'جودة صوت عالية ',
        discribtion: '',
        image: 'images/1.jpg'),
    Products(
        id: 2,
        price: 70,
        title: ' جهاز موبايل  ',
        suTitle: 'وأصبح للموبايل قوة ',
        discribtion: '',
        image: 'images/2.jpg'),
    Products(
        id: 3,
        price: 59,
        title: ' نظارات ثلاثية الأبعاد  ',
        suTitle: 'تنقلك للعالم الإفتراضي ',
        discribtion: '',
        image: 'images/3.jpg'),
    Products(
        id: 4,
        price: 75,
        title: 'سماعات   ',
        suTitle: ' سماعات إستماع طويلة  ',
        discribtion: '',
        image: 'images/4.jpg'),
    Products(
        id: 5,
        price: 80,
        title: ' مسجل الصوت  ',
        suTitle: ' سجل اللحظات المهمة حولك  ',
        discribtion: '',
        image: 'images/5.jpg'),
    Products(
        id: 6,
        price: 110,
        title: '  كايرات كمبيوتر ',
        suTitle: 'بجودة ودقة صوت عالية ',
        discribtion: '',
        image: 'images/6.jpg')
  ];
}
