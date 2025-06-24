// import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:whatsappui/widgets/product_details_screen.dart';
// class ProductScreen extends StatelessWidget {
//
//   List<String> imageList = [
//     "image/image1.jpg",
//     "image/image2.jpg",
//     "image/image3.jpg",
//     "image/image4.jpg",
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(
//         title: Text("Product Overview"),
//         leading: BackButton(),
//         backgroundColor: Colors.transparent,
//         foregroundColor: Colors.black,
//         elevation: 0,
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//           child: SafeArea(
//               child:Padding(padding: EdgeInsets.all(20),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                     height: 450,
//                     width: MediaQuery.of(context).size.width,
//                     child: FanCarouselImageSlider(
//                         sliderHeight: 430,
//                         autoPlay: true,
//                         imagesLink: imageList,
//                         isAssets: true,
//                         indicatorActiveColor: Colors.blue,  // Optional
//                         indicatorDeactiveColor: Colors.grey
//                     ),
//
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(height: 30,),
//                           Text(
//                             "Warm Zipper",
//                             style: TextStyle(
//                               color: Colors.black87,
//                               fontWeight: FontWeight.w900,
//                               fontSize: 25,
//                             )
//                           ),
//                           SizedBox(height: 5,),
//                           Text(
//                            "Hooded Jacket",
//                             style: TextStyle(
//                               color: Colors.black54,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           )
//                         ],
//
//                       ),
//                       Text("\$300.00",
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 25,
//                         color: Color(0xffef6969)
//                       ),)
//                     ],
//                   ),
//                   SizedBox(height: 10,),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: RatingBar.builder(
//                     initialRating: 3,
//                     minRating: 1,
//                     direction: Axis.horizontal,
//                     allowHalfRating: true,
//                     itemCount: 5,
//                     itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
//                     itemBuilder: (context, _) => Icon(
//                       Icons.star,
//                       color: Colors.amber,
//                     ),
//                     onRatingUpdate: (rating) {},
//                   ),
//                 ),
//                   SizedBox(height: 10,),
//                   Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       "Cool, windy weather is on its way.  Send him out\n the door in"
//                           "a jacket he wants to wear\n Zooper Hooded Jacket.",
//                       style: TextStyle(
//                         color: Colors.black54,
//                         fontWeight: FontWeight.w400,
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 30,),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Container(
//
//                         height: 60,
//                         width: 60,
//                         decoration: BoxDecoration(
//                           color: Color(0x1F989797),
//                           borderRadius: BorderRadius.circular(30)
//                         ),
//                         child: Center(child: Icon(Icons.shopping_cart,color: Color(0xffef6969),)),
//                       ),
//                       ProductDetailsScreen(),
//
//                     ],
//                   ),
//
//
//
//
//                 ],
//               ),
//               )
//           ),
//       ),
//     );
//   }
// }
