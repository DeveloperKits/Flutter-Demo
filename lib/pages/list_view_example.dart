import 'package:flutter/material.dart';
import 'package:flutter_first_project/model/cars.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: ListView.builder (
        itemCount: carList.length,
        itemBuilder: (context, index){
          final car = carList[index];
          return listItem(car: car);
        }
      ),
    );
  }
}

class listItem extends StatelessWidget {
  const listItem({
    super.key,
    required this.car,
  });

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 7,
          child: Image.asset(
            car.image, width: double.infinity, height: 200, fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 0,
          left: 20,
          bottom: 10,
          child: Text(
            car.name, style: TextStyle(fontSize: 20, color: Colors.lightGreen),
          ),
        ),
      ],
    );
  }
}
