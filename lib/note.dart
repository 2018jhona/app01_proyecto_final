void main() {
  print(userTransactions[0].date);
  print(mySelf.id);
  addNewTransaction("Deportivos", 99);
}

class Transaction {
  final String? id;
  final String? title;
  final double? amount;
  final DateTime? date;

  Transaction({
    this.id,
    this.title,
    this.amount,
    this.date,
  });
}

final List<Transaction> userTransactions = [

  Transaction(

    id: 'T1',
    title: 'Zapatos nuevos',
    amount: 69.99,
    date: DateTime.now(),
  ),
  Transaction(
    id: 'T2',
    title: 'Semanales',
    amount: 16.53,
    date: DateTime.now(),
  ),
];

var mySelf = Transaction(title: "Zapatos", id: "T1", amount: 55);

void addNewTransaction(String txTitle, double txAmount) {
  final newTx = Transaction(
    title: txTitle,
    amount: txAmount,
    date: DateTime.now(),
    id: DateTime.now().toString(),
  );
  print(newTx.title);
}
