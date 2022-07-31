import 'package:coffee_shop/ProductScreen/product_screen.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  late Color iconColor;
  late int imageNum;
  late String image;
  @override
  void initState() {
    super.initState();
    iconColor = Colors.black;
    imageNum = widget.index % 4 + 1;
    image = 'assets/images/image$imageNum.png';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => ProductScreen(
              productImage: image,
            ),
          ),
        );
      },
      onDoubleTap: () {
        setState(() {
          iconColor = iconColor == Colors.black ? Colors.orange : Colors.black;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
              ),
              Align(
                  alignment: const Alignment(1.1, -0.5),
                  heightFactor: 0.4,
                  child: FloatingActionButton(
                    heroTag: "btn$imageNum",
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white, width: 4),
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    backgroundColor: const Color.fromARGB(255, 230, 225, 225),
                    onPressed: () {
                      setState(() {
                        iconColor = iconColor == Colors.black
                            ? Colors.orange
                            : Colors.black;
                      });
                    },
                    child: Icon(
                      Icons.favorite_border,
                      color: iconColor,
                      size: 25,
                    ),
                  )),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                height: 600,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        'Coffee',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Color.fromARGB(255, 4, 59, 7)),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 12,
                          ),
                          Text(
                            '  4.4',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            '   429 reviews',
                            style: TextStyle(
                                color: Color.fromARGB(255, 126, 121, 121),
                                fontSize: 13,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      const Text('New Cairo, Egypt',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 6, 63, 8)))
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
