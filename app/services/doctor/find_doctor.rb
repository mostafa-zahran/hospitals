class FindDoctor
  attr_reader :resource
  def initialize(id)
    @id = id
  end

  def find
    @resource = Doctor.find_by_id(@id)
    @found = @resource.present?
  end

  def found?
    @found
  end
end