import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ShoppingList(
            products: <Product>[
              Product(name: "Eggs"),
              Product(name: "Flour"),
              Product(name: "chocolate Chips"),
            ],
          ),
        ),
      ),
      title: " Shopping App",
    );
  }
}

class Product {
  const Product({required this.name});
  final String name;
}

typedef void CartChengedCallBack(Product product, bool inCart);

class ShoppingListItems extends StatelessWidget {
  ShoppingListItems({
    required this.product,
    required this.inCart,
    required this.onCartChanged,
  }) : super(key: ObjectKey(product));
  final Product product;
  final bool inCart;
  final CartChengedCallBack onCartChanged;
  Color _getColor(BuildContext context) {
    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle? _getTextStyle(BuildContext context) {
    if (inCart) {
      return null;
    }
    return TextStyle(
        color: Colors.black54, decoration: TextDecoration.underline);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: CircleAvatar(
        backgroundColor: _getColor(context),
        child: Text(product.name[0]),
      ),
      title: Text(
        product.name,
        style: _getTextStyle(context),
      ),
    );
  }
}

class ShoppingList extends StatefulWidget {
  const ShoppingList({Key? key, required this.products}) : super(key: key);
  final List<Product> products;

  @override
  _ShoppingListState createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  Set<Product> _shoppingCart = Set<Product>();
  void _handleCartChanged(Product product, bool inCart) {
    setState(() {
      if (!inCart)
        _shoppingCart.add(product);
      else
        _shoppingCart.remove(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        children: widget.products.map((Product product) {
          return ShoppingListItems(
            product: product,
            inCart: _shoppingCart.contains(product),
            onCartChanged: _handleCartChanged,
          );
        }).toList(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
