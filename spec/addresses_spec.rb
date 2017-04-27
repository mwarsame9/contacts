require 'rspec'
require "addresses"

describe(Address) do

  describe('#street') do
    it('returns street of an address') do
      test_address = Address.new(:street => "400 6th Ave", :city => "Portland", :state => "OR", :zip => "97111", :type => "Home")
      expect(test_address.street).to(eq("400 6th Ave"))
    end
  end

  describe('#city') do
    it('returns city of an address') do
      test_address = Address.new(:street => "400 6th Ave", :city => "Portland", :state => "OR", :zip => "97111", :type => "Home")
      expect(test_address.city).to(eq("Portland"))
    end
  end

  describe('#state') do
    it('returns state of an address') do
      test_address = Address.new(:street => "400 6th Ave", :city => "Portland", :state => "OR", :zip => "97111", :type => "Home")
      expect(test_address.state).to(eq("OR"))
    end
  end

  describe('#zip') do
    it('returns zip of an address') do
      test_address = Address.new(:street => "400 6th Ave", :city => "Portland", :state => "OR", :zip => "97111", :type => "Home")
      expect(test_address.zip).to(eq("97111"))
    end
  end

  describe('#type') do
    it('returns type of an address') do
      test_address = Address.new(:street => "400 6th Ave", :city => "Portland", :state => "OR", :zip => "97111", :type => "Home")
      expect(test_address.type).to(eq("Home"))
    end
  end

  describe('.all') do
    it('returns an empty array') do
      expect(Address.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves address to addresses array') do
      test_address = Address.new(:street => "400 6th Ave", :city => "Portland", :state => "OR", :zip => "97111", :type => "Home")
      expect(test_address.save()).to(eq([test_address]))
    end
  end

  describe('.clear') do
    it('clears all addresses from array') do
      expect(Address.clear()).to(eq([]))
    end
  end
end
