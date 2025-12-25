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
      states        = 28
      capital       = "New Delhi"
      Tourist_place = true
    }
    America = {
      state = 50
      capital = "Washington"
      Tourist_place = false

  }
  }
}

output "country_india_detail" {
  value = "states = ${var.country_details["India"]["states"]} , capital = ${var.country_details["India"]["capital"]} , Tourist_place = ${var.country_details["India"]["Tourist_place"]}"
}

output "Country_America_Details" {
  value = "state = ${var.country_details["America"]["state"]} , capital = ${var.country_details["America"]["capital"]} , Tourist_place = ${var.country_details["America"]["Tourist_place"]}"
}