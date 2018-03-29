class FindHospital
  attr_reader :resource
  def initialize(id)
    @id = id
  end

  def find
    @resource = Hospital.find_by_id(@id)
    @found = @resource.present?
  end

  def found?
    @found
  end
end