import 'Accounts_class.dart';
import 'Transaction.dart';

class Withdraw extends Transaction {
  final double amount;
  Withdraw(super.TransactionId, this.amount);

  @override
  double excute(AccountsClass accounts) {
    if (accounts.accountBalance >= amount) {
      double amount2 = accounts.accountBalance - amount;
      print("you have withdraw ${amount} from your account balance");
      print("your balance become ${amount2}");
      return accounts.accountBalance;
    } else {
      print("the amount of withdraw is more than your account balance");
      return accounts.accountBalance;
    }
  }
}
