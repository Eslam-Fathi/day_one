class InsufficientFundsException implements Exception {
  final String message;
  InsufficientFundsException(this.message);

  @override
  String toString() => 'InsufficientFundsException: $message';
}

class InvalidAmountException implements Exception {
  final String message;
  InvalidAmountException(this.message);

  @override
  String toString() => 'InvalidAmountException: $message';
}

class BankAccount {
  String accountNumber;
  double balance;

  BankAccount(this.accountNumber, this.balance);

  void deposit(double amount) {
    if (amount <= 0) {
      throw InvalidAmountException('Deposit amount must be greater than zero');
    }
    balance += amount;
    print('Deposited: \$${amount.toStringAsFixed(2)}');
    print('New Balance: \$${balance.toStringAsFixed(2)}');
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      throw InvalidAmountException(
          'Withdrawal amount must be greater than zero');
    }
    if (amount > balance) {
      throw InsufficientFundsException('Insufficient funds in the account');
    }
    balance -= amount;
    print('Withdrew: \$${amount.toStringAsFixed(2)}');
    print('New Balance: \$${balance.toStringAsFixed(2)}');
  }
}
