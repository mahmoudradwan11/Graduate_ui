import 'package:flutter/material.dart';

class LapTop {
  String productName;
  String status;
  String model;
  String price;
  String image;
  LapTop(this.productName, this.status, this.model, this.image, this.price);
}

Widget buildLaptopItem(LapTop lapTop) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          width: 180,
          height: 250,
          //color: Colors.green,
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20))),
                        height: 125,
                        child: Center(
                          child: RotatedBox(
                              quarterTurns: 1,
                              child: Text(
                                lapTop.status,
                                style: const TextStyle(color: Colors.white),
                              )),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Stack(
                        alignment: AlignmentDirectional.topEnd,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(20)),
                              color: Colors.indigo[300],
                            ),
                            height: 125,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 30, left: 10),
                              child: Image(
                                image: AssetImage(
                                  lapTop.image,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 10,
                              child: Icon(
                                Icons.favorite,
                                size: 15,
                                color: Colors.red,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.grey[300],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 10),
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                              lapTop.productName,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            )),
                            Expanded(
                              child: Container(
                                  height: 30,
                                  decoration: const BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(20))),
                                  child: const Center(
                                      child: Text(
                                    '10% Off',
                                    style: TextStyle(color: Colors.white),
                                  ))),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          lapTop.model,
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              lapTop.price,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 15),
                            ),
                          ),
                          const Spacer(),
                          Container(
                              height: 40,
                              decoration: const BoxDecoration(
                                  color: Colors.indigo,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                              child: MaterialButton(
                                onPressed: () {},
                                child: Text(
                                  'Buy'.toUpperCase(),
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
