import 'lib/bank.dart';

void main(){
  Bank account = Bank.empty('Akylai');

  print('Владелец : ${account.name}');
  print('Баланс : ${account.balance} сом');

  print('\nПополнение:');
  account.deposit(1000);

  print('\nСнятие:');
  account.withdraw(300);

  print('\nПопытка снять больше денег:');
  account.withdraw(2000);

  print('\nПопытка пополнить на 0:');
  account.deposit(0);

  print('\nИтоговый баланс: ${account.balance} сом');

  // account._balance = 5000;
  // account.balance = 5000;
}