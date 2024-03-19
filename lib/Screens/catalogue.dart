import 'package:flutter/material.dart';
import 'package:dukaan/catalogue_list.dart';

class ScreenSix extends StatefulWidget {
  const ScreenSix({super.key});

  @override
  State<ScreenSix> createState() => _ScreenSixState();
}

class _ScreenSixState extends State<ScreenSix>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Catalogue',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        actions: const [
          Icon(
            Icons.search,
            size: 25,
          ),
          SizedBox(
            width: 25,
          )
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            color: Colors.blue,
            child: TabBar(
                indicatorColor: Colors.white,
                controller: tabController,
                tabs: const [
                  Tab(
                    icon: Text(
                      'Products',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Tab(
                    icon: Text(
                      'Catogaries',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  )
                ]),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: CardGenerator(
                      image: catalouge[index][0],
                      name: catalouge[index][1],
                      price: catalouge[index][2],
                    ));
              },
              itemCount: 8,
            ),
          )
        ],
      )),
    );
  }
}

// ignore: must_be_immutable
class CardGenerator extends StatefulWidget {
  CardGenerator(
      {super.key,
      required this.image,
      required this.name,
      required this.price});
  String image;
  String name;
  String price;
  bool state = true;
  @override
  State<CardGenerator> createState() => _CardGeneratorState();
}

class _CardGeneratorState extends State<CardGenerator> {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10, 
        child: SizedBox(
            height: 180,
            width: double.infinity,
            child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black26),
                            ),
                            child: Image(
                              image: AssetImage(
                                widget.image,
                              ),
                              height: 70,
                              width: 70,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.name,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  const Text('1 piece'),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    widget.price,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 21),
                                  ),
                                  widget.state
                                      ? Text(
                                          'In stock',
                                          style: TextStyle(
                                              color: Colors.greenAccent[400]),
                                        )
                                      : const Text(
                                          'Out of stock',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 252, 24, 24)),
                                        ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Icon(
                                    Icons.more_vert,
                                    color: Colors.black38,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Switch(
                                    value: widget.state,
                                    onChanged: (value) => setState(() => widget
                                        .state = widget.state ? false : true),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.share_outlined,
                          color: Colors.black,
                        ),
                        Text(
                          'SHARE PRODUCT',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    )
                  ],
                ))));
  }
}
