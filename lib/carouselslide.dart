import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class carousel extends StatefulWidget {
  const carousel({Key key}) : super(key: key);

  @override
  State<carousel> createState() => _carouselState();
}

class _carouselState extends State<carousel> {
  @override
  final urlImages = [
    'https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWx8ZW58MHx8MHx8&w=1000&q=80',
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pexels.com%2Fsearch%2Fhotel%2520room%2F&psig=AOvVaw39eFW4iQzhqMFSeXN-1wv_&ust=1649158698168000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCJDFn4Wp-vYCFQAAAAAdAAAAABAI',
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.raintreehotels.com%2Fthe-raintree-annasalai%2Fgallery&psig=AOvVaw39eFW4iQzhqMFSeXN-1wv_&ust=1649158698168000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCJDFn4Wp-vYCFQAAAAAdAAAAABAO',
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.usatoday.com%2Fstory%2Ftravel%2Fhotels%2F2014%2F08%2F14%2Fhotel-booking-tips%2F14006883%2F&psig=AOvVaw39eFW4iQzhqMFSeXN-1wv_&ust=1649158698168000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCJDFn4Wp-vYCFQAAAAAdAAAAABAU',
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.stayatevergreen.com%2Fessential-tips-for-choosing-the-right-bed-and-breakfast%2F&psig=AOvVaw39eFW4iQzhqMFSeXN-1wv_&ust=1649158698168000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCJDFn4Wp-vYCFQAAAAAdAAAAABAa',
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.dreamstime.com%2Fphotos-images%2Fhotel.html&psig=AOvVaw39eFW4iQzhqMFSeXN-1wv_&ust=1649158698168000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCJDFn4Wp-vYCFQAAAAAdAAAAABAf'
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: CarouselSlider.builder(
        options: CarouselOptions(height: 300),
        itemCount: urlImages.length,
        itemBuilder: (context, index, realIndex) {
          final urlImage = urlImages[index];
          return buildImage(urlImage, index);
        },
      )),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        color: Colors.grey,
      );
}
