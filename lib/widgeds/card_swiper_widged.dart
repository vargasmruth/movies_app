import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CardSwiper extends StatelessWidget {

  final List<dynamic> albums;

  CardSwiper({ @required this.albums});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: Swiper(        
        layout: SwiperLayout.STACK,
        itemWidth: _screenSize.width * 0.7,
        itemHeight: _screenSize.height * 0.5,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.network('https://picsum.photos/id/23/200/300', fit: BoxFit.cover),
          );
          
        },
        itemCount: albums.length,
        // pagination: new SwiperPagination(),
        // control: new SwiperControl(),
        
      ),
    );
  }
}