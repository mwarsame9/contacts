class Contact
  attr_accessor(:first_name, :last_name, :job_title, :company)
   @@contacts = []

  define_method(:initialize) do |attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @job_title = attributes.fetch(:job_title)
    @company = attributes.fetch(:company)
  end

  def Contact.all
    @@contacts
  end
end
