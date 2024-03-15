import 'package:flutter/material.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp",style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Color(0xFF075E54),

        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.camera),
          color: Colors.black,),
          IconButton(onPressed: (){}, icon: Icon(Icons.search),
          color: Colors.black,),
        ],
        // leading:const  Row(
        //   children: [
        //     Icon(Icons.camera),
        //     Icon(Icons.search),
        //     Icon(Icons.more_vert_rounded)
        //   ],
      ),
    );
  }
}
