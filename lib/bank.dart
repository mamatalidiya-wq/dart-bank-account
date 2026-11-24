class Bank{
  String name;
  double _balance = 0;

  Bank(this.name);

  Bank.empty(this.name) : _balance = 0;

  double get balance => _balance;

  void deposit(double amount) {
    if (amount>0) {
      _balance += amount;
      print('Счет пополнен на $amount сом');
    }else {
      print('Ошибка ! сумма должна ыть больше нуля');
    }
  }
  void withdraw(double amount){
    if (amount <= 0) {
      print('Ошибка ! сумма должна ыть больше нуля');
    }else if (amount > balance) {
      print('Ошибка: недостаточно денег на счету');
    } else {
      _balance -= amount;
      print('Снято $amount сом');
    }
  }
}