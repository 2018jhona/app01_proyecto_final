import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final Function uu;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  NewTransaction(this.addTx, this.uu);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Zapatos'),
              controller: titleController,
              // onChanged: (val) {
              //   titleInput = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Monto'),
              controller: amountController,
              // onChanged: (val) => amountInput = val,
            ),
            FlatButton(
              child: Text(''),
              textColor: Colors.purple,
              onPressed: () {
                addTx(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

void prova() {
  print(NewTransaction);
}
