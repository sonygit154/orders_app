import 'package:flutter/material.dart';
import '../models/order.dart';
import 'order_row.dart';

class OrderTable extends StatelessWidget {
  final List<Order> orders;

  const OrderTable({super.key, required this.orders});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        headingRowColor: WidgetStateProperty.all(Colors.grey.shade200),
        border: TableBorder.all(color: Colors.grey.shade300),
        columns: const [
          DataColumn(label: Text("Client")),
          DataColumn(label: Text("Ticker")),
          DataColumn(label: Text("Side")),
          DataColumn(label: Text("Product")),
          DataColumn(label: Text("Qty (Executed/Total)")),
          DataColumn(label: Text("Price")),
          DataColumn(label: Text("Actions")),
        ],
        rows: orders.map((order) => buildOrderRow(order)).toList(),
      ),
    );
  }
}
