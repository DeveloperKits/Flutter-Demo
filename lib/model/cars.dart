class Car{
  final String image;
  final String name;

  const Car({
    required this.image,
    required this.name
  });
}

const List<Car> carList = [
  Car(image: "assets/images/car_one.jpg", name: "Lamborghini"),
  Car(image: "assets/images/car_two.png", name: "Black Mamba"),
  Car(image: "assets/images/car_one.jpg", name: "Bloodshot"),
  Car(image: "assets/images/car_two.png", name: "Gray Ghost"),
];
