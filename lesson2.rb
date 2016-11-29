dict = {
  "one" => "eins",
  "two" => "zwei",
  7 => "zieben",
  true => false,
  :things => ["pen", "brush"]
}

numbers = {
  "one" => "eins",
  "two" => "zwei",
  "three" => "drei"
}

greetings = {
  "hello" => "hallo",
  "good day" => "guten Tag",
  "three" => "duplicate key"
}

merge
fetch
size
length

dict = numbers.merge(greetings)
p dict
#puts dict.fetch(x.strip, "<not found>")
