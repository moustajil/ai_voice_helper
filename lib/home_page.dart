import 'package:aivoicehelper/Pallet.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Aimad Helper"),
        leading: Icon(Icons.menu),
         
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  width: 120,
                  height: 120,
                  margin: EdgeInsets.all(4),
                  child: Image.asset("assets/images/ai-voice-generator.png"),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                margin: EdgeInsets.symmetric(horizontal: 40,vertical: 30),
                child: Text("Good Morning , What Task Can i do for you today ?",style: TextStyle(color: Pallete.mainFontColor,fontSize: 25),
              )
          )],
          )
        ],
      ),
      
    );
  }
}