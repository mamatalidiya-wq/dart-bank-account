//библиотека
class Books{
  String name;
  String author;
  int ? pages; 
  bool isRead ;

  Books({required this.name,required this.author,this.pages = 0,this.isRead = false });

  void printInfo(){
    if (isRead == true){
      print('{$name - $author ,$pages страниц , прочитана ');
    }else{
      print('{$name - $author ,$pages страниц , не прочитана ');
    }
  } 

  void markRead(){
    isRead = true;
     
  }

   }

void main(){
  List<Books> books = [
    Books(name: 'Мастер и Маргарита', author: 'Михаил Булгаков', pages: 480),
    Books(name: 'Преступление и наказание', author: 'Фёдор Достоевский', pages: 608),
    Books(name: 'Маленький принц', author: 'Антуан де Сент-Экзюпери', pages: 96),
  ];

  books[0].markRead();
  books[2].markRead();

  print('Все книги:');
  for(var book in books){
    book.printInfo();
  }

   print('\nНе прочитанные книги:');
  for (var book in books){
    if (book.isRead == false){
      book.printInfo();
    }
  }
}


