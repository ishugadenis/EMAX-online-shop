import 'package:emax_shop_app/screens/admin%20_products_%20screen.dart';
import 'package:flutter/material.dart';
import '../shared/consts.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.7,
      backgroundColor: container_color,
      child: Column(children: [
        const SizedBox(
          height: 60,
        ),
        const CircleAvatar(
          radius: 30,
          child: Icon(Icons.shopping_bag),
        ),
        const SizedBox(
          height: 20,
        ),
        const Divider(
          thickness: 1.0,
        ),
        const ListTile(
          leading: Text('Cart'),
          trailing: Icon(Icons.shopping_cart),
        ),
        const Divider(
          thickness: 1.0,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, AdminProducts.routeName);
          },
          child: const ListTile(
            leading: Text('Manage Products'),
            trailing: Icon(Icons.settings),
          ),
        ),
        const Divider(
          thickness: 1.0,
        ),
        const ListTile(
          leading: Text('Log out'),
          trailing: Icon(Icons.logout),
        ),
      ]),
    );
  }
}