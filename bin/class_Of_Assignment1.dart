class Book{
  String? title;
  String? author;
  int? publicationYear;
  int pagesRead;
  static int totalBook=0;
  Book(this.title,this.author,this.publicationYear,this.pagesRead){
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