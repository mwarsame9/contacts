class Contact

  attr_accessor(:first_name, :last_name, :job_title, :company, :id)
   @@all_contacts = []

  define_method(:initialize) do |attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @job_title = attributes.fetch(:job_title)
    @company = attributes.fetch(:company)
    @id = @@all_contacts.length().+(1)
  end

  def Contact.all
    @@all_contacts
  end

  def save
    @@all_contacts.push(self)
  end

  def Contact.clear
    @@all_contacts = []
  end

  def Contact.find(identification)
    found_contact = nil
    @@all_contacts.each() do |contact|
      if contact.id().eql?(identification.to_i())
        found_contact = contact
      end
    end
    found_contact
  end

end
