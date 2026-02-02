import 'Accounts_class.dart';
import 'Transaction.dart';

class balanceInqiury extends Transaction {
  balanceInqiury(super.TransactionId);

  @override
  double excute(AccountsClass accounts) {
    print("your account balance is ${accounts.accountBalance}");
    return accounts.accountBalance;
  }
}
