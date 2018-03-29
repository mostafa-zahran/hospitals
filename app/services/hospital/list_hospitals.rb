class ListHospitals

  def initialize(governorate_id: nil, specialty_id: nil)
    @governorate_id = governorate_id
    @specialty_id = specialty_id
  end

  def all
    Hospital.in_governorate(@governorate_id).has_specialty(@specialty_id).all
  end
end