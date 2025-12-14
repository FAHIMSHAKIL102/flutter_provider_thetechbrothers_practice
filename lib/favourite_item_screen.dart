import 'package:flutter/material.dart';
import 'package:flutter_provider_thetechbrothers_practice/provider/favourite_item_provider.dart';
import 'package:provider/provider.dart';

class FavouriteItemScreen extends StatefulWidget {
  const FavouriteItemScreen({super.key});

  @override
  State<FavouriteItemScreen> createState() => _FavouriteItemScreenState();
}

class _FavouriteItemScreenState extends State<FavouriteItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favourite App')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Consumer<FavouriteItemProvider>(
                  builder: (context, value, _) {
                    return ListTile(
                      onTap: () {
                        value.removeItem(index);
                      },
                      title: Text('Item ${index + 1}'),
                      trailing: Icon(
                        value.selectedItem.contains(index)
                            ? Icons.favorite
                            : Icons.favorite_border_outlined,
                      ),
                    );
                  },
                );
              },
              itemCount: Provider.of<FavouriteItemProvider>(
                context,
              ).selectedItem.length,
            ),
          ),
        ],
      ),
    );
  }
}
