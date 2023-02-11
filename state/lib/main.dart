import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state/welcome.dart';
import 'info.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Info>(
      create: (context)=>Info(),
   child: MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Home(),

      ));
  }}


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        elevation: 10,
        title: Text('INFO', 
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 30
        ),
        ),
        backgroundColor: Colors.pink,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20) ,bottomRight:Radius.circular(20) ))),
      
      body: SingleChildScrollView(
        child: Center(
        child: Padding(padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
           Consumer<Info>(builder:(context,Name,child) {
            return TextField(
              decoration: InputDecoration(
                hintText: 'Enter your name' ,
                hintStyle:TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                ) ,
                labelText: 'Name',
      
                labelStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                ) ,
                prefixIcon: Icon(Icons.person, color: Colors.purple,),
             
                focusedBorder:  OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 117, 117, 117) ,width: 5 )
      
                ),
                
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple ,width: 5 )
      
                )
              ),
              onChanged: (value){
                Name.Nname(value);
              },
      
             );
            
        }),
          
          SizedBox(
            height: 15,
          ),
          Consumer<Info>(builder: (Context,Myemail,child){
              return  TextField(
            decoration: InputDecoration(
              hintText: 'Enter your Email' ,
              hintStyle:TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              ) ,
              labelText: 'Email',
               labelStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                ) ,
              prefixIcon: Icon(Icons.email, color: Colors.purple,),
           
                 focusedBorder:  OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 117, 117, 117) ,width: 5 )
      
                ),
                
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple ,width: 5 )
            ),
               ),
               onChanged: (value) {
                 Myemail.Nemail(value);
               },
               
               
               
                );
          }),
      
      
        SizedBox(
            height: 15,
          ),
      
      
          Consumer<Info>(builder: (Context,Myphoto,child){
              return  TextField(
            decoration: InputDecoration(
              hintText: 'Enter your photo' ,
              hintStyle:TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              ) ,
              labelText: 'Photo',
               labelStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                ) ,
              prefixIcon: Icon(Icons.image, color: Colors.purple,),
           
                 focusedBorder:  OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 117, 117, 117) ,width: 5 )
      
                ),
                
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple ,width: 5 )
            ),
               ),
                 onChanged: (value) {
                 Myphoto.Nphoto(value);
               
                 }
               
                );
          }),
      
      
      
      
      
      
      
            SizedBox(
            height: 15,
          ),
      
           ElevatedButton(onPressed: (() {
            Navigator.of(context).push(MaterialPageRoute(builder: ((context) => Welcome())));
             
           }),
            child: Text('Next',
            style: TextStyle(
              color: Colors.black,
             fontWeight: FontWeight.bold,
             fontSize: 20
            ),
            
            
            
            
            
            
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.pink[600],
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 60),
              elevation: 100,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
            ),
            
            
            )
      
      
      
      
      
      
          ],
        ),
        
        
        
        
        
        ),
        
        
        
        
        ),
      )

      
    );
  }
}


