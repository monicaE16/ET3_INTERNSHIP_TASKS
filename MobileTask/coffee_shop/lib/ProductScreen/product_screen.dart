import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  ProductScreen({Key? key, required this.productImage}) : super(key: key);
  late String productImage;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        //mainAxisAlignment: MainAxisAlignment.start,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.productImage),
              fit: BoxFit.fill,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Stack(children: [
            Align(
              alignment: const Alignment(-0.9, -0.9),
              child: FloatingActionButton(
                heroTag: "btn7",
                onPressed: () {
                  Navigator.pop(context);
                },
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(17.0))),
                child: const Icon(
                  Icons.chevron_left,
                  size: 40,
                  color: Colors.black,
                ),
              ),
            ),
            Align(
              alignment: const Alignment(1, 1),
              child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.45,
                  padding: const EdgeInsets.only(top: 40, right: 14, left: 14),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Coffee',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                                color: Color.fromARGB(255, 4, 59, 7)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 22,
                              ),
                              Text(
                                '  4.4',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                '   429 reviews',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 126, 121, 121),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('New Cairo, Egypt',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 6, 63, 8))),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 236, 232, 232),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15.0),
                                    )),
                                width: 75,
                                height: 90,
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.coffee_outlined,
                                        color:
                                            Color.fromARGB(255, 224, 155, 50),
                                      ),
                                      iconSize: 50,
                                    ),
                                    const Text(
                                      'Coffee',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 236, 232, 232),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15.0),
                                    )),
                                width: 75,
                                height: 90,
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      color: Color.fromARGB(255, 224, 155, 50),
                                      icon: const Icon(Icons.local_drink),
                                      iconSize: 50,
                                    ),
                                    const Text(
                                      'Milk',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Center(
                            child: MaterialButton(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              minWidth: 250,
                              height: 50,
                              color: Colors.orange,
                              onPressed: () {},
                              textColor: Colors.white,
                              child: Text("Order Now"),
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}



// class _ProductScreenState extends State<ProductScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//           child: Column(
//         //mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Container(
//             width: double.infinity,
//             height: MediaQuery.of(context).size.height * 0.55,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage(widget.productImage),
//                 fit: BoxFit.cover,
//               ),
//               borderRadius: const BorderRadius.all(
//                 Radius.circular(20.0),
//               ),
//             ),
//             child: Align(
//                 alignment: const Alignment(-0.9, -0.9),
//                 child: FloatingActionButton(
//                   heroTag: "btn7",
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   shape: const RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(17.0))),
//                   child: const Icon(
//                     Icons.chevron_left,
//                     size: 40,
//                     color: Colors.black,
//                   ),
//                 )),
//           ),
//           Container(
//             width: double.infinity,
//             height: MediaQuery.of(context).size.height * 0.39,
//             padding: const EdgeInsets.only(top: 40, right: 14, left: 14),
//             decoration: const BoxDecoration(
//               color: Colors.blue,
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(30),
//                 topRight: Radius.circular(30),
//               ),
//             ),
//             //child: SingleChildScrollView()
//           ),
//         ],
//       )),
//     );
//   }
// }
