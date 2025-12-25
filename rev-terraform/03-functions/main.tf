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

#Access a list Variable, List Variable starts from Zero
output "movies_first" {
  value = var.moves[0]
}

output "movies_second" {
  value = var.moves[1]
}

# Map variable, map of map variable
variable "movies_type" {
  default = {
    Hindi = 2
    South = 5
  }
}

output "movies_type_Hindi" {
  value = var.movies_type["Hindi"]
}

output "movie_type_South" {
  value = var.movies_type["South"]
}