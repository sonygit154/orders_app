import 'package:flutter/material.dart';
import '../utils/dummy_data.dart';
import '../widgets/order_table.dart';
import '../widgets/top_bar.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Open Orders"),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              // TODO: Add cancel all functionality
            },
            child: const Text("Cancel all"),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: Column(
        children: [
          const TopBar(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: OrderTable(orders: dummyOrders),
            ),
          ),
        ],
      ),
    );
  }
}
