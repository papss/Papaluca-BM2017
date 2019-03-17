def order_pizza(dough, ingredients)

  cost = 10

  cost += 4 if dough == :gluten_free

  ingredients.each do |ingredient|
    case ingredient

    when :cheese
      ingredient_cost = 2
    when :pepperoni
      ingredient_cost = 3
    when :green_peppers
      ingredient_cost = 1
    when :anchovies
      ingredient_cost = 5
    when :sausage
      ingredient_cost = 6
    when :chicken
      ingredient_cost = 3

    end

    cost += ingredient_cost
  end

  return cost
end

pepperoni_pizza_cost = order_pizza(:regular, [:cheese, :pepperoni])
puts "cost of pepperoni pizza is $#{ pepperoni_pizza_cost }"

gluten_free_pizza_cost = order_pizza(:gluten_free, [:green_peppers, :anchovies])
puts "cost of gluten-free pizza is $#{ gluten_free_pizza_cost }"

meat_lovers_pizza_cost = order_pizza(:regular, [:pepperoni, :sausage, :chicken])
puts "cost of meat lover's pizze is $#{ meat_lovers_pizza_cost }"
