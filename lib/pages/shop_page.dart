import 'package:ecommerce_flutter/components/my_drawer.dart';
import 'package:ecommerce_flutter/components/my_product_tile.dart';
import 'package:ecommerce_flutter/modules/product1.dart';
import 'package:ecommerce_flutter/modules/shop1.dart';
import 'package:ecommerce_flutter/pages/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop1>().shop;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange.shade600,
          elevation: 0,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          centerTitle: true,
          title: Text("Shop Page",style: TextStyle(fontWeight: FontWeight.w700),),
          actions: [
            IconButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartPage())),
                icon: Icon(Icons.shopping_cart))
          ],
        ),
        drawer: const MyDrawer(),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: ListView(
          children: [
            const SizedBox(
              height: 25,
            ),
            Center(
                child: Text(
              "Pick from a selected list of premium products",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,fontSize: 16,fontWeight: FontWeight.w500),
            )),
            SizedBox(
              height: 550,
              child: ListView.builder(
                  itemCount: products.length,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(15),
                  itemBuilder: (context, index) {
                    final product = products[index];

                    return MyProductTile(product1: product);
                  }),
            ),
          ],
        ));
  }
}
