import 'package:flutter/material.dart';
import '../models/order.dart';

DataRow buildOrderRow(Order order) {
  return DataRow(
    cells: [
      DataCell(Text(order.client)),
      DataCell(Text(order.ticker)),
      DataCell(Text(order.side)),
      DataCell(Text(order.product)),
      DataCell(Text(order.qty)),
      DataCell(Text(order.price)),
      DataCell(
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {
            // TODO: Add row-specific actions
          },
        ),
      ),
    ],
  );
}
