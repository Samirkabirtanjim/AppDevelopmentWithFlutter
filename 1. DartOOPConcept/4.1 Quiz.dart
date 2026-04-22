// Question 1:
// Create a class Book with properties: title, author, and price.
// Use a constructor to initialize these values.
// Write a method discountedPrice(double discountPercent).
// Create at least two book objects and print their details with discounted prices.

class Book {
  String title;
  String author;
  double price;

  // Constructor
  Book(this.title, this.author, this.price);

  // Method to calculate discounted price
  double discountedPrice(double discountPercent) {
    return price - (price * discountPercent / 100);
  }
}

void main() {
  Book b1 = Book("NoteBook", "K. Karan", 18.0);
  Book b2 = Book("After", "Tom H.", 30.0);

  print("Book 1 Details:");
  print("Title: ${b1.title}");
  print("Author: ${b1.author}");
  print("Price after discount: ${b1.discountedPrice(50)}");

  print("\nBook 2 Details:");
  print("Title: ${b2.title}");
  print("Author: ${b2.author}");
  print("Price after discount: ${b2.discountedPrice(10)}");
}
