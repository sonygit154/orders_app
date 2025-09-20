import '../models/order.dart';

final List<Order> dummyOrders = [
  Order(
    client: "AAA001",
    ticker: "RELIANCE",
    side: "Buy",
    product: "CNC",
    qty: "50/100",
    price: "250.50",
  ),
  Order(
    client: "AAA003",
    ticker: "MRF",
    side: "Buy",
    product: "NRML",
    qty: "10/20",
    price: "2700.00",
  ),
  Order(
    client: "AAA002",
    ticker: "ASIANPAINT",
    side: "Buy",
    product: "NRML",
    qty: "10/30",
    price: "1500.60",
  ),
  Order(
    client: "AAA002",
    ticker: "TATAINVEST",
    side: "Sell",
    product: "INTRADAY",
    qty: "10/10",
    price: "2300.10",
  ),
];
