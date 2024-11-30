class BookModel{
  String?id;
  String?name;
  String?author;
  int?pages;
  int?price;
  String?publisher;

  BookModel({this.id,this.name,this.author,this.pages,this.price,this.publisher});

  factory BookModel.fromJSON(snapshot){
    return BookModel(
      id:snapshot.id,
      name:snapshot["name"],
      author:snapshot["author"],
      pages:snapshot["pages"],
      price:snapshot["price"],
      publisher:snapshot["publisher"],
    );
  }
}