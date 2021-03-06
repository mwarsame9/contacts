require 'rspec'
require 'contacts'

describe(Contact) do

  describe('#first_name') do
    it("returns the first name of the contact") do
      test_contact = Contact.new(:first_name => "John", :last_name => "Doe", :job_title => "president", :company => "Epicodus")
      expect(test_contact.first_name).to(eq("John"))
    end
  end

  describe('#last_name') do
    it("returns the last name of the contact") do
      test_contact = Contact.new(:first_name => "John", :last_name => "Doe", :job_title => "president", :company => "Epicodus")
      expect(test_contact.last_name).to(eq("Doe"))
    end
  end

  describe('#job_title') do
    it("returns the job title of the contact") do
      test_contact = Contact.new(:first_name => "John", :last_name => "Doe", :job_title => "president", :company => "Epicodus")
      expect(test_contact.job_title).to(eq("president"))
    end
  end

  describe('#company') do
    it("returns the company of the contact") do
      test_contact = Contact.new(:first_name => "John", :last_name => "Doe", :job_title => "president", :company => "Epicodus")
      expect(test_contact.company).to(eq("Epicodus"))
    end
  end

  describe('.all') do
    it("returns an empty array to start") do
      expect(Contact.all).to(eq([]))
    end
  end

  describe('#save') do
    it("adds new contact to contact array") do
      test_contact = Contact.new(:first_name => "John", :last_name => "Doe", :job_title => "president", :company => "Epicodus")
      test_contact.save
      expect(Contact.all).to(eq([test_contact]))
    end
  end

  describe('.clear') do
    it("empties out all contacts") do
      test_contact = Contact.new(:first_name => "John", :last_name => "Doe", :job_title => "president", :company => "Epicodus")
      Contact.clear()
      expect(Contact.all).to(eq([]))
    end
  end


  describe('#id') do
    it("gives each new contact an id") do
      test_contact = Contact.new(:first_name => "John", :last_name => "Doe", :job_title => "president", :company => "Epicodus")
      test_contact.save
      expect(test_contact.id).to(eq(1))
    end
  end

end
