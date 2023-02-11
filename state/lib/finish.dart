
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state/welcome.dart';
import 'info.dart';
import 'package:badges/badges.dart';




class Finish extends StatefulWidget {
  const Finish({super.key});

  @override
  State<Finish> createState() => _FinishState();
}

class _FinishState extends State<Finish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
             appBar: AppBar(
        centerTitle: true,
        elevation: 10,
        title: Consumer<Info>(builder:(context,Name,child) {
          return   Text('${Name.name}', 
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 30
        ),
        );
        }
       
        ),
        backgroundColor: Colors.purpleAccent,
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20) ,bottomRight:Radius.circular(20) ))),
      


      body: SingleChildScrollView(
        child: Center(
          child:  Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Consumer<Info>(builder: (context,count,child) {
            return Badge(
              position: BadgePosition.center(),
              badgeAnimation: BadgeAnimation.scale(
                animationDuration: Duration(seconds: 2),
                colorChangeAnimationDuration: Duration(seconds: 2),


                
              ),
              badgeContent: Text('${count.counter}'),

               child: Icon(Icons.shopping_cart,
               
               size: 100,
               
               
               
               ),

              badgeStyle: BadgeStyle(badgeColor: Color.fromARGB(255, 147, 64, 255)),




            );
            }
            
         )

              ],
            ),
          )
          
          ) ),



       





    );
  }
}