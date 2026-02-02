import 'Accounts_class.dart';
import 'Transaction.dart';

class Deposite extends Transaction {
  final double amount;
  Deposite(super.TransactionId, this.amount);

  @override
  double excute(AccountsClass accounts) {
    double amount2 = accounts.accountBalance + amount;
    print("you have add ${amount} to your account balance");
    print("your balance become ${amount2}");
    return accounts.accountBalance;
  }
}
