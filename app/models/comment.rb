class Comment < ApplicationRecord
  validates_presence_of :user_id, :doctor_id, :comment

  belongs_to :doctor
  belongs_to :user

  scope :approved,-> {where(approved: true)}
  scope :need_approval,-> {where(approved: [false, nil])}
  scope :of_doctor,->(doctor_id){where(doctor_id: doctor_id) if doctor_id.present?}

  def as_json(options)
    super(:only => [:user_id, :doctor_id, :comment])
  end
end