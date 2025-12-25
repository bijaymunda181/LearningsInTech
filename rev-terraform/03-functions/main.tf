# variable "books" {
#   default = {
#     Hindi = {
#       Total_book = 50 # Number
#       Book_quality = "Good"
#       For_sale = true
#     }
#   }
# }
#
# output "Books" {
#   value = "Total_book = ${var.books["Hindi"]["Total_book"]} , Book_quality = ${var.books["Hindi"]["Book_quality"]} , For_sale = ${var.books["Hindi"]["For_sale"]}"
# }


variable "country_details" {
  default = {
    India = {
      states = 28
      capital = "New Delhi"
      Tourist_place = true

    }
  }
}

output "country_detail" {
  value = "states = ${var.country_details["India"]["states"]}"
}