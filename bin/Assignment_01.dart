class Book{
String? title;
String? author;
int? publicationYear;
int pagesRead=0;
static int totalBook=0;
Book(this.title,this.author,this.publicationYear){
  totalBook++;
}
read(int pages){
  pagesRead=pagesRead+pages;
}
getPagesRead(){
  return pagesRead;
}
getTitle(){
  return title;
}
getAuthor(){
  return author;
}
getPublicationYear(){
  return publicationYear;
}
getBookAge(){
  int currentYear=DateTime.now().year;
  return currentYear-publicationYear!;
}
}
void main(){
  Book b1=Book('Client Server Computing','Lalit Kumar',2012);
  Book b2=Book('Mobile Computing', 'Vinay Kumar',2011);
  Book b3=Book(' Computer Networks', 'Sharad Kumar',2010);
  b1.read(20);
  b2.read(5);
  b3.read(6);
  print('The title of the book1 is ${b1.getTitle()}');
  print('The title of the book2 is ${b2.getTitle()}');
  print('The title of the book3 is ${b3.getTitle()}');

  print('The author of book1 is ${b1.getAuthor()}');
  print('The author of book2 is ${b2.getAuthor()}');
  print('The author of book3 is ${b3.getAuthor()}');

  print('The publication year of the book1 was ${b1.getPublicationYear()}');
  print('The publication year of the book2 was ${b2.getPublicationYear()}');
  print('The publication year of the book3 was ${b3.getPublicationYear()}');

  print('Number of pages read for book1 is ${b1.getPagesRead()}');
  print('Number of pages read for book2 is ${b2.getPagesRead()}');
  print('Number of pages read for book3 is ${b3.getPagesRead()}');

  print('The age of the book1 is ${b1.getBookAge()}');
  print('The age of the book2 is ${b2.getBookAge()}');
  print('The age of the book3 is ${b3.getBookAge()}');

  print('The total books are ${Book.totalBook}');

}














