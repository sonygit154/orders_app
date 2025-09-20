import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const OrdersPage(),
    );
  }
}

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final orders = [
      {
        "client": "AAA001",
        "ticker": "RELIANCE",
        "side": "Buy",
        "product": "CNC",
        "qty": "50/100",
        "price": "250.50",
      },
      {
        "client": "AAA003",
        "ticker": "MRF",
        "side": "Buy",
        "product": "NRML",
        "qty": "10/20",
        "price": "2700.00",
      },
      {
        "client": "AAA002",
        "ticker": "ASIANPAINT",
        "side": "Buy",
        "product": "NRML",
        "qty": "10/30",
        "price": "1500.60",
      },
      {
        "client": "AAA002",
        "ticker": "TATAINVEST",
        "side": "Sell",
        "product": "INTRADAY",
        "qty": "10/10",
        "price": "2300.10",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Open Orders"),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {},
            child: const Text("Cancel all"),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
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
            rows: orders
                .map(
                  (order) => DataRow(
                    cells: [
                      DataCell(Text(order["client"]!)),
                      DataCell(Text(order["ticker"]!)),
                      DataCell(Text(order["side"]!)),
                      DataCell(Text(order["product"]!)),
                      DataCell(Text(order["qty"]!)),
                      DataCell(Text(order["price"]!)),
                      DataCell(
                        IconButton(
                          icon: const Icon(Icons.more_vert),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
