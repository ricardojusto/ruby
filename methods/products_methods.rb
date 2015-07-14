products = [
  { name: "Samsung Galaxy S6 Edge", price: 829.90, brand: "Samsung" },
  { name: "LG G Flex", price: 689.90, brand: "LG" },
  { name: "Apple iPhone 6 Plus", price: 779.90, brand: "Apple" },
  { name: "Samsung Galaxy Alpha", price: 589.90, brand: "Samsung" },
  { name: "Nokia Lumia 930", price: 489.90, brand: "Nokia" },
  { name: "Sony Xperia Z3 Compact", price: 389.90, brand: "Sony" },
  { name: "Apple iPhone 6", price: 779.90, brand: "Apple" },
  { name: "Huawei Ascend G7", price: 259.90, brand: "Huawei" },
  { name: "Sony Xperia T2 Ultra", price: 359.90, brand: "Sony" },
  { name: "LG G4", price: 589.90, brand: "LG" },
  { name: "Samsung Galaxy Note 4", price: 689.90, brand: "Samsung" },
  { name: "HTC One M9", price: 674.90, brand: "HTC" },
  { name: "Apple iPhone 5S", price: 589.90, brand: "Apple" }
]

# count(products)
# given a list of products (array) as argument
# return the total number (integer) of products
def count(products) #este nome pode ser o que nós quisermos porque só está dentro do método
  products.count
end

#  get_names(products)
# given a list of products (array) as argument
# returns a list of all product names (array of strings) 
def get_names(products)
  products.map do |product| #o do vai passar para o que está dentro dos | | o que o map vai buscar nos products
    product[:name] # este prodcut sendo uma hash consegue aceder dentro da hash com os parentesis rectos com okey
    # aqui podíamos já criar uma variável para o que essa lista vai criar por exemplo » list = products.map (etc...) - colocar a list mais abaixo para devolver o resultado
    end
    #list  #o block é o que está dentro do "do" e do "end"
end

# filter_by_brand(products, brand)
# given a list of products (array) and a brand name (string) as arguments
# returns a list of products (array) with that brand (array of hashes)
def filter_by_brand(products, brand)
  products.select do |product| #o select fax«z o mesmo que o each e o map, apenas devolve o que é true.
    product[:brand] == brand #nos products que definimos no puts vai procurar dentro do array o que está na :brand
  end
end

# count_by_brand(products, brand)
# given a list of products (array) and a brand name (string) as arguments
# returns the total number (integer) of products with that brand
def count_by_brand(products, brand)
  # selected = products.select do |product|
  #   product[:brand] == brand
  # end
  # selected.count
  filter_by_brand(products, brand).count
end


# group_by_brand(products)
# given a list of products (array) as argument
# return a hash of products groupped by brand
def group_by_brand(products)
  products.group_by do |product|
    product[:brand]
  end
end

# cheapest(products)
# given a list of products (array) as argument
# returns a single product (hash) with the lowest price value
def cheapest(products)
  products.min_by do |product|
    product[:price]
  end
end

def most_expensive(products)
  products.max_by do |product|
    product[:price]
  end
end

# price_between(products, min, max)
# given a list of products (array) and a min price (integer) and a max price (integer) as arguments
# returns a list of products (array) with price higher than min and lower than max
def price_between(products, min, max)
#   list = []
#   products.each do |product|
#     if product[:price] > min && product[:price] < max
#       list << product
#     end 
#   end
#   list
# end
  products.select do |product|
    product[:price] > min && product[:price] < max 
  end
end
# avg_price(products)
# given a list of products (array)
# returns the average price (float) of all those products rounded to 2 decimal places
def avg_price(products)
    # subtotal=0
    # products.map do |product|
    #   subtotal = subtotal + product[:price]
    # end
    # (subtotal / products.count).round(2)
        #ou
        #subtotal = subtotal / products.count
        #subtotal.round(2)

    ##reduce
    subtotal = products.reduce(0) do |total, product|
      total = total + product[:price]
    end
    (subtotal / products.count).round(2)
end

#puts count(products) #enre parentesis chama a array para o método designado
#puts get_names(products)
#puts filter_by_brand(products, "Samsung")
#puts count_by_brand(products,"Samsung")
#p group_by_brand(products)
#p cheapest(products)
#p most_expensive(products)
#p price_between(products, 800, 900)
#p avg_price(products)


# %Q - transforma o print em multi-string
puts %Q( 
  Product count: #{ count(products) }

  Product names: #{ get_names(products) }

  Only 'LG' brand: #{ filter_by_brand(products, 'LG') }

  Count 'Samsung' brand: #{ count_by_brand(products, 'Samsung') }

  Group by brand: #{ group_by_brand(products) }

  Most cheap: #{ cheapest(products) }

  Most expensive: #{ most_expensive(products) }

  Price between 200 and 400: #{ price_between(products, 200, 400) }

  Average price: #{ avg_price(products) }
)
