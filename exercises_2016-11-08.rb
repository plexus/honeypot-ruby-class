########################################
# EXERCISE 1 - Arrays
fruits = ["apples", "pineapples"]
fruits << "bananas"
# p fruits
# expected result:
#> ["apples", "pineapples", "bananas"]



# Cheat sheet:  https://plexus.github.io/rubees-docs/
########################################
# EXERCISE 2 - Hashes
product_names = {
  "HM001" => "Hipster Mug",
  "UMWX7" => "USB Mug Warmer"
}
order_code = "HM001"
# puts "You ordered a: #{ product_names[order_code] }"
# expected result:
#> You ordered a:
#> Hipster Mug
########################################
# EXERCISE 3
product_names = {"HM001" => "Hipster Mug","UMWX7" => "USB Mug Warmer"}
prices = {"HM001" => 19.99, "UMWX7" => 15.95}
basket = []
product_code = "UMWX7"
basket << {
  :sku => product_code,
  :product_name => product_names[product_code],
  :price => prices[product_code]
}
p basket
# expected result:
#> [{:sku=>"ACL055", :product_name=>"Artisanal Cigarette Lighter", :price=>"5.10"},
#>  {:sku=>"HM001", :product_name=>"Hipster Mug", :price=>17.99}]
