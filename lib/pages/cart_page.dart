import 'package:ecommerce_flutter/components/button1.dart';
import 'package:ecommerce_flutter/modules/product1.dart';
import 'package:ecommerce_flutter/modules/shop1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  void removeitemFromCart(BuildContext context, Product1 product1) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Text("remove this item from Cart?"),
        actions: [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
              context.read<Shop1>().removeFromCart(product1);
            },
            child: Text("Yes"),
          )
        ],
      ),
    );
  }

  void payButtonPressed(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              content:
                  Text("User wants to pay! connect this app to your backend."),
            ));
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop1>().cart;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Cart Page"),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Expanded(
              child: cart.isEmpty ? const Center(child: Text("Your Cart is Empty!")) : ListView.builder(
                  itemCount: cart.length,
                  itemBuilder: (context, index) {
                    final item = cart[index];

                    return ListTile(
                      title: Text(item.name),
                      subtitle: Text(
                        item.price.toStringAsFixed(2),
                      ),
                      trailing: IconButton(
                          onPressed: () => removeitemFromCart(context, item),
                          icon: Icon(Icons.remove)),
                    );
                  })),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Button1(
                onTap: () => payButtonPressed(context), child: Text("PAY NOW")),
          )
        ],
      ),
    );
  }
}
