class Item{
  final String id;
  final String name;
  final num price;
  final String img;

  Item({required this.id, required this.name, required this.price, required this.img});
}

class MenuModel{
  static final items=[Item(
      id:"pro001",
      name:"Chole Bhature",
      price: 100,
      img:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Chole_Bhature_from_Nagpur.JPG/300px-Chole_Bhature_from_Nagpur.JPG"

  )];

}
