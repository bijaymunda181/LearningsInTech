#plain variable
variable "movie" {
  default = "Hindi"
}

output "movie" {
  value = var.movie
}

# list variable
variable "moves" {
  default = ["Hindi", "English"]
}

output "movies" {
  value = var.moves
}
