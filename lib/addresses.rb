class Address

  attr_accessor(:street)
  @@all_addresses = []

  def initialize(attributes)
    @street = attributes.fetch(:street)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip = attributes.fetch(:zip)
    @type = attributes.fetch(:type)
    @id = @@all_addresses.length().+(1)

  end
end
