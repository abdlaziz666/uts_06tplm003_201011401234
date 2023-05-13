import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final List<Map<String, dynamic>> shoesList = [    
    {      'name': 'Adidas Ultraboost',      'image': 'https://cdn.shopify.com/s/files/1/0018/7088/9072/products/DV1693-401-PHSLH000-2000.png?v=1677644584',      'color': const Color.fromARGB(255, 153, 74, 255),      'price': '\$200',    },    
    {      'name': 'Nike Air Max 90',      'image': 'https://cdn.shopify.com/s/files/1/0018/7088/9072/products/DV1693-401-PHSLH000-2000.png?v=1677644584',      'color': const Color.fromARGB(255, 97, 255, 202),      'price': '\$150',    },  
    {      'name': 'Adidas Ultraboost',      'image': 'https://cdn.shopify.com/s/files/1/0018/7088/9072/products/DV1693-401-PHSLH000-2000.png?v=1677644584',      'color': const Color.fromARGB(255, 251, 132, 255),      'price': '\$200',    },    
    {      'name': 'Nike Air Max 90',      'image': 'https://cdn.shopify.com/s/files/1/0018/7088/9072/products/DV1693-401-PHSLH000-2000.png?v=1677644584',      'color': const Color.fromARGB(255, 197, 180, 179),      'price': '\$150',    },
    {      'name': 'Nike Air Max 90',      'image': 'https://cdn.shopify.com/s/files/1/0018/7088/9072/products/DV1693-401-PHSLH000-2000.png?v=1677644584',      'color': const Color.fromARGB(255, 255, 242, 60),      'price': '\$150',    },  
    
    ];

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 158, 89, 170),
                  width: 10.0,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: const EdgeInsets.all(50.0),
                child: const Text(
                  'Shoes',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            const Positioned(
              top: 16.0,
              right: 16.0,
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: NetworkImage(
                      'https://akcdn.detik.net.id/visual/2022/12/30/fajar-sad-boy-5_169.png?w=900&q=90'),
                ),
              ),
            ),
            Positioned(
              top: 120.0,
              left: 16.0,
              right: 16.0,
              bottom: 16.0,
              child: ListView.builder(
                itemCount: shoesList.length,
                itemBuilder: (context, index) {
                  final shoe = shoesList[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    color: shoe['color'],
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                shoe['name'],
                                style: const TextStyle(fontSize: 18.0),
                              ),
                              Text(
                                shoe['price'],
                                style: const TextStyle(fontSize: 11.0),
                              ),
                            ],
                          ),
                        ),
                        Image.network(
                          shoe['image'],
                          height: 100.0,
                          width: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
