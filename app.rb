class App
    attr_accessor :books, :people, :rentals
    
    def intialize
      @book = []
      @people = []
      @rentals = []
   end

   def hello
    puts 'You are welcome to School Library App!'
  
    puts 'Please, enter a number of your choose:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
   end
   