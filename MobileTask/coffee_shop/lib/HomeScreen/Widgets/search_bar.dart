import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.6),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 104, 102, 102),
                  size: 28,
                ),
                hintText: 'Search',
                hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 104, 102, 102),
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
                fillColor: const Color.fromARGB(255, 224, 219, 219),
                filled: true,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
              ),
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          // IconButton(
          //     onPressed: () {},
          //     color: Colors.orange,
          //     icon: )
          FloatingActionButton(
            heroTag: "btn5",
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            onPressed: () {},
            child: const Icon(
              Icons.tune_rounded,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
