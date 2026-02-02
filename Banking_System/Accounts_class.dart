class AccountsClass {
  double accountNumber = 0;
  String accountName = "";
  String accountPassword = "";
  double accountBalance = 0;
  List transactionHistory = [];
  AccountsClass(
    this.accountName,
    this.accountNumber,
    this.accountPassword,
    this.accountBalance,
    this.transactionHistory,
  );
  getBalance() {
    print(accountBalance);
  }

  Withdraw() {}

  Deposite() {}

  getTransactionHistory() {
    print(transactionHistory);
  }

  accountDetails() {
    print(accountNumber);
    print(accountName);
    print(accountBalance);
  }
}
