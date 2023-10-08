import 'package:flutter/material.dart';
import 'details_page.dart';

List<ImageDetails> _images = [
  ImageDetails(
    imagePath: 'assets/images/1.jpg.jpg',
    price: '\$20.00',
    photographer: 'Martin Andres',
    title: 'Evening',
    details:
        '   ',
  ),
  ImageDetails(
    imagePath: 'assets/images/2.jpg.jpg',
    price: '\$10.00',
    photographer: 'Abraham Costa',
    title: 'Beaches',
    details:
        '    ',
  ),
  ImageDetails(
    imagePath: 'assets/images/3.jpg.jpg',
    price: '\$30.00',
    photographer: 'Jamie Bryan',
    title: 'LandScapes',
    details:
        '    ',
  ),
  ImageDetails(
    imagePath: 'assets/images/4.jpg.jpg',
    price: '\$20.00',
    photographer: 'Jamie Bryan',
    title: 'PhotoGrapher',
    details:
        '    ', 
  ),
  ImageDetails(
    imagePath: 'assets/images/5.jpg.jpg',
    price: '\$20.00',
    photographer: 'Jamie Bryan',
    title: 'Flowers',
    details:
        '    ',
  ),
  ImageDetails(
    imagePath: 'assets/images/6.jpg.jpg',
    price: '\$20.00',
    photographer: 'Jamie Bryan',
    title: 'Forests',
    details:
        '    ',
  ),
  ImageDetails(
    imagePath: 'assets/images/7.jpg.jpg',
    price: '\$20.00',
    photographer: 'Jamie Bryan',
    title: 'SunSet',
    details:
        '    ',
  ),
  ImageDetails(
    imagePath: 'assets/images/8.jpg.jpg',
    price: '\$20.00',
    photographer: 'Jamie Bryan',
    title: 'WaterFall',
    details:
        '    ',
  ),
  ImageDetails(
    imagePath: 'assets/images/9.jpg.jpg',
    price: '\$20.00',
    photographer: 'Jamie Bryan',
    title: 'Pleasure',
    details:
        '    ',
  ),
  ImageDetails(
    imagePath: 'assets/images/10.jpg.jpg',
    price: '\$20.00',
    photographer: 'Jamie Bryan',
    title: 'Bridges',
    details:
        '    ',
  ),
  
  
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text(
              'Gallery',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              imagePath: _images[index].imagePath,
                              title: _images[index].title,
                              photographer: _images[index].photographer,
                              price: _images[index].price,
                              details: _images[index].details,
                              index: index,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'logo$index',
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(_images[index].imagePath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: _images.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ImageDetails {
  final String imagePath;
  final String price;
  final String photographer;
  final String title;
  final String details;
  ImageDetails({
    required this.imagePath,
    required this.price,
    required this.photographer,
    required this.title,
    required this.details,
  });
}