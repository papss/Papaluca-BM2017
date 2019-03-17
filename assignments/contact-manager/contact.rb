class Contact

  #needs to obtain and store contact information
  #each individual object/instance is going to store this information

  attr_accessor :first_name, :last_name, :email, :phone_number, :note
  attr_reader :id

  #remember that attr_accessor is a method name
  #remember that instance variables are private to that object

  @@contacts = []

  #class variable which places each contact into an array everytime initialize is run

  @@next_id = 1000

  #class variable which assigns each instance a unique ID.

  def self.all
    @@contacts
  end

  #class method which displays list of contacts.
  #remember that "self" is context specific; this "self" refers to the class.

  def self.create(first_name, last_name, email, note)
    new_contact = new
    # 1. initialize a new contact with a unique id
    @@contacts << new_contact
    # 2. Add the new contact to the list of all contacts
    @@next_id += 1
    # 3. Increment the next unique id.
  end

  def initialize(first_name, last_name, email, phone_number, note)
    @id = @@next_id
      #assigns a class ID to each instance
    @first_name = first_name
    @last_name = last_name
    @email = email
    @phone_number = phone_number
    @note = note

    @@contacts << self
    #pushes info into the class variable
    #this "self" refers to the method

  end

  def full_name
    "#{first_name} #{last_name}"
  end

end

# joseph = Contact.new("Joseph", "Papaluca", "jpapaluc@gmail.com", "(416)-303-8971", "dope")
#
# puts joseph.first_name
