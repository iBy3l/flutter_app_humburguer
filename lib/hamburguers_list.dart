import 'package:flutter/material.dart';
import 'burguer_page.dart';

class HamburguerList extends StatefulWidget {
  final int row;
  HamburguerList(this.row);
  @override
  _HamburguerListState createState() => _HamburguerListState();
}

class _HamburguerListState extends State<HamburguerList> {
  @override
  Widget build(BuildContext context) {
    int items = 10;
    Widget baconImage = Container(
      height: 140,
      child: Image.asset("images/ha.png"),
    );
    Widget chickImage = Container(
      height: 110,
      child: Image.asset("images/ha3.png"),
    );
    return SliverToBoxAdapter(
      child: Container(
        height: widget.row == 2 ? 330 : 240,
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) {
            bool reserve = widget.row == 2 ? index.isEven : index.isOdd;
            return Stack(
              children: [
                Container(
                  height: 240,
                  width: 200,
                  margin:
                      EdgeInsets.only(left: 20, right: index == items ? 20 : 0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(BurguerPage.tag);
                    },
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Text(
                              reserve ? " Chicken Burguer" : "Hamburguer",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Spacer(),
                                Text(
                                  "15,95 R\$",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Card(
                                      color: Theme.of(context).cardColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child:
                                          Icon(Icons.add, color: Colors.white)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      elevation: 3,
                      margin: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(45),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: reserve ? 75 : 50,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(BurguerPage.tag);
                    },
                    child: reserve ? chickImage : baconImage,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
