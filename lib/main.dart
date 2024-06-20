import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text(
            'Sri Vari Designers',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 204, 23, 83),
          iconTheme: IconThemeData(color: Colors.white),
          actions: [
            Icon(
              Icons.search,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.more_vert,
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQieezaOFeVmoa_D97bkfqnwcZZGVwPtuQl8g&s'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Trendy Designs',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 204, 23, 83)),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Collections',
                style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 204, 23, 83),
                    decoration: TextDecoration.underline,
                    decorationColor: Color.fromARGB(255, 204, 23, 83)),
              ),
              SizedBox(
                height: 25,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildContainer(
                        'https://puracashmere.com/cdn/shop/products/longcashmerecardigan-oatmeal_1080x.jpg?v=1668920942',
                        'Cardigans\nRs.800'),
                    SizedBox(
                      width: 20,
                    ),
                    buildContainer(
                        'https://m.media-amazon.com/images/I/71HhJgTcXrL._AC_UF350,350_QL80_.jpg',
                        'Bathrobe\nRs.1000'),
                    SizedBox(
                      width: 20,
                    ),
                    buildContainer(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE_y4JvgfFSaqjYDg_2XiTUT9zT3Y_rrDjAA&s',
                        'Saree\nRs.800'),
                    SizedBox(
                      width: 20,
                    ),
                    buildContainer(
                        'https://thumbs.dreamstime.com/b/woman-standing-white-hoodie-hands-pockets-front-camera-posing-clothing-mockup-her-empty-space-design-204679726.jpg',
                        'Hoodie\nRs.1000'),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'At Sri Vari Designers, we specialize in stitching all types of womens clothing. Whether it is traditional wear, casual outfits, or custom designs, our skilled tailors are ready to bring your vision to life.We are always ready to take orders and provide top-quality tailoring services to meet your needs. \n\n For further details and to place your order, please contact us at:',
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    backgroundImage: NetworkImage(
                        'https://store-images.s-microsoft.com/image/apps.37935.9007199266245907.b029bd80-381a-4869-854f-bac6f359c5c9.91f8693c-c75b-4050-a796-63e1314d18c9?h=464'),
                    radius: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTN_dxg-ZmE37T_XXtQCNj-WRXaruyPCvA4FsZ3TbK_SC1MTD4DNWnJF81hYnH8Jkgxyw&usqp=CAU'),
                    radius: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    backgroundImage: NetworkImage(
                        'https://img.freepik.com/free-vector/www-internet-globe-grid_78370-2008.jpg?size=338&ext=jpg&ga=GA1.1.1141335507.1718755200&semt=ais_user'),
                    radius: 20,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainer(image, title) {
    return Container(
      child: Column(
        children: [
          Image(
            image: NetworkImage(image),
            height: 200,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 204, 23, 83),
            ),
          ),
        ],
      ),
    );
  }
}
