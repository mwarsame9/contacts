require 'rspec'
require "addresses"

describe(Address) do

  describe('#street') do
    it('returns street of an address') do
      test_address = Address.new(:street => "400 6th Ave", :city => "Portland", :state => "OR", :zip => "97111", :type => "Home")
      expect(test_address.street).to(eq("400 6th Ave"))
    end
  end
end
