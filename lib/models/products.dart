class Product{
   late int id , price ;
   late String title , subTitle, discription, image;

   Product(
    int id,
    int price,
    String title,
    String subTitle,
    String discription,
    String image
   )
   {
    this.id = id;
    this.price = price;
    this.title = title;
    this.subTitle = subTitle;
    this.discription = discription;
    this.image = image;
   }

}