import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Order #1688068'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'May 31, 05:42 PM',
                      style: TextStyle(fontSize: 18),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.circle_sharp,
                        color: Colors.blue,
                        size: 15,
                      ),
                      label: const Text(
                        'Delivered',
                        style: TextStyle(color: Colors.black54, fontSize: 18),
                      ),
                    )
                  ],
                ),
                const Divider(
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '1 ITEM',
                      style: TextStyle(fontSize: 20, color: Colors.black38),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.receipt_rounded,
                        color: Colors.blue,
                      ),
                      label: const Text(
                        'RECIEPT',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 100,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Image(
                          image: AssetImage('lib/assets/order_item.png'),
                          height: 80,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Explore | Men | Navy Blue',
                          style: TextStyle(fontSize: 20),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          '1piece',
                          style: TextStyle(fontSize: 18),
                        ),
                        const Text(
                          'Size: XL',
                          style: TextStyle(fontSize: 18),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.filter_1),
                              label: const Text(
                                'x ₹799',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const Column(
                      children: [
                        Text(
                          '₹799',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 12,
                        )
                      ],
                    )
                  ],
                ),
                const Divider(
                  thickness: 2,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 5, 0, 2),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '₹799',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 5, 0, 2),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'FREE',
                        style: TextStyle(fontSize: 18, color: Colors.green),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 15, 0, 7),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Grand Total',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      Text('₹799', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.share_outlined,
                        color: Colors.blue,
                      ),
                      label: const Text(
                        'SHARE',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Deepa',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '+91-7025214086',
                          style: TextStyle(fontSize: 18, color: Colors.black54),
                        ),
                      ],
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.phone,
                        color: Colors.blue,
                      ),
                      label: const Icon(
                        Icons.phone,
                        color: Colors.green,
                      ),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 7),
                  child: Text(
                    'Address',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                const Text(
                  'D 1101 Chartered Beverly\nHills ,Subramanyapura P.O',
                  style: TextStyle(fontSize: 18),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'City',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Bangalore',
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pincode',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '560061',
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'payment',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Online',
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              color: const Color.fromARGB(225, 144, 253, 148),
                              child: const Text(
                                'PAID',
                                style: TextStyle(
                                    color: Color.fromARGB(225, 19, 189, 28),
                                    fontSize: 20),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(
                  thickness: 2,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 15),
                  child: Text(
                    'ADDITIONAL INFORMATION',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const Text(
                  'State',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const Text(
                  'Karnataka',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Email',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const Text(
                  'greeniceaua@gmail.com',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Share receipt',
                    style: TextStyle(fontSize: 22),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
