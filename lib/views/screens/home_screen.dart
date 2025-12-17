import 'package:flutter/material.dart';
import 'package:restuorant1/models/food_models.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  String restoName = "Pizza";
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Image.network(
            "https://i.pinimg.com/1200x/0c/ac/c9/0cacc9abcaa47092e06f6e6bc7cfece4.jpg",
            fit: BoxFit.cover,
            height: 250,
            width: MediaQuery.of(context).size.width,
          ),
          Align(
            alignment: AlignmentGeometry.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 140,
            left: MediaQuery.of(context).size.width * 0.5 - 50,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                "https://i.pinimg.com/736x/1b/3c/ab/1b3cabfbc3d28623d145875590c4832b.jpg",
              ),
            ),
          ),
          Positioned(
            top: 240,
            left: MediaQuery.of(context).size.width * 0.5 - 60,
            child: Row(
              children: [
                Text(
                  restoName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.deepOrangeAccent,
                          title: Text(
                            "Edit Resurant Name",
                            style: TextStyle(fontSize: 20),
                          ),
                          content: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            controller: controller,
                          ),
                          actions: [
                            Center(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.amber,
                                ),
                                onPressed: () {
                                  restoName = controller.text;
                                  Navigator.pop(context);
                                },
                                child: Text("Save"),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  icon: Icon(Icons.edit),
                ),
              ],
            ),
          ),
          Positioned(
            top: 300,
            child: SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: selectedIndex == index
                            ? Colors.deepOrangeAccent
                            : Colors.grey[200],
                      ),
                      child: Text(
                        foods[index],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
                itemCount: foods.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 10);
                },
              ),
            ),
          ),
          Positioned(
            top: 360,
            bottom: 0,
            left: 10,
            right: 10,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.7,
              ),
              itemCount: foodDetails[selectedIndex].length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            foodDetails[selectedIndex][index].imgUrl,
                            fit: BoxFit.fill,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text(foodDetails[selectedIndex][index].name),
                            Text(foodDetails[selectedIndex][index].weight),
                            Text(
                              foodDetails[selectedIndex][index].price + " \$",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
