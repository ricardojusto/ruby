
class Product
  #attr_reader :name, :brand, :price
  def initialize(products)#este products podia ser um nome qualquer
    @name = products[:name]
    @price = products[:price]
    @brand = products[:brand]
  end
  def name
    @name
  end
  def price
    @price
  end
  def brand
    @brand
  end
  def to_s #este é um método especial que vai chamar o método to s para imprimir o produto
    "#{@name} » "+"#{@price} » "+"#{@brand}"
  end
end


class ProductCollection
  def initialize (products)
    @products = products
  end

  def count
    @products.count
  end

  def get_names
    @products.map do |product|
      product.name
    end
  end


  def filter_by_brand(brand)
    @products.select do |product| 
      product.brand == brand
    end
  end

  def count_by_brand(brand)
    filter_by_brand( brand).count
  end

def group_by_brand
  @products.group_by do |product|
   product.brand
 end
end

def cheapest
  @products.min_by do |product|
    product.price
  end
end


def most_expensive
  @products.max_by do |product|
    product.price
  end
end

def price_between(min, max)
  @products.select do |product|
    product.price > min && product.price < max 
  end
end

def avg_price
  subtotal = @products.reduce(0) do |total, product|
    total = total + product.price
  end
  (subtotal / @products.count).round(2)
end
end


products = [
  Product.new({ name: "Samsung Galaxy S6 Edge", price: 829.90, brand: "Samsung" }),
  Product.new({ name: "LG G Flex", price: 689.90, brand: "LG" }),
  Product.new({ name: "Apple iPhone 6 Plus", price: 779.90, brand: "Apple" }),
  Product.new({ name: "Samsung Galaxy Alpha", price: 589.90, brand: "Samsung" }),
  Product.new({ name: "Nokia Lumia 930", price: 489.90, brand: "Nokia" }),
  Product.new({ name: "Sony Xperia Z3 Compact", price: 389.90, brand: "Sony" }),
  Product.new({ name: "Apple iPhone 6", price: 779.90, brand: "Apple" }),
  Product.new({ name: "Huawei Ascend G7", price: 259.90, brand: "Huawei" }),
  Product.new({ name: "Sony Xperia T2 Ultra", price: 359.90, brand: "Sony" }),
  Product.new({ name: "LG G4", price: 589.90, brand: "LG" }),
  Product.new({ name: "Samsung Galaxy Note 4", price: 689.90, brand: "Samsung" }),
  Product.new({ name: "HTC One M9", price: 674.90, brand: "HTC" }),
  Product.new({ name: "Apple iPhone 5S", price: 589.90, brand: "Apple" })
]

# products = [
#   { name: "Samsung Galaxy S6 Edge", price: 829.90, brand: "Samsung" },
#   { name: "LG G Flex", price: 689.90, brand: "LG" },
#   { name: "Apple iPhone 6 Plus", price: 779.90, brand: "Apple" },
#   { name: "Samsung Galaxy Alpha", price: 589.90, brand: "Samsung" },
#   { name: "Nokia Lumia 930", price: 489.90, brand: "Nokia" },
#   { name: "Sony Xperia Z3 Compact", price: 389.90, brand: "Sony" },
#   { name: "Apple iPhone 6", price: 779.90, brand: "Apple" },
#   { name: "Huawei Ascend G7", price: 259.90, brand: "Huawei" },
#   { name: "Sony Xperia T2 Ultra", price: 359.90, brand: "Sony" },
#   { name: "LG G4", price: 589.90, brand: "LG" },
#   { name: "Samsung Galaxy Note 4", price: 689.90, brand: "Samsung" },
#   { name: "HTC One M9", price: 674.90, brand: "HTC" },
#   { name: "Apple iPhone 5S", price: 589.90, brand: "Apple" }
# ]


collection = ProductCollection.new(products)


puts "Product count: #{ collection.count }"

puts "Product names: #{ collection.get_names }"

puts collection.filter_by_brand("Samsung")

puts "Count 'Samsung' brand: #{ collection.count_by_brand("Samsung") }"

puts "Most cheap: #{ collection.cheapest}"

puts "Most expensive: #{ collection.most_expensive}"

puts collection.price_between(200, 400)

puts "Average price: #{ collection.avg_price }"
  

# puts %Q(
#   Product count: #{ my_products.count }

#   Product names: #{ my_products.get_names }

#   Only 'LG' brand: #{ my_products.filter_by_brand("LG") }

#   Count 'Samsung' brand: #{ my_products.count_by_brand("Samsung") }
# my_products
#   Group by brand: #{ my_products.group_by_brand }

#   Most cheap: #{ my_products.cheapest }
# my_products
#   Most expensive: #{ my_products.most_expensive }
# my_products
#   Price between 200 and 400: #{ my_products.price_between(200, 400) }

#   Average price: #{ my_products.avg_price }
# )




