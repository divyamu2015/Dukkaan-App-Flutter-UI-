import 'package:flutter/material.dart';

import '../payouts.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool? loading;
  double? progressValue;
  @override
  void initState() {
    super.initState();
    loading = false;
    progressValue = 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Payments')),
        actions: const [
          Icon(Icons.info_outline),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                height: 230,
                width: 320,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 217, 217, 217),
                      width: 2),
                ),
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Transaction Limit',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '''A free limit up to which you will recieve the online payments directly in your bank''',
                      style: TextStyle(fontSize: 17),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const LinearProgressIndicator(
                      backgroundColor: Color.fromARGB(255, 223, 223, 223),
                      value: 0.3,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                      minHeight: 5.0,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    // const Text(
                    //   '36,668 left out of \u{20B9}50,000',
                    //   style: TextStyle(fontSize: 17),
                    // ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    ElevatedButton(
                      onPressed: (){},
                       child:const Text(
                        'Increase limit',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    )
                    // TextButton(
                    //   onPressed: () {},
                    //   child: const Text(
                    //     'Increase limit',
                    //     style: TextStyle(color: Colors.white, fontSize: 17),
                    //   ),
                    //   style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    // ),
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: 10,
            // ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Default Method',
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Text(
                        'Online Payments',
                        style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 167, 166, 166)),
                      ),
                      Icon(Icons.keyboard_arrow_right_outlined)
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Payment Profile",
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(
                        width: 95,
                      ),
                      Text(
                        'Bank Account',
                        style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 167, 166, 166)),
                      ),
                      Icon(Icons.keyboard_arrow_right_outlined)
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 186, 186, 186),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Payments Overview',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 107,
                      ),
                      Text(
                        'Life Time',
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 166, 166),
                            fontSize: 15),
                      ),
                      Icon(Icons.keyboard_arrow_down_outlined)
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 100,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.deepOrangeAccent,
                        ),
                        padding: const EdgeInsets.all(15.0),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'AMOUNT ON HOLD',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '\u{20B9}0',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 100,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.lightGreen,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'AMOUNT RECIEVED',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '\u{20B9}13,332',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Transactions',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        width: 85,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 231, 230, 230),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            'On hold',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 95,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            'Payouts(15)',
                            style: TextStyle(
                                color: Color.fromARGB(255, 254, 254, 254),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 85,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 224, 224, 224),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            'Refunds',
                            style: TextStyle(
                                color: Color.fromARGB(255, 154, 153, 153),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Builder(builder: (context) {
                    return SizedBox(
                      width: double.infinity,
                      height: 2100,
                      child: Expanded(
                        child: ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) => SizedBox(
                                  height: 140,
                                  width: 320,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          // Image(orders[index][4]),
                                          Image(
                                              image:
                                                  AssetImage(orders[index][4])),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            orders[index][0],
                                            style: const TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          const SizedBox(
                                            width: 50,
                                          ),
                                          Text(
                                            orders[index][1],
                                            style: const TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.blue),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            width: 65,
                                          ),
                                          Text(
                                            orders[index][2],
                                            style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 155, 155, 155)),
                                          ),
                                          const SizedBox(
                                            width: 80,
                                          ),
                                          const Icon(
                                            Icons.circle,
                                            color: Colors.green,
                                            size: 10,
                                          ),
                                          const SizedBox(
                                            width: 1,
                                          ),
                                          const Text(
                                            'Succesfull',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            orders[index][3],
                                            style: const TextStyle(
                                                color: Colors.grey),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                            separatorBuilder: (context, index) =>
                                const Divider(),
                            itemCount: orders.length),
                      ),
                    );
                  })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
