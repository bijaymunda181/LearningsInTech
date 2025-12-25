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
    Hindi = {
      Total = 100
      Debt_language = 3
    }
    South = {
      Total = 200
      Debt_language = 5
    }
  }
}

output "movies_type_Hindi_total" {
  value = var.movies_type["Hindi"]["Total"]
}

output "movie_type_South_total" {
  value = var.movies_type["South"]["Total"]
}

