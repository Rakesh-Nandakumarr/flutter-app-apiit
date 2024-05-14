import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Nike Store',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              icon: const Icon(
                Icons.person,
                size: 40,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
          ),
        ],
      ),

      //body
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 18),
            Image.asset(
              "lib/images/nike.png",
              width: 500,
              height: 240,
            ),
            Expanded(
              child: Container(
                child: const Column(
                  children: [

                    //Heading
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        children: [
                          Text(
                            "Nike Air Max",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Text("⭐⭐⭐⭐⭐")
                            ],
                          ),
                        ],
                      ),
                    ),

                    //Description
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Description',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Nike air max is a sneakers from the Nike Collection. It has various colors from various sizes'
                                'that is affordable in all form. Check out for the Original Nike because there are lot of'
                                'fake products out there and they seem to look original..',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Review
                    SizedBox(height: 30),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Reviews',
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Sabinus',
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'The sneaker is really good and I love the color. I will be buying another one very soon'
                                'for my brother and for my sister. I will recommend this sneaker to anyone',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

