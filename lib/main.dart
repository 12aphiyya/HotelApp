import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(HotelApp());
}

class Hotel {
  late String name;
  late int rating;
  late String description;
  late int price;
  late String img;

Hotel({
 required this.name,
 required this.rating,
 required this.description,
 required this.price,
 required this.img,
});
}

class HotelApp extends StatelessWidget {
  HotelApp({super.key});

  final List<Hotel> hotels = [
    Hotel(
      name: 'Songphunburi',
      price: 16,
      description: 'Wifi include',
      rating: 3,
      img: 'images/1.jpg',
    ),

    Hotel(
      name: 'Songphunburi 2',
      price: 16,
      description: 'Wifi include',
      rating: 3,
      img: 'images/2.jpg',
    ),

    Hotel(
      name: 'Songphunburi 3',
      price: 16,
      description: 'Wifi include',
      rating: 3,
      img: 'images/3.jpg',
    ),

    Hotel(
      name: 'Songphunburi 4',
      price: 16,
      description: 'Wifi include',
      rating: 3,
      img: 'images/4.jpg',
    ),

    Hotel(
      name: 'Songphunburi 5',
      price: 16,
      description: 'Wifi include',
      rating: 3,
      img: 'images/5.jpg',
    ),

    Hotel(
      name: 'Songphunburi 6',
      price: 16,
      description: 'Wifi include',
      rating: 3,
      img: 'images/6.jpg',
    ),

    Hotel(
      name: 'Songphunburi 7',
      price: 16,
      description: 'Wifi include',
      rating: 3,
      img: 'images/7.jpg',
    ),

    Hotel(
      name: 'Songphunburi 8',
      price: 16,
      description: 'Wifi include',
      rating: 3,
      img: 'images/8.jpg',
    ), 
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hotel App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aphiyya'),
          ),
          body: GridView.builder(
            itemCount: hotels.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:2,
              ),
              itemBuilder: (_, int index) {
                return InkWell(
                  child: GridTile(
                    child: Container(
                      color: const Color.fromARGB(255, 12, 154,215),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(hotels[index].img),
                          Text(hotels[index].name + 'kak'),
                          Text('Rating: ${hotels[index].rating}'),
                          Text('Price: \$${hotels[index].price}'),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    ));
  }   
}