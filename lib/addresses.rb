class Address

  attr_accessor(:street, :city, :state, :zip, :type)
  @@all_addresses = []

  define_method(:initialize) do |attributes|
    @street = attributes.fetch(:street)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip = attributes.fetch(:zip)
    @type = attributes.fetch(:type)
    @id = @@all_addresses.length().+(1)
  end

  def Address.all
    @@all_addresses
  end

  def save
    @@all_addresses.push(self)
  end

  def Address.clear
    @@all_addresses=[]
  end
end
