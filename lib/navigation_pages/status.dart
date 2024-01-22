import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(
              left: 25.0,
              right: 18.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Status",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.more_vert, size: 28, color: Colors.black),
              ],
            ),
          ),
          const SizedBox(height: 8.0),
          Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 18.0, top: 0, right: 10.0, bottom: 0),
                  child: Row(
                    children: List.generate(
                      10,
                      (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: const EdgeInsets.only(top: 5),
                          child: const Column(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                  "https://media.architecturaldigest.com/photos/63079fc7b4858efb76814bd2/16:9/w_4000,h_2250,c_limit/9.%20DeLorean-Alpha-5%20%5BDeLorean%5D.jpg",
                                ),
                                radius: 35.0,
                              ),
                              Text("Car")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          const Divider(
            color: Colors.black,
            height: 12,
            thickness: 2,
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  left: 25.0,
                  right: 18.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Channels",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.add, size: 28, color: Colors.black),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 25.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      child: Image.asset(
                        'assets/images/wp.png',
                        height: 50.0,
                        width: 50.0,
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    const Text(
                      "Washington Post",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 200,
                            child: Text(
                              "Twenty-five people were killed in the Russian city of Belgorod, about 20 miles from the border with Ukraine, in a rocket...",
                              textAlign: TextAlign.left,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 10,
                                height: 10,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                "12:34 PM",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/images/bombblast.jpg',
                      height: 115.0,
                      width: 135.0,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              const Divider(
                color: Colors.black,
                height: 12,
                thickness: 2,
              ),
              Container(
                padding: const EdgeInsets.only(left: 25.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      child: Image.asset(
                        'assets/images/wp.png',
                        height: 50.0,
                        width: 50.0,
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    const Text(
                      "Washington Post",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 200,
                            child: Text(
                              "Twenty-five people were killed in the Russian city of Belgorod, about 20 miles from the border with Ukraine, in a rocket...",
                              textAlign: TextAlign.left,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 10,
                                height: 10,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                "12:34 PM",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/images/bombblast.jpg',
                      height: 115.0,
                      width: 135.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(
            color: Colors.black,
            height: 12,
            thickness: 2,
          ),
          const SizedBox(
            height: 5.0,
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 25.0, right: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Find Channels",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Text("See All",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold)),
                        SizedBox(width: 8),
                        Icon(Icons.arrow_forward_ios_sharp),
                      ],
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 18.0, top: 0, right: 10.0, bottom: 0),
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        margin: const EdgeInsets.only(top: 15.0, right: 5.0),
                        child: Card(
                          elevation: 10,
                          surfaceTintColor: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/wp.png',
                                height: 50.0,
                                width: 50.0,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Card Image 1',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        margin: const EdgeInsets.only(top: 15.0, right: 5.0),
                        child: Card(
                          elevation: 10,
                          surfaceTintColor: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/wp.png',
                                height: 50.0,
                                width: 50.0,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Card Image 2',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        margin: const EdgeInsets.only(top: 15.0, right: 5.0),
                        child: Card(
                          elevation: 10,
                          surfaceTintColor: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/wp.png',
                                height: 50.0,
                                width: 50.0,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Card Image 3',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        margin: const EdgeInsets.only(top: 15.0, right: 5.0),
                        child: Card(
                          elevation: 10,
                          surfaceTintColor: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/wp.png',
                                height: 50.0,
                                width: 50.0,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Card Image 4',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        margin: const EdgeInsets.only(top: 15.0, right: 5.0),
                        child: Card(
                          elevation: 10,
                          surfaceTintColor: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/wp.png',
                                height: 50.0,
                                width: 50.0,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Card Image 5',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
