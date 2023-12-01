import 'package:ecommerce_flutter/components/button1.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_bag,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 25,
            ),
           const Text("E - commerce Shop",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Premium Quality Products",style: TextStyle(fontSize: 15,fontWeight : FontWeight.w800,color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const SizedBox(
              height: 25,
            ),
            Button1(onTap: (){
              Navigator.pushNamed(context, 'shop_page');
            }, child: Icon(Icons.arrow_forward,color: Colors.black87,))
              ],
        ),
      ),
    );
  }
}
