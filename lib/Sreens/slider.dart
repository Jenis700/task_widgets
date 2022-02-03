import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class SliderScreen extends StatelessWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MySliderApp(),
          Center(
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(5),
              alignment: Alignment.center,
              constraints: BoxConstraints.expand(height: 250),
              child: imageSlider(context),
            ),
          ),
          MyRangeSliderApp(),
        ],
      ),
    );
  }
}

//......................... Slider.....................................................................................................

class MySliderApp extends StatefulWidget {
  const MySliderApp({Key? key}) : super(key: key);

  @override
  _MySliderAppState createState() => _MySliderAppState();
}

class _MySliderAppState extends State<MySliderApp> {
  double _firstValue = 10;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _firstValue,
      activeColor: Colors.green,
      inactiveColor: Colors.deepOrange,
      min: 1,
      max: 50,
      onChanged: (double values) {
        setState(() {
          _firstValue = values;
        });
      },
    );
  }
}

//.........................Range Slider.....................................................................................................

class MyRangeSliderApp extends StatefulWidget {
  const MyRangeSliderApp({Key? key}) : super(key: key);

  @override
  _MyRangeSliderAppState createState() => _MyRangeSliderAppState();
}

class _MyRangeSliderAppState extends State<MyRangeSliderApp> {
  RangeValues _secoundValue = RangeValues(10, 20);

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      values: _secoundValue,
      min: 10,
      max: 100,
      activeColor: Colors.green,
      inactiveColor: Colors.deepOrange,
      labels: RangeLabels(
        _secoundValue.start.round().toString(),
        _secoundValue.end.round().toString(),
      ),
      onChanged: (RangeValues values) {
        setState(
          () {
            _secoundValue = values;
          },
        );
      },
    );
  }
}

//.........................Image Slider.....................................................................................................

Swiper imageSlider(context) {
  return Swiper(
    itemCount: image.length,
    viewportFraction: 0.8,
    scale: 0.8,
    itemBuilder: (BuildContext context, int index) {
      return Image.network(image[index]);
    },
  );
}

List image = [
  "https://lh3.googleusercontent.com/wIcl3tehFmOUpq-Jl3hlVbZVFrLHePRtIDWV5lZwBVDr7kEAgLTChyvXUclMVQDRHDEcDhY=w640-h400-e365-rj-sc0x00ffffff",
  "https://www.wallpapertip.com/wmimgs/5-59792_hd-beautiful-original-nature.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNlWp8IqP-Sw2InEsGKvV6r2A47yXvJNT_MpfGKMfMMhPaVBrDyar4yrDO5M6xsM4WLf4&usqp=CAU",
  "https://wallup.net/wp-content/uploads/2018/10/07/960265-tiger-cat-predator-cats-fantasy-asian-oriental-nature-jungle.jpg",
  "https://wallpaperaccess.com/full/1321365.jpg",
  "https://wallpaperaccess.com/full/1167613.jpg",
  "https://mocah.org/uploads/posts/322252-Tiger-Glowing-Eyes-4K-iphone-wallpaper.jpg",
  "https://www.teahub.io/photos/full/107-1073690_black-and-blue-tiger.jpg",
  "https://images-na.ssl-images-amazon.com/images/I/91HQIYzf4iL.png",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS94uwL3pV2aC0rBNU1zpzU89l3aeUZHAxEug&usqp=CAU",
  "https://p4.wallpaperbetter.com/wallpaper/334/548/950/were-tiger-wallpaper-preview.jpg",
  "https://cdn.mwallpapers.com/photos/celebrities/animals/tiger-wallpaper-tiger-image-for-pc-mac-laptop-tablet-android-iphone-hd-wallpaper-background-downloadhd-wallpapers-desktop-background-android-iphone-1080p-4k-zrn9b.jpg",
  "https://images.wallpaperscraft.com/image/single/tiger_art_grin_131700_168x300.jpg",
  "https://cdn.wallpapersafari.com/13/76/tOe70i.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUQM_Qmni0lMhMibdkKcca6HJOVcDTH78UxYxVxKx8Y3-HTZgufcD20kKA4w66J0FyPwE&usqp=CAU",
  "https://wallpaperaccess.com/full/1321365.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNk6Zam4R6bJiqoQCSP0pm2SNPD0hxZy2laQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcCid8rgEt2-ZY1xizRlvUF7RTNv09qoGhuOBxuV-j1F4L7A1_V4748WHzDbcobXw3dUg&usqp=CAU",
];
