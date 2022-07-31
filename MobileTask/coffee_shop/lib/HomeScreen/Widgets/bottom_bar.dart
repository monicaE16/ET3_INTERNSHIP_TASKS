import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton(
          heroTag: "btn11",
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          onPressed: () {},
          child: const Icon(
            Icons.home_outlined,
            color: Colors.white,
            size: 40,
          ),
        ),
        FloatingActionButton(
          heroTag: "btn22",
          backgroundColor: Colors.white,
          elevation: 0,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          onPressed: () {},
          child: const Icon(
            Icons.favorite_outline,
            color: Colors.grey,
            size: 40,
          ),
        ),
        FloatingActionButton(
          heroTag: "btn33",
          backgroundColor: Colors.white,
          elevation: 0,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          onPressed: () {},
          child: const Icon(
            Icons.bookmark_border_outlined,
            color: Colors.grey,
            size: 40,
          ),
        ),
        FloatingActionButton(
          heroTag: "btn44",
          backgroundColor: Colors.white,
          elevation: 0,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          onPressed: () {},
          child: const Icon(
            Icons.person_outline,
            color: Colors.grey,
            size: 40,
          ),
        ),
      ],
    );
  }
}
