require 'rspec'
require 'contacts'

describe(Contact) do

  describe('#first_name') do
    it("returns the first name of the contact") do
      test_contact = Contact.new(:first_name => "John", :last_name => "Doe", :job_title => "president", :company => "Epicodus")
      expect(test_contact.first_name()).to(eq("John"))
    end
  end
  describe('#last_name') do
    it("returns the first name of the contact") do
      test_contact = Contact.new(:first_name => "John", :last_name => "Doe", :job_title => "president", :company => "Epicodus")
      expect(test_contact.last_name()).to(eq("Doe"))
    end
  end




end
