class Monster
  attr_reader :name, :weight_kg, :victims, :is_scary
  
  def initialize(name, weight, victims)
    @name = name
    @weight_kg = weight
    @victims = victims
    @is_scary = true
  end
  
  def change_name (new_name)
    
  end
    
  def introduce
    puts "Hello, my name is #{@name}"
  end
  
  def injure
    @is_scary = false
    puts "Ouch, that hurts!"
  end
end

monster1 = Monster.new("King Kong", 12330, ["corey", "rob"])
monster1.injure
monster1.name = "Jack"
puts monster1.name