class FindDepartment
  attr_reader :resource
  def initialize(id)
    @id = id
  end

  def find
    @resource = Department.find_by_id(@id)
    @found = @resource.present?
  end

  def found?
    @found
  end
end