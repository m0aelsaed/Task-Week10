import 'Accounts_class.dart';

abstract class Transaction {
  final int TransactionId;
  Transaction(this.TransactionId);
  double excute(AccountsClass accounts);
}
