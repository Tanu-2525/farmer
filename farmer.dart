import 'package:farmer/waste_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const List<String> list = <String>['Distance', 'Price'];

class farmer_pg extends StatefulWidget {
  const farmer_pg({Key? key}) : super(key: key);

  @override
  State<farmer_pg> createState() => _farmer_pgState();
}

class _farmer_pgState extends State<farmer_pg> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 40,
        leadingWidth: 80,
        leading: Column(
          children: [
            Text(
              'Delivery',
              style: TextStyle(
                //fontStyle: ,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
            Row(
              children: [
                Text(' Address',
                  style: TextStyle(
                    //fontStyle: ,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Icon(Icons.arrow_drop_down_sharp)
              ],
            )
          ],
        ),
        backgroundColor: Colors.white,
        actions: [CircleAvatar(
          radius: 22,
          backgroundImage: AssetImage('lib/images/twemoji_farmer-medium-light-skin-tone.png'),
        ),],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Text('WEIGHT FILTER',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
              )),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 3, 1),
                    height: 75,
                    width: 117,
                    decoration: BoxDecoration(
                        color: Colors.green.shade300,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text('10',
                      style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                    ),
                      ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 3, 1),
                    height: 75,
                    width: 117,
                    decoration: BoxDecoration(
                        color: Colors.green.shade300,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text('20',
                          style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 3, 1),
                    height: 75,
                    width: 117,
                    decoration: BoxDecoration(
                        color: Colors.green.shade300,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text('30',
                          style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 3, 1),
                    height: 75,
                    width: 117,
                    decoration: BoxDecoration(
                        color: Colors.green.shade300,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text('40',
                          style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 3, 1),
                    height: 75,
                    width: 117,
                    decoration: BoxDecoration(
                        color: Colors.green.shade300,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text('50',
                          style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 3, 1),
                    height: 75,
                    width: 117,
                    decoration: BoxDecoration(
                        color: Colors.green.shade300,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text('100',
                          style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
              Container(
                height: 28,
                width: 156,
                child: Row(
                  children: [
                    Text(
                      'Sort by: ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_drop_down_outlined),
                      elevation: 16,
                      style: const TextStyle(color: Colors.black),
                      underline: Container(
                        height: 2,
                        color: Colors.black,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      items: list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey,
                height: 20,
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
                     child: waste_data(photo_waste: 'lib/images/ss1 1.png', price: 2000),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
                    child: waste_data(photo_waste: 'lib/images/ss 1.png', price: 100),
                  ),
                ],
              ),

              Container(
                alignment: Alignment.centerRight,
                child: BottomNavigationBar(
                  showUnselectedLabels: true,
                  backgroundColor: Colors.grey,
                  iconSize: 14,
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Home',
                      backgroundColor: Colors.grey,
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.search),
                      label: 'Search',
                      backgroundColor: Colors.grey,
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_cart_outlined),
                      label: 'Cart',
                      backgroundColor: Colors.grey,
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person),
                      label: 'Account',
                      backgroundColor: Colors.grey,
                    ),
                  ],
                ),
              ),

            ],
          ),

           ],
      ),
    );
  }
}
