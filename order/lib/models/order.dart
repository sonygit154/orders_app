class Order {
  final String client;
  final String ticker;
  final String side;
  final String product;
  final String qty;
  final String price;

  Order({
    required this.client,
    required this.ticker,
    required this.side,
    required this.product,
    required this.qty,
    required this.price,
  });
}
