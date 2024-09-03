import 'package:flutter/material.dart';

class ProductCart extends StatelessWidget {
   final String title;
   final double price;
   final String image;
   final Color backgroundColor;
   
   const ProductCart({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.backgroundColor,


   });


  @override
  Widget build(BuildContext context) {
    return 
    Container(
      margin: const  EdgeInsets.all(20),

      decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(20),
      //color:const Color.fromRGBO(216 , 240, 253, 1) , // if there is box decpration and colour thwn we hav eto keep color inside the box decoration 
      color: backgroundColor,
      ),
      child: 
      Padding(
        padding: const EdgeInsets.all(16.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            Text(title,
            style: Theme.of(context).textTheme.titleMedium,
            ),
        
           const  SizedBox(height: 5),
        
            Text("\$ $price",
            style: Theme.of(context).textTheme.titleSmall,),
            
            const SizedBox(height: 5),
            
            Center(
              child: Image(image: AssetImage(image),
              height: 180,
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}