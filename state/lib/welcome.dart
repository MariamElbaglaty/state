import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state/finish.dart';
import 'info.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
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
               child:Padding(
                 padding: const EdgeInsets.all(32),
                 child: Column(
                  children: [
                      Consumer<Info>(builder:(context,Nphoto,child) {
                   return CircleAvatar(
                         backgroundImage: NetworkImage(Nphoto.photo),
                         radius: 100,
                   );
          }),
      
                   SizedBox(
                      height: 15,
                        ),
      
      
      
      
      
      
      
                      Consumer<Info>(builder:(context,Name,child) {
                   return Text(' Welcome ${Name.name}',
            
            
                     style: TextStyle(
                  fontWeight: FontWeight.bold,
              color: Colors.blue[900],
              fontSize: 30
            ),
            
            
            
            );
          }),
      
        SizedBox(
          height: 15,
        ),
      
              Consumer<Info>(builder:(context,Myemail,child) {
                   return Text(' Your Email ${Myemail.Email}',
            
            
                     style: TextStyle(
                  fontWeight: FontWeight.bold,
              color: Colors.blue[900],
              fontSize: 30
            ),
            
            
            
            );
          }),

          SizedBox(
                      height: 30,
                        ),

           Text('Enter the Number of items ',
            
            
                     style: TextStyle(
                  fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 28
            ),
            
            
            
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 
                 Consumer<Info>(builder:(context,Mycount,child) {
                     return ElevatedButton(
                      onPressed: (() {
                        Mycount.inc();
                      })
                     
                      , child: Icon(Icons.add,
                      size: 40,
                      color: Colors.black,
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink[400],

                        elevation: 100,
                        shadowColor: Colors.black
                      ),
                      
                      
                      );
          }),
               Consumer<Info>(builder:(context,count,child) {
                   return Text('${count.counter}',
            
            
                     style: TextStyle(
                  fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 30
            ),
            
            
            
            );
          }),
           Consumer<Info>(builder:(context,Mycount,child) {
                     return ElevatedButton(
                      onPressed: (() {
                        Mycount.dec();
                      })
                     
                      , child: Icon(Icons.remove,
                      size: 40,
                      color: Colors.black,
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink[400],

                        elevation: 100,
                        shadowColor: Colors.black
                      ),
                      
                      
                      );
          }),










                ],
              ),
            ),


              Padding(
                padding: const EdgeInsets.all(15),

                child: ElevatedButton(onPressed: (() {
            Navigator.of(context).push(MaterialPageRoute(builder: ((context) => Finish())));
             
           }),
            child: Text('Next',
            style: TextStyle(
                color: Colors.black,
             fontWeight: FontWeight.bold,
             fontSize: 20
            ),
            
            
            
            
            
            
            ),
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 216, 27, 166),
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 60),
                elevation: 100,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
            ),
            
            
            ),
              )


      
      
      
      
      
      
                  ],),
               )
          
        ),
      ),
      
      
      
      
      
      
      
      );
  }
}