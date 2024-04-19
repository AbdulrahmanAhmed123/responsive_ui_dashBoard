

class MyTransactionItemModel
{
  final String title;
  final String date;
  final String amount;
  final TransactionStatus transactionStatus;
 const MyTransactionItemModel({required this.title, required this.date, required this.amount, required this.transactionStatus});
}

enum TransactionStatus
{
  deposit, withdrawal
}