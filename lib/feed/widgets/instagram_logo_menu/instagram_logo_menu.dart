import 'package:flutter/material.dart';

class InstagramLogoMenu extends StatelessWidget {
  const InstagramLogoMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: PopupMenuButton(
        color: Colors.black,
        itemBuilder: (BuildContext context) => [
          createMenuItem('Seguindo', Icons.group_add_outlined, () {
            print('Seguindo...');
          }),
          createMenuItem('Favoritos', Icons.star_border, () {
            print('Favoritos...');
          }),
        ],
        child: Image.asset(
          'assets/instagram-name-white.png',
        ),
      ),
    );
  }

  PopupMenuItem createMenuItem(
      String name, IconData icon, Function() callback) {
    return PopupMenuItem(
      onTap: callback,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: const TextStyle(color: Colors.white),
          ),
          Icon(
            icon,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
