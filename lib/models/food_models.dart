class FoodModels {
  String imgUrl;
  String name;
  String weight;
  String price;
  FoodModels({
    required this.imgUrl,
    required this.name,
    required this.price,
    required this.weight,
  });
}

List<String> foods = ["burger", "pizza", "pasta", "sushi", "steak", "salad"];
List<List<FoodModels>> foodDetails = [
  burger,
  pizza,
  pasta,
  sushi,
  steak,
  salad,
];

List<FoodModels> burger = [
  FoodModels(
    imgUrl:
        "https://i.pinimg.com/736x/49/56/ea/4956eab9dcc963b5b31b478f3619586a.jpg",
    name: "Burger large",
    price: "30",
    weight: "500 gm",
  ),
  FoodModels(
    imgUrl:
        "https://i.pinimg.com/1200x/9a/75/6c/9a756ce5950c6cf6533c380dfaf16086.jpg",
    name: "Cheese Burger",
    price: "25",
    weight: "400 gm",
  ),
  FoodModels(
    imgUrl:
        "https://i.pinimg.com/736x/49/56/ea/4956eab9dcc963b5b31b478f3619586a.jpg",
    name: "Veggie Burger",
    price: "20",
    weight: "350 gm",
  ),
];
List<FoodModels> pizza = [
  FoodModels(
    imgUrl:
        "https://i.pinimg.com/736x/ea/f6/29/eaf629f017774ce6d4a1ecc0a55a10ba.jpg",
    name: "Pepperoni Pizza",
    price: "40",
    weight: "600 gm",
  ),
  FoodModels(
    imgUrl:
        "https://i.pinimg.com/1200x/45/70/34/457034a2d9a0e4b25e7c3ee18937b122.jpg",
    name: "Margherita Pizza",
    price: "35",
    weight: "550 gm",
  ),
  FoodModels(
    imgUrl:
        "https://i.pinimg.com/736x/ea/f6/29/eaf629f017774ce6d4a1ecc0a55a10ba.jpg",
    name: "BBQ Chicken Pizza",
    price: "45",
    weight: "650 gm",
  ),
];

List<FoodModels> pasta = [
  FoodModels(
    imgUrl:
        "https://i.pinimg.com/736x/50/33/7a/50337a274b4fcc96703efeda1e3d76f6.jpg",
    name: "Spaghetti Bolognese",
    price: "30",
    weight: "400 gm",
  ),
  FoodModels(
    imgUrl:
        "https://i.pinimg.com/1200x/9c/3b/72/9c3b7274384a0bab197fd68115a395ff.jpg",
    name: "Fettuccine Alfredo",
    price: "28",
    weight: "350 gm",
  ),
  FoodModels(
    imgUrl:
        "https://i.pinimg.com/736x/50/33/7a/50337a274b4fcc96703efeda1e3d76f6.jpg",
    name: "Penne Arrabbiata",
    price: "25",
    weight: "300 gm",
  ),
];
List<FoodModels> sushi = [
  FoodModels(
    imgUrl:
        "https://i.pinimg.com/1200x/50/00/d8/5000d85d3085b52aa06f95c576d5877b.jpg",
    name: "California Roll",
    price: "20",
    weight: "200 gm",
  ),
  FoodModels(
    imgUrl:
        "https://i.pinimg.com/1200x/2e/22/c8/2e22c8b20b519570a7dac039f8ca4cf6.jpg",
    name: "Spicy Tuna Roll",
    price: "22",
    weight: "220 gm",
  ),
  FoodModels(
    imgUrl:
        "https://i.pinimg.com/1200x/50/00/d8/5000d85d3085b52aa06f95c576d5877b.jpg",
    name: "Salmon Nigiri",
    price: "25",
    weight: "250 gm",
  ),
];
List<FoodModels> steak = [
  FoodModels(
    imgUrl:
        "https://i.pinimg.com/736x/86/62/64/866264667b53884918ef0fe661f7c151.jpg",
    name: "Ribeye Steak",
    price: "50",
    weight: "700 gm",
  ),
  FoodModels(
    imgUrl:
        "https://i.pinimg.com/1200x/3c/a9/9a/3ca99a55d718100b7dc154093d704410.jpg",
    name: "T-Bone Steak",
    price: "55",
    weight: "750 gm",
  ),
  FoodModels(
    imgUrl:
        "https://i.pinimg.com/736x/86/62/64/866264667b53884918ef0fe661f7c151.jpg",
    name: "Sirloin Steak",
    price: "45",
    weight: "650 gm",
  ),
];
List<FoodModels> salad = [
  FoodModels(
    imgUrl:
        "https://i.pinimg.com/736x/29/63/23/296323073a756895a4ff6bdff561c0e7.jpg",
    name: "Caesar Salad",
    price: "15",
    weight: "250 gm",
  ),
  FoodModels(
    imgUrl:
        "https://i.pinimg.com/1200x/a3/63/1a/a3631acd9d4ebf3f718a350c8fd951ba.jpg",
    name: "Greek Salad",
    price: "18",
    weight: "300 gm",
  ),
  FoodModels(
    imgUrl:
        "https://i.pinimg.com/1200x/a3/63/1a/a3631acd9d4ebf3f718a350c8fd951ba.jpg",
    name: "Garden Salad",
    price: "12",
    weight: "200 gm",
  ),
];
