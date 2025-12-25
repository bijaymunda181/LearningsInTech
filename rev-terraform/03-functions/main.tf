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

output "movies_first" {
  value = var.moves[0]
}

output "movies_second" {
  value = var.moves[1]
}