import 'package:flutter/material.dart';
import 'package:movies_app/src/widgeds/card_swiper_widged.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Artistas'),
          centerTitle: false,
          backgroundColor: Colors.black,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[_swiperCards()],
          ),
        ));
  }

  Widget _swiperCards() {
    
    return CardSwiper(
      albums: [1, 2, 3, 4],
    );

  }
}
