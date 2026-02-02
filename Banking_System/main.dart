import 'dart:io';

import 'Accounts_class.dart';
import 'Deposite.dart';
import 'Transaction.dart';
import 'Withdraw.dart';

void main() {
  print("hello");
  AccountsClass accountsClass = AccountsClass(
    "mohamed",
    306050402010,
    "1234567",
    50000000000,
    [],
  );
  print("choose the operation Number:");
  print("1 - Withdrow ");
  print("2 - Deposite ");
  print("3 - Balance Inquiry ");
  print("4 - Exit ");
  int operation_num = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
  switch (operation_num) {
    case 1:
      print("Enter amount : ");
      double amount = double.tryParse(stdin.readLineSync() ?? '0') ?? 0;
      Transaction withdraw = Withdraw(1, amount);
      withdraw.excute(accountsClass);
      break;
    case 2:
      print("Enter amount : ");
      double amount = double.tryParse(stdin.readLineSync() ?? '0') ?? 0;
      Transaction deposite = Deposite(1, amount);
      deposite.excute(accountsClass);
      break;
    case 3:
      accountsClass.accountBalance;
      break;
    case 4:
      print('Exit');
      break;
    default:
      print("Inavlid operation Number ");
  }
}
