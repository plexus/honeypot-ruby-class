def lookup_product(product_code)
  product_names = {"HM001" => "Hipster Mug","UMWX7" => "USB Mug Warmer"}
  prices = {"HM001" => 19.99, "UMWX7" => 15.95}

  {:sku => product_code,
   :product_name => product_names[product_code],
   :price => prices[product_code]}
end

basket = []
basket << lookup_product("HM001")
basket << lookup_product("UMWX7")

require 'pp'
pp basket
