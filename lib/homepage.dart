import 'package:flutter/material.dart';
import 'player.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Text('Lyrozam', style: TextStyle(
                        fontSize: 70,
                        color: Colors.black,
                        fontWeight: FontWeight.w900)),
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: _buildSearch(context),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Card(
                        elevation: 5,
                        child: ListTile()
                    ),
                  ),
                )

              ],
            )
        )
    );
  }

  Widget _buildSearch(context) {
    return Center(
      child: Container(
          height: 60,
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.only(right: 10, left: 25),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    blurRadius: 5,
                    offset: Offset(2,2)
                )
              ]
          ),

          child: Row(
            children: <Widget>[
              Expanded(
                flex: 5,
                child: TextField(
                ),
              ),

              Expanded(
                flex: 1,
                child: IconButton(
                    icon: Icon(Icons.search, color: Colors.blue,),
                    onPressed: () => showDialog(
                        context: context,
                        builder: (context) => Center (
                            child: Player()
                        )
                    )
                ),
              )
            ],
          )
      ),
    );
  }
}