import 'package:flutter/material.dart';

class ManageStoreScreen extends StatefulWidget {
  ManageStoreScreen({super.key});

  @override
  State<ManageStoreScreen> createState() => _ManageStoreScreenState();
}

class _ManageStoreScreenState extends State<ManageStoreScreen> {
  List<List<String>> itemlist = [
    ["lib/assets/marketing_designs.png", "Marketing\nDesigns"],
    ["lib/assets/online_payments.png", "Online\nPayments"],
    ["lib/assets/discount.png", "Discount\nCoupons"],
    ["lib/assets/customers.png", "My\nCustomers"],
    ["lib/assets/QR.png", "Store QR\nCode"],
    ["lib/assets/extra_charges.png", "Extra\nCharges"],
    ["lib/assets/order.png", "Order\nForm"]
  ];
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      appBar: AppBar(
        title: const Center(child: Text('Manage Store')),
      ),
      body: GridView.builder(
          itemCount: itemlist.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        itemlist[index][0],
                        height: 20,
                        width: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        itemlist[index][1],
                        style: const TextStyle(fontSize: 17),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.currency_rupee_outlined,
              color: Colors.grey,
            ),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.apps,
                color: Colors.grey,
              ),
              label: 'Products'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.layers,
                color: Colors.grey,
              ),
              label: 'Manage'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              label: 'Account')
        ],
      ),
    );
  }
}
