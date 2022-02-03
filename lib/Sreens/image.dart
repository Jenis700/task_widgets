import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Screen"),
      ),
      body: SingleChildScrollView(
        child: Container(padding: EdgeInsets.all(10),
          child: Container(
            child: Column(
              children: [
                Image.asset("assets/bgi1.png", height: 300,),Text(" India or ‘Republic of India’ is a peninsular country in Asia. \n\n India is the seventh largest country in the world. \n\n India has the second largest population in the world."),
                Image.network('https://i.pinimg.com/originals/b7/ba/d9/b7bad935a612443cc39c95401db43770.jpg',
                    height: 400,
                    width: 250
                ),
                Text("Network Image"),
                
                FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: "https://cdn2.momjunction.com/wp-content/uploads/2019/07/Whatsapp-DP1.jpg")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
