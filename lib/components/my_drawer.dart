import 'package:ecommerce_flutter/components/list_tile.dart';
import 'package:ecommerce_flutter/pages/cart_page.dart';
import 'package:ecommerce_flutter/pages/help_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.shopping_bag,
                    size: 72,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              MyListTile(
                  text: "Shop",
                  icon: Icons.home,
                  onTap: () {
                    Navigator.pop(context);
                  }),
              MyListTile(
                  text: "Cart",
                  icon: Icons.shopping_cart,
                  onTap: () {
                    // Navigator.pop(context);
                    // Navigator.pushNamed(context, '/cart_page');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartPage()));
                  }),

              MyListTile(
                  text: "Help",
                  icon: Icons.help_center_outlined,
                  onTap: () {
                    // Navigator.pop(context);
                    // Navigator.pushNamed(context, '/cart_page');
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HelpPage()));
                  }),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: MyListTile(
                text: "Exit",
                icon: Icons.exit_to_app,
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/intro_page', (route) => false);
                }),
          )
        ],
      ),
    );
  }
}
