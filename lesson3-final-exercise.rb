hipster_mug = {
  :sku=>"HM001",
  :product_name=>"Hipster Mug",
  :price=>19.99
}

def price_with_vat(product_hash)
   vat_rate = 1.20
   # ... insert code here ...
end

puts "Price including VAT: #{price_with_vat(hipster_mug)}"

# expected result
#> Price including VAT: 23.987999999999996
