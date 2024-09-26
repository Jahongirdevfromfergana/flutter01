import 'package:flutter/material.dart';




class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    print("Shu teleffonni eni: $screenWidth");
    print("Shu teleffonni bo'yi: $screenHeight");
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.menu, color: Colors.white,),
        title: const Text("Profile screen", style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 24,

      ),),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: screenWidth, height: 30,),
          const Icon(Icons.person,
          size: 120,
          color: Colors.blue,),
          const Text("Jaxongir Muxammadjonov",  style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 24,

          ),),
          const Text("jahongirdevfromfergana@gmail.com",  style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 16,

          ),),
          SizedBox(height: 32,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.phone, size: 20,)),
              // Icon(Icons.phone),
              SizedBox(width: 4,),
              const Text("+998 93 600 99 46",  style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 20,

              ),),
            ],
          )
        ],
      ),
    );
  }
}
