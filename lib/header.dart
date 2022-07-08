import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  _nameState createState() => _nameState();
}

// ignore: camel_case_types
class _nameState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: size.height / 5,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(25),
                      ),
                      boxShadow: [
                        BoxShadow(blurRadius: 2),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 35,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("images/dog.jpg"),
                                radius: 30,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Gabriel Lima',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.red,
                                  ),
                                  child: Text(
                                    "GOLD Membro",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              "154 R\$",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 50,
                  width: size.width,
                  child: Card(
                    color: Colors.white,
                    elevation: 3,
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Oque deseja comer?",
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.red,
                        ),
                        contentPadding: EdgeInsets.only(left: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
