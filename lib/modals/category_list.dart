class Category {
  final String name;
  final String imageUrl;

  Category({this.name, this.imageUrl});

  List<Category> products = [
    Category(
        name: 'Automobile & MotorCycle',
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/ecomerce1-7e7cd.appspot.com/o/automobile.png?alt=media&token=609939ba-83a1-4bae-bd02-842d180fa8a3'),
    Category(
        name: 'Beauty,Health & Hair',
        imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/ecomerce1-7e7cd.appspot.com/o/cosmetic.png?alt=media&token=4b24e829-529a-462b-a838-09ac7cbd6bdf'),
    Category(
        name: 'CellPhone & Tabs',
        imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/ecomerce1-7e7cd.appspot.com/o/15.png?alt=media&token=3b32295d-3855-47f6-ace9-3fbbe33ccbb6'),
    Category(
        name: 'Laptop & Accessories',
        imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/ecomerce1-7e7cd.appspot.com/o/mac.png?alt=media&token=de4f60cc-6a9c-401f-851a-bf1196365919'),
    Category(
        name: 'Furniture',
        imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/ecomerce1-7e7cd.appspot.com/o/sofa.png?alt=media&token=1bf3eb98-350b-4623-a175-bea640cedc4a'),
  ];
}
