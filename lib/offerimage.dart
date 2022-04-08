class Data {
  final String imageUrl;
  //final String name;
  //final String location;

  Data(this.imageUrl); //this.name, this.location
}

class DataHome {
  List<Data> getData = [
    Data("images/hotel1.jpg"), // "Woldot Hotel", "Dhaka, Bangladesh"
    Data("images/hotel2.jpg"), //"Luxury Hotel", "Delhi, India"
    Data("images/hotel3.jpg"), // "Elite Hotel", "Mogadishu, Somalia"
    Data("images/hotel4.jpg"), // "Five star Hotel", "Nairobi, Kenya"
    Data("images/hotel5.jpg"), // "Lion Hotel", "Huway, China"
  ];

  // List<Data> getAnotherData = [
  //   Data(
  //     "images/hotel6.jpg",
  //   ), //"Dolvin Hotel", "Mogadishu, Somalia",
  //   Data(
  //     "images/hotel7.jpg",
  //   ), //"Guest Hotel", "Nairobi, Kenya"
  //   Data(
  //     "images/hotel8.jpg",
  //   ), // "Elite Hotel", "Mogadishu, Somalia"
  //   Data(
  //     "images/hotel9.jpg",
  //   ), //"Five star Hotel", "Nairobi, Kenya"
  //   Data(
  //     "images/hotel10.jpg",
  //   ), // "Lion Hotel", "Huway, China"
  // ];
}
