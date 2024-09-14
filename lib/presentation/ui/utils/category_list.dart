class CategoryItem {
  final String imageUrl;
  final String label;

  CategoryItem({required this.imageUrl, required this.label});
}

final List<CategoryItem> categories = [
  CategoryItem(
    imageUrl:
    'https://th.bing.com/th?id=OIP.VTq96ys3hKPbPOkaL0kQNQAAAA&w=204&h=306&c=8&rs=1&qlt=90&r=0&o=6&pid=3.1&rm=2',
    label: 'Hoodies',
  ),
  CategoryItem(
    imageUrl:
    'https://th.bing.com/th?id=OIF.u53xBJ1%2b8gPQDDVUknEijQ&w=212&h=196&c=7&r=0&o=5&pid=1.7',
    label: 'Shorts',
  ),
  CategoryItem(
    imageUrl:
    'https://th.bing.com/th?id=OIP.1RfKeDjiffAd7MnXDykgcQAAAA&w=285&h=219&c=8&rs=1&qlt=90&r=0&o=6&pid=3.1&rm=2',
    label: 'Shoes',
  ),
  CategoryItem(
    imageUrl:
    'https://th.bing.com/th?id=OIP.ZjRNSnaY_gbOm1H8mtSJUwHaHa&w=250&h=250&c=8&rs=1&qlt=90&r=0&o=6&pid=3.1&rm=2',
    label: 'Bags',
  ),
  CategoryItem(
    imageUrl:
    'http://ts4.mm.bing.net/th?id=OIP.FxwrviRZ3Acu-y1NJWRRigHaHa&pid=15.1',
    label: 'Accessories',
  ),
];