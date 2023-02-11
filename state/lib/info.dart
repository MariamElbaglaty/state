import 'package:flutter/foundation.dart';

class Info extends ChangeNotifier{

String name='';
String Email='';
String photo='';
int counter=5;

Nname(String nname){
name=nname;
notifyListeners();
}

Nemail(String nemail)
{
Email=nemail;
notifyListeners();
}


Nphoto(String image)
{
  photo=image;
  notifyListeners();
}


inc()
{
 counter++;
 notifyListeners();
}

dec(){
  counter--;
  notifyListeners();
}
}