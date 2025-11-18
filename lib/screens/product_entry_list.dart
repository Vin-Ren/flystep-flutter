import 'package:flutter/material.dart';
import 'package:flystep_flutter/models/product.dart';
import 'package:flystep_flutter/screens/product_detail.dart';
import 'package:flystep_flutter/widgets/left_drawer.dart';
import 'package:flystep_flutter/widgets/product_entry_card.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

class ProductListPage extends StatefulWidget {
  final String initialFilter;
  
  const ProductListPage({super.key, this.initialFilter = 'all'});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  late String _filter = widget.initialFilter;
  
  Future<List<Product>> fetchNews(CookieRequest request) async {
    final response = await request.get('http://localhost:8000/products-ajax/?filter=$_filter');
    // Decode response to json format
    var data = response;
    // Convert json data to NewsEntry objects
    Products products = Products.fromJson(data);
    return products.products;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Entry List'),
      ),
      drawer: const LeftDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _filter = 'all';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _filter == 'all' ? Colors.indigo : Colors.grey,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('All Products'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _filter = 'mine';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _filter == 'mine' ? Colors.indigo : Colors.grey,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('My Products'),
                ),
              ],
            ),
          ),
          Expanded(
            child: FutureBuilder(
        future: fetchNews(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Column(
                children: [
                  Text(
                    'There are no products yet.',
                    style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => ProductCard(
                  product: snapshot.data![index],
                  onTap: () {
                    // Navigate to news detail page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailPage(
                          product: snapshot.data![index],
                        ),
                      ),
                    );
                  },
                ),
              );
            }
          }
        },
            ),
          ),
        ],
      ),
    );
  }
}