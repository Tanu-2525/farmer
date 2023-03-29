import 'package:flutter/material.dart';

class waste_data extends StatelessWidget{
  final photo_waste;
  final int price;
  const waste_data({
    required this.photo_waste,
    required this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height:240,
      width: 195,
      decoration: BoxDecoration(
          color: Colors.green.shade300,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 60),
            height: 120,
            width: 147,
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(photo_waste),
                  fit: BoxFit.fill,
                )
            ),
          ),
          Container(
            alignment:AlignmentDirectional.center ,
            height: 30,
            child: Text(
              price.toString(),
              style: TextStyle(
                  color:Colors.black
              ),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: MaterialButton(
              color: Colors.orange,
              onPressed: (){},
              child: Text('ADD TO CART',
              style: TextStyle(
                color:Colors.black
              ),),
            )
          ),
        ],
      ),

    );

  }
}