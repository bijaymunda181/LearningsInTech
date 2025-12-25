variable "books" {
  default = {
    Hindi = {
      Total_book = 50 # Number
      Book_quality = "Good"
      For_sale = true
    }
  }
}

output "Books" {
  value = "Total_book = ${var.books["Hindi"]["Total_book"]} , Book_quality = ${var.books["Hindi"]["Book_quality"]} , For_sale = ${var.books["Hindi"]["For_sale"]}"
}