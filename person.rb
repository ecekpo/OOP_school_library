require './nameable'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rentals

  def initialize(age, name = 'unknown', parent_permission = 'true')
    super()

    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    of_age? || @parent_permission == true
  end

  def of_age?
    @age >= 18
  end

  def correct_name
    @name
  end

  def add_rental(rental)
    @rentals.push
    rental.person = self
  end
end
