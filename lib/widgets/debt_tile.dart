import 'package:flutter/material.dart';

class DebtTileWidget extends StatelessWidget {
  const DebtTileWidget({
    Key key,
    @required this.index, // ceci sert à initialiser la valeur de index
  // }) : super(key: key);
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
      ),
      child: ListTile(
        // shape: StadiumBorder(),
        title: Text('${troosaItem[index].amount}'),
        subtitle: Text('${troosaItem[index].date}'),
        trailing: CircleAvatar(
          backgroundColor: Colors.grey,
        ),
      ),
    );
  }
}


List troosaItem = [
  TroosaItem(23000, '09 Apr 2021', 'gracy.png'),
  TroosaItem(4000, '30 Mar 2021', 'glo.png'),
  TroosaItem(54000, '30 Mar 2021', 'glo.png'),
  TroosaItem(4800, '30 Mar 2021', 'glo.png'),
  TroosaItem(100000, '30 Mar 2021', 'glo.png'),
  TroosaItem(3200, '30 Mar 2021', 'glo.png'),
  TroosaItem(2000, '30 Mar 2021', 'glo.png'),
];

class TroosaItem{
  TroosaItem(this.amount, this.date, this.avatarPicture);

  int amount;
  String date;
  String avatarPicture;
}