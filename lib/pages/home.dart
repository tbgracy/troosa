import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  bool hideFilter;
  String sortFilter;
  void radioTestFunction(index) => print('$index');
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/avatar.png'),
          ),
        ),
        title: Text('troosa'),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.filter_alt),
            padding: EdgeInsets.all(0.7),
            itemBuilder: (BuildContext context) {
              /* return [
                PopupMenuItem(child: Text('Hide completed')),
                PopupMenuItem(child: Text('Hide forgotten')),
                PopupMenuItem(child: Divider(), height: 0,),
                PopupMenuItem(child: Text('Sort by Name')),
                PopupMenuItem(child: Text('Sort by Date')),
                PopupMenuItem(child: Text('Sort by Tag')),
              ]; */
              return [
                PopupMenuItem(
                  child: Column(children: [
                    Row(
                      children: [
                        Text('Hide completed'),
                        Radio(value: true, groupValue: hideFilter, onChanged: (index) => radioTestFunction(index))
                      ],
                    ),
                    Row(
                      children: [
                        Text('Hide forgotten'),
                      ],
                    ),
                  ],), 
                  enabled: false,),
                // PopupMenuItem(child: , enabled: false,),
              ];
            },
          ),
          PopupMenuButton(
            padding: EdgeInsets.all(2.0),
            icon: Icon(Icons.more_vert),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(child: Text('Buddy list')),
                PopupMenuItem(child: Text('Graphs/Summaries')),
                PopupMenuItem(child: Text('Help')),
                PopupMenuItem(child: Text('About')),
                // PopupMenuItem(child: Divider()),
              ];
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Image(
            image: AssetImage('assets/images/ariary.png'), 
            fit: BoxFit.cover, 
            height: MediaQuery.of(context).size.height,),
        ],
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add), onPressed: () {}, tooltip: 'Ajouter une dette',),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
