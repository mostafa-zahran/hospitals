class ListComments

  def initialize(doctor_id: nil)
    @doctor_id = doctor_id
  end

  def all
    Comment.approved.of_doctor(@doctor_id).all
  end
end