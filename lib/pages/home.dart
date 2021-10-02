import 'package:flutter/material.dart';
import 'package:troosa/widgets/debt_tile.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(  // Meant to open a drawer for seeing/modifying user info
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
            onTap: () {
              print('taptapsend');
            },
          ),
        ),
        title: Text('troosa'),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.filter_alt),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(child: Text('Hide completed')),
                PopupMenuItem(child: Text('Hide forgotten')),
                PopupMenuItem(child: Divider(), height: 0.1, enabled: false,),
                PopupMenuItem(child: Text('Sort by Name')),
                PopupMenuItem(child: Text('Sort by Date')),
                PopupMenuItem(child: Text('Sort by Tag')),
              ];
            },
            tooltip: 'Filter',
          ),
          PopupMenuButton(
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
            tooltip: "More",
          ),
        ],
      ),
      body: Stack(
        children: [
          Image(
            image: AssetImage('assets/images/bg.jpg'), 
            fit: BoxFit.cover, 
            height: MediaQuery.of(context).size.height,
          ),
          ListView.builder(
            itemCount: troosaItem.length,
            itemBuilder: (BuildContext context, int index) {
              return DebtTileWidget(index: index);
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add), onPressed: () {}, tooltip: 'Add a debt',),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
